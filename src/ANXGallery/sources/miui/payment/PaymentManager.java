package miui.payment;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import miui.cloud.exception.AuthenticationFailureException;
import miui.cloud.exception.OperationCancelledException;
import miui.os.C0015Build;
import miui.payment.IPaymentManagerResponse.Stub;
import miui.payment.exception.PaymentServiceFailureException;

public class PaymentManager {
    private static final String ACTION_PAYMENT = "com.xiaomi.xmsf.action.PAYMENT";
    public static final int CAPABILITY = 3;
    private static final boolean DEBUG = true;
    public static final int ERROR_CODE_ACCOUNT_CHANGED = 10;
    public static final int ERROR_CODE_ACCOUNT_FROZEN = 9;
    public static final int ERROR_CODE_ACCOUNT_THROTTING = 15;
    public static final int ERROR_CODE_AUTHENTICATION_ERROR = 5;
    public static final int ERROR_CODE_CALLER_INVALID = 12;
    public static final int ERROR_CODE_CALL_TOO_FAST = 14;
    public static final int ERROR_CODE_CANCELED = 4;
    public static final int ERROR_CODE_DUPLICATE_DEDUCT = 16;
    public static final int ERROR_CODE_DUPLICATE_PURCHASE = 7;
    public static final int ERROR_CODE_EXCEPTION = 1;
    public static final int ERROR_CODE_INVALID_PARAMS = 2;
    public static final int ERROR_CODE_NETWORK_ERROR = 3;
    public static final int ERROR_CODE_ORDER_ERROR = 13;
    public static final int ERROR_CODE_SERVER_ERROR = 6;
    public static final int ERROR_CODE_THIRD_PARTY = 11;
    public static final int ERROR_CODE_USER_ID_MISMATCH = 8;
    public static final String KEY_INTENT = "intent";
    private static final String PACKAGE_PAYMENT = "com.xiaomi.payment";
    public static final String PAYMENT_KEY_IS_NO_ACCOUNT = "payment_is_no_account";
    public static final String PAYMENT_KEY_PAYMENT_RESULT = "payment_payment_result";
    @Deprecated
    public static final String PAYMENT_KEY_QUICK = "payment_quick";
    public static final String PAYMENT_KEY_TRADE_BALANCE = "payment_trade_balance";
    private static final String TAG = "PaymentManager";
    private final Context mContext;
    private final Handler mMainHandler = new Handler(this.mContext.getMainLooper());

    private interface PaymentManagerFuture<V> {
        boolean cancel(boolean z);

        V getResult() throws IOException, OperationCancelledException, AuthenticationFailureException, PaymentServiceFailureException;

        V getResult(long j, TimeUnit timeUnit) throws IOException, OperationCancelledException, AuthenticationFailureException, PaymentServiceFailureException;

        boolean isCancelled();

        boolean isDone();
    }

    private abstract class PmsTask extends FutureTask<Bundle> implements PaymentManagerFuture<Bundle>, ServiceConnection {
        private final int HOST_MONITOR_HEART_INTERNAL;
        private Activity mActivity;
        private PaymentManagerCallback<Bundle> mCallback;
        private Handler mHandler;
        private Runnable mHostActivityMonitor;
        private boolean mIsBound;
        private IPaymentManagerResponse mResponse;
        private IPaymentManagerService mService;

        class IPaymentManagerResponseImpl extends Stub {
            IPaymentManagerResponseImpl() {
            }

            public void onResult(Bundle bundle) throws RemoteException {
                Intent intent = (Intent) bundle.getParcelable(PaymentManager.KEY_INTENT);
                if (intent == null) {
                    PmsTask.this.set(bundle);
                } else if (PmsTask.this.mActivity != null) {
                    PmsTask.this.mActivity.startActivity(intent);
                } else {
                    PmsTask.this.setException(new PaymentServiceFailureException(2, "activity cannot be null"));
                }
            }

            public void onError(int code, String message, Bundle bundle) throws RemoteException {
                if (code == 4) {
                    PmsTask.this.cancel(true);
                    PmsTask.this.unBind();
                    return;
                }
                PmsTask.this.setException(PmsTask.this.convertErrorCodeToException(code, message, bundle));
            }
        }

