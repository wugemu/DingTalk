.class final Lcom/ali/user/open/tbauth/task/RpcPresenter$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/RpcPresenter;->loginByRefreshToken(Lcom/ali/user/open/callback/LoginCallback;)V
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

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7;->a:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v2, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    iget v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    sget-object v0, Lcom/ali/user/open/tbauth/task/RpcPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "asyncExecute code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbb8

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v1, :cond_2

    sget-boolean v0, Lcom/ali/user/open/tbauth/a/a;->a:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    iget-object v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v1, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-interface {v0, v1}, Lcom/ali/user/open/service/SessionService;->refreshWhenLogin(Lcom/ali/user/open/core/model/LoginReturnData;)V

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->getSession()Lcom/ali/user/open/session/Session;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$1;

    invoke-direct {v2, p0, v1}, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$1;-><init>(Lcom/ali/user/open/tbauth/task/RpcPresenter$7;Lcom/ali/user/open/session/Session;)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-static {v0}, Lcom/ali/user/open/tbauth/util/SessionConvert;->convertLoginDataToSeesion(Lcom/ali/user/open/core/model/LoginReturnData;)Lcom/ali/user/open/session/Session;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$2;-><init>(Lcom/ali/user/open/tbauth/task/RpcPresenter$7;Lcom/ali/user/open/core/model/RpcResponse;I)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v2, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V

    return-void
.end method
