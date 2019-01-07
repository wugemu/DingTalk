.class public Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;
.super Lcom/ali/user/open/tbauth/ui/support/BaseActivityResultHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/open/tbauth/ui/support/BaseActivityResultHandler;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/Intent;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const-string/jumbo v0, "login"

    const-string/jumbo v1, "handleCheck"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo v0, "token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;

    invoke-direct {v2, p0, v1, p3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;-><init>(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;Ljava/lang/ref/WeakReference;Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string/jumbo v2, "token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scene"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "aliusersdk_h5querystring"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;

    invoke-direct {v5, p0, v1, p3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;-><init>(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;Ljava/lang/ref/WeakReference;Lcom/ali/user/open/callback/LoginCallback;)V

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->loginByIVToken(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$3;

    invoke-direct {v2, p0, v1, p3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$3;-><init>(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;Ljava/lang/ref/WeakReference;Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v2, 0x0

    const-string/jumbo v0, "login"

    const-string/jumbo v1, "onLoginSuccess "

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/ali/user/open/session/Session;

    invoke-direct {v0}, Lcom/ali/user/open/session/Session;-><init>()V

    iput-object p2, v0, Lcom/ali/user/open/session/Session;->topAuthCode:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v1, Lcom/ali/user/open/tbauth/UTConstants;->E_H5_LOGIN_SUCCESS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    sget-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->getSession()Lcom/ali/user/open/session/Session;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/ali/user/open/tbauth/ui/TbAuthActivity;

    if-eqz v0, :cond_2

    sput-object v2, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sput-object v2, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "login"

    const-string/jumbo v1, "onLoginFailure "

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/ali/user/open/core/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/ali/user/open/core/message/Message;

    move-result-object v0

    iget v1, v0, Lcom/ali/user/open/core/message/Message;->code:I

    iget-object v2, v0, Lcom/ali/user/open/core/message/Message;->message:Ljava/lang/String;

    invoke-interface {p3, v1, v2}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    sget-object v1, Lcom/ali/user/open/tbauth/UTConstants;->E_IV_LOGIN_FAILURE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2713

    if-ne p4, v1, :cond_3

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v1, Lcom/ali/user/open/tbauth/UTConstants;->E_H5_LOGIN_CANCEL:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_1

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/ali/user/open/core/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/ali/user/open/core/message/Message;

    move-result-object v0

    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    iget v2, v0, Lcom/ali/user/open/core/message/Message;->code:I

    iget-object v0, v0, Lcom/ali/user/open/core/message/Message;->message:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/ali/user/open/tbauth/ui/TbAuthActivity;

    if-eqz v0, :cond_2

    sput-object v5, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sput-object v5, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x2714

    if-ne p4, v1, :cond_4

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v1, Lcom/ali/user/open/tbauth/UTConstants;->E_TB_LOGIN_CANCEL:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x2715

    if-ne p4, v1, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/ali/user/open/core/message/Message;->code:I

    iget-object v0, v0, Lcom/ali/user/open/core/message/Message;->message:Ljava/lang/String;

    const-string/jumbo v3, "code"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "message"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/ali/user/open/core/message/Message;->code:I

    iget-object v0, v0, Lcom/ali/user/open/core/message/Message;->message:Ljava/lang/String;

    const-string/jumbo v3, "code"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "message"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    return-void
.end method


# virtual methods
.method protected onCallbackContext(IILandroid/content/Intent;Landroid/app/Activity;Ljava/util/Map;Landroid/webkit/WebView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v6, 0x0

    const/16 v5, 0x2714

    const/4 v4, 0x0

    const/16 v3, 0x2713

    const-string/jumbo v1, "login"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCallbackContext requestCode="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " resultCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " authCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/callback/LoginCallback;

    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_H5_LOGIN:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_6

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-ne p2, v1, :cond_4

    sget-boolean v1, Lcom/ali/user/open/tbauth/a/a;->b:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/ali/user/open/tbauth/a/a;->a:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->refreshPageAfterOpenTb(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "taobao"

    invoke-static {v1, v2, v3, v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->getAccessTokenWithAuthCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->IGNORE:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->CHECK:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-ne p2, v1, :cond_5

    invoke-direct {p0, v4, p3, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(ILandroid/content/Intent;Lcom/ali/user/open/callback/LoginCallback;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "E_H5_CANCEL_FAILURE"

    invoke-direct {p0, p4, v1, v0, v3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto :goto_1

    :cond_6
    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_TAOBAO:I

    if-ne p1, v1, :cond_d

    if-eqz v0, :cond_d

    const-class v1, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v1}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/open/core/service/UserTrackerService;

    const-string/jumbo v2, "AUTH_TAOBAO"

    invoke-interface {v1, v2, v6}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_a

    if-eqz p3, :cond_a

    const-string/jumbo v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "E_TB_LOGIN_CANCEL"

    invoke-direct {p0, p4, v1, v0, v5}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto/16 :goto_1

    :cond_7
    sget-boolean v1, Lcom/ali/user/open/tbauth/a/a;->b:Z

    if-eqz v1, :cond_8

    invoke-direct {p0, p4, v2, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_8
    sget-boolean v1, Lcom/ali/user/open/tbauth/a/a;->a:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->refreshPageAfterOpenTb(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_9
    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v3, "taobao"

    invoke-static {v1, v2, v3, v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->getAccessTokenWithAuthCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_a
    if-nez p2, :cond_b

    const-string/jumbo v1, "E_TB_LOGIN_CANCEL"

    invoke-direct {p0, p4, v1, v0, v5}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "login"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "result from taobao : "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_c

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "E_TB_LOGIN_FAILURE"

    const/16 v2, 0x2715

    invoke-direct {p0, p4, v1, v0, v2}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_QR_LOGIN:I

    if-ne p1, v1, :cond_f

    if-eqz v0, :cond_f

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-ne p2, v1, :cond_e

    const-string/jumbo v1, "E_QR_LOGIN_SUCCESS"

    invoke-direct {p0, p4, v1, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v1, "E_QR_CANCEL_FAILURE"

    invoke-direct {p0, p4, v1, v0, v3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto/16 :goto_1

    :cond_f
    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_QR_LOGIN_CONFIRM:I

    if-ne p1, v1, :cond_11

    if-eqz v0, :cond_11

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-ne p2, v1, :cond_10

    const-string/jumbo v1, "E_QR_LOGIN_CONFIRM_SUCCESS"

    invoke-direct {p0, p4, v1, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v1, "E_QR_LOGIN_CONFIRM_CANCEL"

    invoke-direct {p0, p4, v1, v0, v3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto/16 :goto_1

    :cond_11
    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_DOUBLE_CHECK:I

    if-ne p1, v1, :cond_12

    invoke-direct {p0, v4, p3, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(ILandroid/content/Intent;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_12
    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_H5_UNBIND:I

    if-ne p1, v1, :cond_14

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-ne p2, v1, :cond_13

    const-string/jumbo v1, "E_H5_UNBIND_SUCCESS"

    invoke-direct {p0, p4, v1, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    :goto_3
    sput-object v6, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v1, "E_H5_UNBIND_FAILURE"

    invoke-direct {p0, p4, v1, v0, v3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto :goto_3

    :cond_14
    sget v1, Lcom/ali/user/open/tbauth/RequestCode;->OPEN_ICBU_H5_LOGIN:I

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-ne p2, v1, :cond_16

    sget-boolean v1, Lcom/ali/user/open/tbauth/a/a;->b:Z

    if-eqz v1, :cond_15

    const-string/jumbo v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_15
    sget-object v1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "icbu"

    invoke-static {v1, v2, v3, v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->getAccessTokenWithAuthCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_16
    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->IGNORE:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->CHECK:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    if-ne p2, v1, :cond_17

    const/4 v1, 0x4

    invoke-direct {p0, v1, p3, v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(ILandroid/content/Intent;Lcom/ali/user/open/callback/LoginCallback;)V

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v1, "E_H5_CANCEL_FAILURE"

    invoke-direct {p0, p4, v1, v0, v3}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    goto/16 :goto_1
.end method

.method protected onTaeSDKActivity(IILandroid/content/Intent;Lcom/ali/user/open/core/webview/BaseWebViewActivity;Ljava/util/Map;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Lcom/ali/user/open/core/webview/BaseWebViewActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    return-void
.end method