        protected abstract void doWork() throws RemoteException;

        protected PmsTask(PaymentManager paymentManager, Activity activity) {
            this(paymentManager, activity, null);
        }

        protected PmsTask(PaymentManager paymentManager, Activity activity, PaymentManagerCallback<Bundle> callback) {
            this(activity, null, callback);
        }

        protected PmsTask(Activity activity, Handler handler, PaymentManagerCallback<Bundle> callback) {
            super(new Callable<Bundle>(PaymentManager.this) {
                public Bundle call() throws Exception {
                    throw new IllegalStateException("this should never be called");
                }
            });
            this.mIsBound = false;
            this.HOST_MONITOR_HEART_INTERNAL = 5000;
            this.mHostActivityMonitor = new Runnable() {
                public void run() {
                    Activity host = PmsTask.this.mActivity;
                    if (!PmsTask.this.isDone() && host != null) {
                        if (host.isFinishing()) {
                            PmsTask.this.setException(new OperationCancelledException("Operation has been cancelled because host activity has finished."));
                        } else {
                            PaymentManager.this.mMainHandler.postDelayed(this, 5000);
                        }
                    }
                }
            };
            this.mActivity = activity;
            this.mHandler = handler;
            this.mCallback = callback;
            this.mResponse = new IPaymentManagerResponseImpl();
        }

        protected IPaymentManagerResponse getResponse() {
            return this.mResponse;
        }

        protected IPaymentManagerService getService() {
            return this.mService;
        }

        public final PaymentManagerFuture<Bundle> start() {
            bind();
            return this;
        }

        protected void bind() {
            if (!this.mIsBound) {
                if (bindToPaymentService()) {
                    this.mIsBound = true;
                    Log.d(PaymentManager.TAG, "service bound");
                    return;
                }
                setException(new PaymentServiceFailureException(1, "bind to service failed"));
            }
        }

        protected void unBind() {
            if (this.mIsBound) {
                PaymentManager.this.mContext.unbindService(this);
                this.mIsBound = false;
                Log.d(PaymentManager.TAG, "service unbinded");
            }
        }

        protected boolean bindToPaymentService() {
            Intent intent = new Intent("com.xiaomi.xmsf.action.PAYMENT");
            intent.setPackage(PaymentManager.PACKAGE_PAYMENT);
            return PaymentManager.this.mContext.bindService(intent, this, 1);
        }

