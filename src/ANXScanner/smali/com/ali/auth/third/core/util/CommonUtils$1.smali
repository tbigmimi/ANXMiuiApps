.class final Lcom/ali/auth/third/core/util/CommonUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/core/util/CommonUtils;->onFailure(Lcom/ali/auth/third/core/callback/FailureCallback;Lcom/ali/auth/third/core/message/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/core/callback/FailureCallback;

.field final synthetic b:Lcom/ali/auth/third/core/message/Message;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/core/callback/FailureCallback;Lcom/ali/auth/third/core/message/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/util/CommonUtils$1;->a:Lcom/ali/auth/third/core/callback/FailureCallback;

    iput-object p2, p0, Lcom/ali/auth/third/core/util/CommonUtils$1;->b:Lcom/ali/auth/third/core/message/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/auth/third/core/util/CommonUtils$1;->a:Lcom/ali/auth/third/core/callback/FailureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/core/util/CommonUtils$1;->a:Lcom/ali/auth/third/core/callback/FailureCallback;

    iget-object v1, p0, Lcom/ali/auth/third/core/util/CommonUtils$1;->b:Lcom/ali/auth/third/core/message/Message;

    iget v1, v1, Lcom/ali/auth/third/core/message/Message;->code:I

    iget-object v2, p0, Lcom/ali/auth/third/core/util/CommonUtils$1;->b:Lcom/ali/auth/third/core/message/Message;

    iget-object v2, v2, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/auth/third/core/callback/FailureCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
