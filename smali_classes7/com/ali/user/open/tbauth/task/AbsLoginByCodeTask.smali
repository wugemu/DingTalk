.class public abstract Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;
.super Lcom/ali/user/open/core/task/TaskWithDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/open/core/task/TaskWithDialog",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/open/core/task/TaskWithDialog;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;->login([Ljava/lang/String;)Lcom/ali/user/open/core/model/RpcResponse;

    move-result-object v1

    iget v3, v1, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    const-string/jumbo v0, "AbsLoginByCodeTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "asyncExecute code = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbb8

    if-ne v3, v0, :cond_2

    :try_start_0
    iget-object v0, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/ali/user/open/tbauth/a/a;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    iget-object v1, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

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

    new-instance v3, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$1;

    invoke-direct {v3, p0, v1}, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$1;-><init>(Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;Lcom/ali/user/open/session/Session;)V

    invoke-interface {v0, v3}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    iget-object v0, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-static {v0}, Lcom/ali/user/open/tbauth/util/SessionConvert;->convertLoginDataToSeesion(Lcom/ali/user/open/core/model/LoginReturnData;)Lcom/ali/user/open/session/Session;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x3304

    if-ne v3, v0, :cond_3

    iget-object v0, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginReturnData;->h5Url:Ljava/lang/String;

    const-string/jumbo v3, "AbsLoginByCodeTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "asyncExecute doubleCheckUrl = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->setActivity(Landroid/app/Activity;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "url"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "token"

    iget-object v0, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginReturnData;->token:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "scene"

    iget-object v0, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginReturnData;->scene:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginReturnData;->token:Ljava/lang/String;

    sput-object v0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->token:Ljava/lang/String;

    iget-object v0, v1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginReturnData;->scene:Ljava/lang/String;

    sput-object v0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;->activity:Landroid/app/Activity;

    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_DOUBLE_CHECK:I

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v4, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;

    invoke-direct {v4, p0, v1, v3}, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;-><init>(Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;Lcom/ali/user/open/core/model/RpcResponse;I)V

    invoke-interface {v0, v4}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method

.method protected abstract doWhenResultFail(ILjava/lang/String;)V
.end method

.method protected abstract doWhenResultOk(Lcom/ali/user/open/session/Session;)V
.end method

.method protected abstract login([Ljava/lang/String;)Lcom/ali/user/open/core/model/RpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/ali/user/open/core/model/RpcResponse",
            "<",
            "Lcom/ali/user/open/core/model/LoginReturnData;",
            ">;"
        }
    .end annotation
.end method
