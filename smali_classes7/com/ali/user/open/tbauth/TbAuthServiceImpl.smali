.class public Lcom/ali/user/open/tbauth/TbAuthServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/tbauth/TbAuthService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;
    }
.end annotation


# instance fields
.field private transient a:[Ljava/util/regex/Pattern;

.field private transient b:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    const-string/jumbo v0, "TbAuthService"

    const-string/jumbo v1, "auth goLogin"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ali/user/open/tbauth/ui/TbAuthActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/tbauth/TbAuthServiceImpl;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a(Lcom/ali/user/open/callback/LoginCallback;)V

    return-void
.end method

.method private b(Lcom/ali/user/open/callback/LoginCallback;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TbAuthService"

    const-string/jumbo v2, "auth static field is null"

    invoke-static {v0, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x2772

    const-string/jumbo v2, "NullPointException"

    invoke-interface {p1, v0, v2}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "withNoActivity"

    const-string/jumbo v3, "true"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    const-string/jumbo v3, "auth"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TbAuthService"

    const-string/jumbo v2, "auth network not available"

    invoke-static {v0, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2773

    const-string/jumbo v2, "member_sdk_network_not_available_message"

    invoke-static {v2}, Lcom/ali/user/open/core/util/ResourceUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public auth(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "needAutoLogin"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "needSession"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->auth(Ljava/util/Map;Lcom/ali/user/open/callback/LoginCallback;)V

    return-void
.end method

.method public auth(Ljava/util/Map;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/callback/LoginCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    const-string/jumbo v0, "TbAuthService"

    const-string/jumbo v1, "auth start"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->b(Lcom/ali/user/open/callback/LoginCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TbAuthService"

    const-string/jumbo v1, "AutnEnvriment invalid"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "0"

    if-eqz p1, :cond_1

    const-string/jumbo v0, "needSession"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "needAutoLogin"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "isFromUCC"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_1
    const-string/jumbo v3, "1"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/ali/user/open/tbauth/a/a;->a:Z

    const-string/jumbo v0, "1"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/ali/user/open/tbauth/a/a;->b:Z

    const-string/jumbo v0, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;-><init>(Lcom/ali/user/open/tbauth/TbAuthServiceImpl;Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->autoLogin(Lcom/ali/user/open/callback/LoginCallback;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a(Lcom/ali/user/open/callback/LoginCallback;)V

    goto :goto_0
.end method

.method public autoLogin(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->autoLoginToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TbAuthService"

    const-string/jumbo v1, "auth auto login"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$2;-><init>(Lcom/ali/user/open/tbauth/TbAuthServiceImpl;Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-static {v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->loginByRefreshToken(Lcom/ali/user/open/callback/LoginCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string/jumbo v1, "auto login token is empty"

    invoke-interface {p1, v0, v1}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public checkSessionValid()Z
    .locals 1

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public getSession()Lcom/ali/user/open/session/Session;
    .locals 1

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->getSession()Lcom/ali/user/open/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public isAppAuthSurpport(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v1, 0x0

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->sOneTimeAuthOption:Lcom/ali/user/open/core/config/AuthOption;

    sget-object v2, Lcom/ali/user/open/core/config/AuthOption;->H5ONLY:Lcom/ali/user/open/core/config/AuthOption;

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->authOption:Lcom/ali/user/open/core/config/AuthOption;

    sget-object v2, Lcom/ali/user/open/core/config/AuthOption;->H5ONLY:Lcom/ali/user/open/core/config/AuthOption;

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.taobao.open.intent.action.GETWAY"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tbopen://m.taobao.com/getway/oauth?&appkey="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&pluginName=taobao.oauth.code.create&apkSign="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&sign="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a:[Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/user/open/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/user/open/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    const-string/jumbo v2, "[,]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a:[Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a:[Ljava/util/regex/Pattern;

    array-length v3, v1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a:[Ljava/util/regex/Pattern;

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public isLogoutUrl(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->b:[Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/user/open/core/config/ConfigManager;->LOGOUT_URLS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/user/open/core/config/ConfigManager;->LOGOUT_URLS:Ljava/lang/String;

    const-string/jumbo v2, "[,]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->b:[Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->b:[Ljava/util/regex/Pattern;

    array-length v3, v1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->b:[Ljava/util/regex/Pattern;

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->b:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public logout(Lcom/ali/user/open/tbauth/callback/LogoutCallback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "withNoActivity"

    const-string/jumbo v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    const-string/jumbo v2, "logout"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    const-string/jumbo v1, "logout"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/ali/user/open/tbauth/task/LogoutTask;

    invoke-direct {v0, p1}, Lcom/ali/user/open/tbauth/task/LogoutTask;-><init>(Lcom/ali/user/open/tbauth/callback/LogoutCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/LogoutTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshCookie(Lcom/ali/user/open/core/callback/MemberCallback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    new-instance v0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;-><init>(Lcom/ali/user/open/tbauth/TbAuthServiceImpl;Lcom/ali/user/open/core/callback/MemberCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setLoginCallback(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    sput-object p1, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/user/open/callback/LoginCallback;

    return-void
.end method

.method public setWebViewProxy(Lcom/ali/user/open/core/WebViewProxy;)V
    .locals 0

    sput-object p1, Lcom/ali/user/open/core/context/KernelContext;->mWebViewProxy:Lcom/ali/user/open/core/WebViewProxy;

    return-void
.end method

.method public tokenLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/user/open/tbauth/a/a;->a:Z

    const/4 v0, 0x0

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->loginByIVToken(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    return-void
.end method
