.class final Lcom/ali/user/open/tbauth/task/RpcPresenter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/RpcPresenter;->loginByIVToken(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/callback/LoginCallback;


# direct methods
.method constructor <init>(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;->a:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v2, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;->a:Lcom/ali/user/open/callback/LoginCallback;

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SYSTEM_EXCEPTION:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    sget-object v2, Lcom/ali/user/open/core/model/ResultCode;->SYSTEM_EXCEPTION:Lcom/ali/user/open/core/model/ResultCode;

    iget-object v2, v2, Lcom/ali/user/open/core/model/ResultCode;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/ali/user/open/tbauth/a/a;->a:Z

    if-eqz v0, :cond_2

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    iget-object v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v1, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-interface {v0, v1}, Lcom/ali/user/open/service/SessionService;->refreshWhenLogin(Lcom/ali/user/open/core/model/LoginReturnData;)V

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;->a:Lcom/ali/user/open/callback/LoginCallback;

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->getSession()Lcom/ali/user/open/session/Session;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-static {v0}, Lcom/ali/user/open/tbauth/util/SessionConvert;->convertLoginDataToSeesion(Lcom/ali/user/open/core/model/LoginReturnData;)Lcom/ali/user/open/session/Session;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v2, p1, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v2, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V

    return-void
.end method
