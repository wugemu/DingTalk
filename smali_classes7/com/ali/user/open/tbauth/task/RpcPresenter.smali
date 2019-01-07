.class public Lcom/ali/user/open/tbauth/task/RpcPresenter;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "login.tbRpc"

    sput-object v0, Lcom/ali/user/open/tbauth/task/RpcPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static a(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V
    .locals 2

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;

    invoke-direct {v1, p1, p2, p0}, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;-><init>(ILjava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V
    .locals 3

    if-eqz p0, :cond_0

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v1, Lcom/ali/user/open/tbauth/UTConstants;->E_AUTO_LOGIN_SUCCESS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, p1}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/core/model/RpcResponse;Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Lcom/ali/user/open/core/model/RpcResponse;Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V

    return-void
.end method

.method static a(Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;)V
    .locals 3

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->deviceToken:Lcom/ali/user/open/core/model/DeviceTokenRO;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ali/user/open/device/DeviceTokenAccount;

    invoke-direct {v0}, Lcom/ali/user/open/device/DeviceTokenAccount;-><init>()V

    const-string/jumbo v1, "taobao"

    iput-object v1, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->site:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->deviceToken:Lcom/ali/user/open/core/model/DeviceTokenRO;

    iget-object v1, v1, Lcom/ali/user/open/core/model/DeviceTokenRO;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->openId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->openId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->hid:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->hid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/open/device/DeviceTokenManager;->getInstance()Lcom/ali/user/open/device/DeviceTokenManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->deviceToken:Lcom/ali/user/open/core/model/DeviceTokenRO;

    iget-object v2, v2, Lcom/ali/user/open/core/model/DeviceTokenRO;->salt:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/device/DeviceTokenManager;->putDeviceToken(Lcom/ali/user/open/device/DeviceTokenAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/ali/user/open/tbauth/ui/TbAuthActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method static b(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "message"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_AUTO_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->c(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V

    return-void
.end method

.method private static b(Lcom/ali/user/open/core/model/RpcResponse;Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    iget v1, p0, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    sget-object v2, Lcom/ali/user/open/tbauth/task/RpcPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "asyncExecute code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbb8

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-boolean v1, Lcom/ali/user/open/tbauth/a/a;->a:Z

    if-eqz v1, :cond_2

    const-class v1, Lcom/ali/user/open/service/SessionService;

    invoke-static {v1}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v1, v0}, Lcom/ali/user/open/service/SessionService;->refreshWhenLogin(Lcom/ali/user/open/core/model/LoginReturnData;)V

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->getSession()Lcom/ali/user/open/session/Session;

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_0
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;

    invoke-direct {v2, p1, p2, v1}, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;-><init>(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/ali/user/open/tbauth/util/SessionConvert;->convertLoginDataToSeesion(Lcom/ali/user/open/core/model/LoginReturnData;)Lcom/ali/user/open/session/Session;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/16 v2, 0x3304

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/ali/user/open/core/model/LoginReturnData;->h5Url:Ljava/lang/String;

    sget-object v2, Lcom/ali/user/open/tbauth/task/RpcPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "asyncExecute doubleCheckUrl = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->setActivity(Landroid/app/Activity;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v3, v0, Lcom/ali/user/open/core/model/LoginReturnData;->token:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "scene"

    iget-object v3, v0, Lcom/ali/user/open/core/model/LoginReturnData;->scene:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/ali/user/open/core/model/LoginReturnData;->token:Ljava/lang/String;

    sput-object v1, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->token:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginReturnData;->scene:Ljava/lang/String;

    sput-object v0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->scene:Ljava/lang/String;

    sget v0, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_DOUBLE_CHECK:I

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;-><init>(Lcom/ali/user/open/core/model/RpcResponse;Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;I)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static c(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V
    .locals 2

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/tbauth/task/RpcPresenter$6;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/open/tbauth/task/RpcPresenter$6;-><init>(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static doWhenResultFail(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "message"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    sget-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    invoke-interface {v0, p2, p3}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static doWhenResultOk(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v1, Lcom/ali/user/open/tbauth/UTConstants;->E_TB_LOGIN_SUCCESS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    sget-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    invoke-interface {v0, p2}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    :cond_1
    invoke-static {p0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static getAccessTokenWithAuthCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 1

    new-instance v0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8;

    invoke-direct {v0, p0, p3}, Lcom/ali/user/open/tbauth/task/RpcPresenter$8;-><init>(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-static {p1, p2, v0}, Lcom/ali/user/open/tbauth/task/RpcRepository;->getAccessTokenWithAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void
.end method

.method public static loginByIVToken(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 1

    new-instance v0, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;

    invoke-direct {v0, p5}, Lcom/ali/user/open/tbauth/task/RpcPresenter$4;-><init>(Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/ali/user/open/tbauth/task/RpcRepository;->loginByIVToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void
.end method

.method public static loginByRefreshToken(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 1

    new-instance v0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7;

    invoke-direct {v0, p0}, Lcom/ali/user/open/tbauth/task/RpcPresenter$7;-><init>(Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-static {v0}, Lcom/ali/user/open/tbauth/task/RpcRepository;->loginByRefreshToken(Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void
.end method

.method public static refreshPageAfterOpenTb(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 1

    new-instance v0, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;

    invoke-direct {v0, p0, p2}, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;-><init>(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-static {p1, v0}, Lcom/ali/user/open/tbauth/task/RpcRepository;->refreshPageAfterOpenTb(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void
.end method

.method public static validataAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 1

    new-instance v0, Lcom/ali/user/open/tbauth/task/RpcPresenter$9;

    invoke-direct {v0, p3}, Lcom/ali/user/open/tbauth/task/RpcPresenter$9;-><init>(Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-static {p0, p1, p2, v0}, Lcom/ali/user/open/tbauth/task/RpcRepository;->validateAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void
.end method
