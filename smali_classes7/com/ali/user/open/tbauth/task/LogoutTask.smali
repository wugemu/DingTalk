.class public Lcom/ali/user/open/tbauth/task/LogoutTask;
.super Lcom/ali/user/open/core/task/AbsAsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/open/core/task/AbsAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/open/tbauth/callback/LogoutCallback;


# direct methods
.method public constructor <init>(Lcom/ali/user/open/tbauth/callback/LogoutCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/open/core/task/AbsAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/LogoutTask;->a:Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/tbauth/task/LogoutTask;)Lcom/ali/user/open/tbauth/callback/LogoutCallback;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/LogoutTask;->a:Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    :try_start_0
    const-string/jumbo v0, "logout task"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "into logout "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/open/session/InternalSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/open/tbauth/task/LogoutTask$1;

    invoke-direct {v0, p0}, Lcom/ali/user/open/tbauth/task/LogoutTask$1;-><init>(Lcom/ali/user/open/tbauth/task/LogoutTask;)V

    invoke-static {v0}, Lcom/ali/user/open/tbauth/task/RpcRepository;->logout(Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    :cond_0
    invoke-static {}, Lcom/ali/user/open/history/AccountHistoryManager;->getInstance()Lcom/ali/user/open/history/AccountHistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/history/AccountHistoryManager;->clearHistoryAccount()V

    invoke-static {}, Lcom/ali/user/open/device/DeviceTokenManager;->getInstance()Lcom/ali/user/open/device/DeviceTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/device/DeviceTokenManager;->clearDeviceToken()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->logout()Lcom/ali/user/open/core/model/ResultCode;

    move-result-object v0

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    invoke-virtual {v1, v0}, Lcom/ali/user/open/core/model/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/RpcService;->logout()V

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/tbauth/task/LogoutTask$2;

    invoke-direct {v1, p0}, Lcom/ali/user/open/tbauth/task/LogoutTask$2;-><init>(Lcom/ali/user/open/tbauth/task/LogoutTask;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/LogoutTask;->a:Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    invoke-static {v1, v0}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->logout()Lcom/ali/user/open/core/model/ResultCode;

    move-result-object v0

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    invoke-virtual {v1, v0}, Lcom/ali/user/open/core/model/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/RpcService;->logout()V

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/tbauth/task/LogoutTask$2;

    invoke-direct {v1, p0}, Lcom/ali/user/open/tbauth/task/LogoutTask$2;-><init>(Lcom/ali/user/open/tbauth/task/LogoutTask;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/LogoutTask;->a:Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    invoke-static {v1, v0}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->logout()Lcom/ali/user/open/core/model/ResultCode;

    move-result-object v0

    sget-object v2, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    invoke-virtual {v2, v0}, Lcom/ali/user/open/core/model/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/RpcService;->logout()V

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/tbauth/task/LogoutTask$2;

    invoke-direct {v2, p0}, Lcom/ali/user/open/tbauth/task/LogoutTask$2;-><init>(Lcom/ali/user/open/tbauth/task/LogoutTask;)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_1
    throw v1

    :cond_3
    iget-object v2, p0, Lcom/ali/user/open/tbauth/task/LogoutTask;->a:Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V

    goto :goto_1
.end method

.method protected synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/tbauth/task/LogoutTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doFinally()V
    .locals 0

    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/LogoutTask;->a:Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ali/user/open/core/model/ResultCode;->create(I[Ljava/lang/Object;)Lcom/ali/user/open/core/model/ResultCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V

    return-void
.end method