        private Bundle internalGetResult(Long timeout, TimeUnit unit) throws IOException, OperationCancelledException, AuthenticationFailureException, PaymentServiceFailureException {
            if (!isDone()) {
                ensureNotOnMainThread();
            }
            Bundle bundle;
            if (timeout == null) {
                try {
                    bundle = (Bundle) get();
                    cancel(true);
                    return bundle;
                } catch (CancellationException e) {
                    throw new OperationCancelledException("cancelled by user");
                } catch (TimeoutException e2) {
                    cancel(true);
                    throw new OperationCancelledException("cancelled by exception");
                } catch (InterruptedException e3) {
                    cancel(true);
                    throw new OperationCancelledException("cancelled by exception");
                } catch (ExecutionException e4) {
                    Throwable cause = e4.getCause();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    } else if (cause instanceof PaymentServiceFailureException) {
                        throw ((PaymentServiceFailureException) cause);
                    } else if (cause instanceof AuthenticationFailureException) {
                        throw ((AuthenticationFailureException) cause);
                    } else if (cause instanceof OperationCancelledException) {
                        throw ((OperationCancelledException) cause);
                    } else if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    } else if (cause instanceof Error) {
                        throw ((Error) cause);
                    } else {
                        throw new IllegalStateException(cause);
                    }
                } catch (Throwable th) {
                    cancel(true);
                }
            } else {
                bundle = (Bundle) get(timeout.longValue(), unit);
                cancel(true);
                return bundle;
            }
        }

        protected void set(Bundle bundle) {
            super.set(bundle);
            unBind();
        }

        protected void setException(Throwable t) {
            super.setException(t);
            unBind();
        }

        public Bundle getResult(long timeout, TimeUnit unit) throws IOException, OperationCancelledException, AuthenticationFailureException, PaymentServiceFailureException {
            return internalGetResult(Long.valueOf(timeout), unit);
        }

        public Bundle getResult() throws IOException, OperationCancelledException, AuthenticationFailureException, PaymentServiceFailureException {
            return internalGetResult(null, null);
        }

        protected void done() {
            if (this.mCallback != null) {
                (this.mHandler == null ? PaymentManager.this.mMainHandler : this.mHandler).post(new Runnable() {
                    public void run() {
                        PmsTask.this.mCallback.run(PmsTask.this);
                        PmsTask.this.mCallback = null;
                    }
                });
            }
            PaymentManager.this.mMainHandler.removeCallbacks(this.mHostActivityMonitor);
            this.mHandler = null;
            this.mActivity = null;
        }

        public void onServiceConnected(ComponentName name, IBinder service) {
            String str = PaymentManager.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("onServiceConnected, component:");
            stringBuilder.append(name);
            Log.d(str, stringBuilder.toString());
            this.mService = IPaymentManagerService.Stub.asInterface(service);
            try {
                doWork();
                PaymentManager.this.mMainHandler.postDelayed(this.mHostActivityMonitor, 5000);
            } catch (RemoteException e) {
                setException(e);
            }
        }

        public void onServiceDisconnected(ComponentName name) {
            if (!isDone()) {
                Log.e(PaymentManager.TAG, "payment service disconnected, but task is not completed");
                setException(new PaymentServiceFailureException(1, "active service exits unexpectedly"));
            }
            this.mService = null;
        }

        private Exception convertErrorCodeToException(int code, String message, Bundle bundle) {
            if (code == 3) {
                return new IOException(message);
            }
            if (code == 5) {
                return new AuthenticationFailureException(message);
            }
            if (TextUtils.isEmpty(message)) {
                message = "Unknown payment failure";
            }
            return new PaymentServiceFailureException(code, message, bundle);
        }

        private void ensureNotOnMainThread() {
            Looper looper = Looper.myLooper();
            if (looper != null && looper == PaymentManager.this.mContext.getMainLooper()) {
                IllegalStateException exception = new IllegalStateException("calling this from your main thread can lead to deadlock");
                Log.e(PaymentManager.TAG, "calling this from your main thread can lead to deadlock and/or ANRs", exception);
                throw exception;
            }
        }
    }

    private interface PaymentManagerCallback<V> {
        void run(PaymentManagerFuture<V> paymentManagerFuture);
    }

    private class PaymentCallback implements PaymentManagerCallback<Bundle> {
        private String mPaymentId;
        private PaymentListener mPaymentListener;
        private String mServiceId;

        public PaymentCallback(String serviceId, String paymentId, PaymentListener paymentListener) {
            this.mServiceId = serviceId;
            this.mPaymentId = paymentId;
            this.mPaymentListener = paymentListener;
        }

        public void run(PaymentManagerFuture<Bundle> future) {
            if (this.mPaymentListener != null) {
                try {
                    Bundle result = (Bundle) future.getResult();
                    if (result != null) {
                        this.mPaymentListener.onSuccess(this.mPaymentId, result);
                    } else {
                        this.mPaymentListener.onFailed(this.mPaymentId, 1, "error", new Bundle());
                    }
                } catch (IOException e) {
                    this.mPaymentListener.onFailed(this.mPaymentId, 3, e.getMessage(), new Bundle());
                } catch (OperationCancelledException e2) {
                    this.mPaymentListener.onFailed(this.mPaymentId, 4, e2.getMessage(), new Bundle());
                } catch (AuthenticationFailureException e3) {
                    this.mPaymentListener.onFailed(this.mPaymentId, 5, e3.getMessage(), new Bundle());
                } catch (PaymentServiceFailureException e4) {
                    this.mPaymentListener.onFailed(this.mPaymentId, e4.getError(), e4.getMessage(), e4.getErrorResult());
                } catch (Throwable th) {
                    this.mPaymentListener = null;
                }
                this.mPaymentListener = null;
            }
        }
    }

    public interface PaymentListener {
        void onFailed(String str, int i, String str2, Bundle bundle);

        void onSuccess(String str, Bundle bundle);
    }

    private PaymentManager(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static PaymentManager get(Context context) {
        return new PaymentManager(context);
    }

    public boolean isMibiServiceDisabled() {
        Intent intent = new Intent("com.xiaomi.xmsf.action.PAYMENT");
        intent.setPackage(PACKAGE_PAYMENT);
        boolean z = false;
        if (this.mContext.getPackageManager().resolveService(intent, 0) == null) {
            return true;
        }
        if (C0015Build.IS_INTERNATIONAL_BUILD && !C0015Build.checkRegion("HK")) {
            z = true;
        }
        return z;
    }

    public void payForOrder(Activity activity, String paymentId, String order, Bundle extra, PaymentListener paymentListener) {
        if (activity == null) {
            throw new InvalidParameterException("activity cannot be null");
        } else if (TextUtils.isEmpty(order)) {
            throw new InvalidParameterException("order cannot be empty");
        } else {
            internalPayForOrder(activity, order, extra, new PaymentCallback("thd", paymentId, paymentListener));
        }
    }

    public void recharge(Activity activity, String rechargeId, String serviceId, String verify) {
        internalStartMibiIntent(activity, Uri.parse("https://app.mibi.xiaomi.com/?id=mibi.recharge"));
    }

    public void getMiliBalance(Activity activity, String paymentId, String serviceId, String verify, PaymentListener paymentListener) {
        if (activity == null) {
            throw new InvalidParameterException("activity cannot be null");
        } else if (TextUtils.isEmpty(serviceId)) {
            throw new InvalidParameterException("serviceId cannot be empty");
        } else if (TextUtils.isEmpty(verify)) {
            throw new InvalidParameterException("verify cannot be empty");
        } else {
            internalGetMiliBalance(activity, serviceId, verify, new PaymentCallback(serviceId, paymentId, paymentListener));
        }
    }

    public void gotoMiliCenter(Activity activity) {
        internalStartMibiIntent(activity, Uri.parse("https://app.mibi.xiaomi.com/?id=mibi.milicenter"));
    }

    public void gotoRechargeRecord(Activity activity, String serviceId, String verify) {
        internalStartMibiIntent(activity, Uri.parse("https://app.mibi.xiaomi.com/?id=mibi.billRecord"));
    }

    public void gotoPayRecord(Activity activity, String serviceId, String verify) {
        internalStartMibiIntent(activity, Uri.parse("https://app.mibi.xiaomi.com/?id=mibi.billRecord"));
    }

    private PaymentManagerFuture<Bundle> internalPayForOrder(Activity activity, String order, Bundle extra, PaymentManagerCallback<Bundle> callback) {
        final Bundle bundle = extra;
        final String str = order;
        return new PmsTask(activity, callback) {
            protected void doWork() throws RemoteException {
                IPaymentManagerService service = getService();
                Bundle finalExtra = new Bundle();
                if (bundle != null) {
                    finalExtra.putAll(bundle);
                }
                service.payForOrder(getResponse(), null, str, finalExtra);
            }
        }.start();
    }

    private PaymentManagerFuture<Bundle> internalGetMiliBalance(Activity activity, String serviceId, String verify, PaymentManagerCallback<Bundle> callback) {
        final String str = serviceId;
        final String str2 = verify;
        return new PmsTask(activity, callback) {
            protected void doWork() throws RemoteException {
                getService().getMiliBalance(getResponse(), null, str, str2);
            }
        }.start();
    }

    private void internalStartMibiIntent(Activity activity, Uri uri) {
        if (activity == null) {
            throw new InvalidParameterException("activity cannot be null");
        } else if (uri != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setPackage(PACKAGE_PAYMENT);
            intent.setData(uri);
            activity.startActivity(intent);
        } else {
            throw new InvalidParameterException("intent uri cannot be null");
        }
    }
}
