package com.ali.auth.third.core.rpc;

import android.text.TextUtils;
import com.ali.auth.third.core.model.RpcRequest;
import com.ali.auth.third.core.model.RpcRequestCallbackWithCode;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.service.RpcService;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.login.LoginConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class CommRpcServiceImpl implements RpcService {
    public String getDeviceId() {
        return "";
    }

    public <T> RpcResponse<T> invoke(RpcRequest rpcRequest, Class<T> cls) {
        try {
            String str = rpcRequest.target;
            String str2 = rpcRequest.version;
            JSONArray jSONArray = new JSONArray();
            Iterator it = rpcRequest.paramValues.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            str = a.a(str, str2, jSONArray.toString());
            SDKLogger.d("", "post response = " + str);
            JSONObject jSONObject = new JSONObject(str);
            RpcResponse<T> rpcResponse = new RpcResponse();
            rpcResponse.code = jSONObject.optInt(LoginConstants.CODE);
            rpcResponse.message = jSONObject.optString(LoginConstants.MESSAGE);
            rpcResponse.codeGroup = jSONObject.optString("codeGroup");
            rpcResponse.msgCode = jSONObject.optString("msgCode");
            rpcResponse.msgInfo = jSONObject.optString("msgInfo");
            rpcResponse.actionType = jSONObject.optString("actionType");
            if (TextUtils.isEmpty(jSONObject.optString("returnValue"))) {
                return rpcResponse;
            }
            rpcResponse.returnValue = JSONUtils.parseStringValue(jSONObject.optString("returnValue"), cls);
            return rpcResponse;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String invoke(RpcRequest rpcRequest) {
        try {
            String str = rpcRequest.target;
            String str2 = rpcRequest.version;
            JSONArray jSONArray = new JSONArray();
            Iterator it = rpcRequest.paramValues.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return a.a(str, str2, jSONArray.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void logout() {
    }

    public void registerSessionInfo(String str, String str2) {
    }

    public <T extends RpcResponse<?>> void remoteBusiness(RpcRequest rpcRequest, Class<T> cls, RpcRequestCallbackWithCode rpcRequestCallbackWithCode) {
        if (rpcRequestCallbackWithCode != null) {
            rpcRequestCallbackWithCode.onError("usage not support.", null);
        }
    }
}
