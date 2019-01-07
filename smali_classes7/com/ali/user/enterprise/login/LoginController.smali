.class public Lcom/ali/user/enterprise/login/LoginController;
.super Ljava/lang/Object;
.source "LoginController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "login.controller"

.field private static controller:Lcom/ali/user/enterprise/login/LoginController;


# instance fields
.field public browserRefUrl:Ljava/lang/String;

.field private isNotifyLogout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/enterprise/login/LoginController;->isNotifyLogout:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ali/user/enterprise/login/LoginController;
    .param p1, "x1"    # Lcom/ali/user/enterprise/login/LoginCallback;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/enterprise/login/LoginController;->mainFailCallback(Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ali/user/enterprise/login/LoginController;
    .param p1, "x1"    # Lcom/ali/user/enterprise/login/LoginCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ali/user/enterprise/login/LoginController;->mainSuccessCallback(Lcom/ali/user/enterprise/login/LoginCallback;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ali/user/enterprise/login/LoginController;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/ali/user/enterprise/login/LoginController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/enterprise/login/LoginController;->controller:Lcom/ali/user/enterprise/login/LoginController;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/ali/user/enterprise/login/LoginController;

    invoke-direct {v0}, Lcom/ali/user/enterprise/login/LoginController;-><init>()V

    sput-object v0, Lcom/ali/user/enterprise/login/LoginController;->controller:Lcom/ali/user/enterprise/login/LoginController;

    .line 43
    :cond_0
    sget-object v0, Lcom/ali/user/enterprise/login/LoginController;->controller:Lcom/ali/user/enterprise/login/LoginController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized logout(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "site"    # I
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "autologinToken"    # Ljava/lang/String;
    .param p4, "userid"    # Ljava/lang/String;

    .prologue
    .line 259
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ali/user/enterprise/login/LoginController;->isNotifyLogout:Z

    .line 262
    invoke-direct {p0}, Lcom/ali/user/enterprise/login/LoginController;->logoutClean()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logoutClean()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/ali/user/enterprise/login/LoginController;->isNotifyLogout:Z

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/ali/user/enterprise/login/LoginController;->clearLoginInfo()V

    .line 270
    const-string/jumbo v0, "login.controller"

    const-string/jumbo v1, "logout finish"

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/enterprise/login/LoginController;->isNotifyLogout:Z

    .line 273
    :cond_0
    return-void
.end method

.method private mainFailCallback(Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V
    .locals 3
    .param p1, "loginCallback"    # Lcom/ali/user/enterprise/login/LoginCallback;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 224
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 225
    .local v0, "properties":Ljava/util/Properties;
    const-string/jumbo v1, "code"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v1, "message"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v1, "Login_FAIL"

    invoke-static {v1, p3}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-eqz p1, :cond_0

    .line 229
    new-instance v1, Lcom/ali/user/enterprise/login/LoginController$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ali/user/enterprise/login/LoginController$3;-><init>(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/ali/user/enterprise/base/coordinator/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 237
    :cond_0
    return-void
.end method

.method private mainSuccessCallback(Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 1
    .param p1, "loginCallback"    # Lcom/ali/user/enterprise/login/LoginCallback;

    .prologue
    .line 240
    const-string/jumbo v0, "Login_SUCCESS"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 241
    if-eqz p1, :cond_0

    .line 242
    new-instance v0, Lcom/ali/user/enterprise/login/LoginController$4;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/enterprise/login/LoginController$4;-><init>(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;)V

    invoke-static {v0}, Lcom/ali/user/enterprise/base/coordinator/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkSessionValid(Lcom/ali/user/enterprise/base/data/SessionModel;)Z
    .locals 4
    .param p1, "clickedAccount"    # Lcom/ali/user/enterprise/base/data/SessionModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 192
    iget-object v0, p1, Lcom/ali/user/enterprise/base/data/SessionModel;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p1, Lcom/ali/user/enterprise/base/data/SessionModel;->expires:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearLoginInfo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 280
    const-string/jumbo v1, "login.controller"

    const-string/jumbo v2, "clearLoginInfo"

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_0
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v1, :cond_0

    .line 283
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ali/user/enterprise/base/session/ISession;->setSsoToken(Ljava/lang/String;)V

    .line 284
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ali/user/enterprise/base/session/ISession;->setOneTimeToken(Ljava/lang/String;)V

    .line 285
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v1}, Lcom/ali/user/enterprise/base/session/ISession;->clearSessionInfo()V

    .line 286
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v1}, Lcom/ali/user/enterprise/base/session/ISession;->clearAutoLoginInfo()V

    .line 287
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    const-string/jumbo v2, ", EVENT:USER_LOGOUT"

    invoke-interface {v1, v2}, Lcom/ali/user/enterprise/base/session/ISession;->appendEventTrace(Ljava/lang/String;)V

    .line 289
    :cond_0
    const-string/jumbo v1, "login.controller"

    const-string/jumbo v2, "clear sessionInfo in LoginController.clearLoginInfo"

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public directLogin(Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 2
    .param p1, "loginCallback"    # Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    new-instance v0, Lcom/ali/user/enterprise/base/biz/token/DingLoginBusiness;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/biz/token/DingLoginBusiness;-><init>()V

    new-instance v1, Lcom/ali/user/enterprise/login/LoginController$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/enterprise/login/LoginController$2;-><init>(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/enterprise/base/biz/token/DingLoginBusiness;->directLogin(Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V

    .line 189
    return-void
.end method

.method public logout()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 255
    invoke-static {}, Lcom/ali/user/enterprise/Login;->getLoginSite()I

    move-result v0

    invoke-static {}, Lcom/ali/user/enterprise/Login;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/enterprise/Login;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ali/user/enterprise/Login;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ali/user/enterprise/login/LoginController;->logout(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public multiLogin(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V
    .locals 3
    .param p1, "loginParam"    # Lcom/ali/user/enterprise/base/data/LoginParam;
    .param p2, "multiLoginCallback"    # Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/ali/user/enterprise/base/data/LoginParam;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p1, Lcom/ali/user/enterprise/base/data/LoginParam;->userId:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->findSessionFromModel(Ljava/lang/String;)Lcom/ali/user/enterprise/base/data/SessionModel;

    move-result-object v0

    .line 57
    .local v0, "model":Lcom/ali/user/enterprise/base/data/SessionModel;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->isAccountChangeDegrade()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/login/LoginController;->checkSessionValid(Lcom/ali/user/enterprise/base/data/SessionModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, v0, p2}, Lcom/ali/user/enterprise/login/LoginController;->recoverTarget(Lcom/ali/user/enterprise/base/data/SessionModel;Lcom/ali/user/enterprise/login/LoginCallback;)V

    .line 137
    .end local v0    # "model":Lcom/ali/user/enterprise/base/data/SessionModel;
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v1, Lcom/ali/user/enterprise/base/biz/token/DingLoginBusiness;

    invoke-direct {v1}, Lcom/ali/user/enterprise/base/biz/token/DingLoginBusiness;-><init>()V

    new-instance v2, Lcom/ali/user/enterprise/login/LoginController$1;

    invoke-direct {v2, p0, p2}, Lcom/ali/user/enterprise/login/LoginController$1;-><init>(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V

    invoke-virtual {v1, p1, v2}, Lcom/ali/user/enterprise/base/biz/token/DingLoginBusiness;->doLogin(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V

    goto :goto_0
.end method

.method protected recoverTarget(Lcom/ali/user/enterprise/base/data/SessionModel;Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 6
    .param p1, "targetAccount"    # Lcom/ali/user/enterprise/base/data/SessionModel;
    .param p2, "loginCallback"    # Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 197
    :try_start_0
    sget-object v2, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v2}, Lcom/ali/user/enterprise/base/session/ISession;->clearCookieManager()V

    .line 200
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/enterprise/base/session/SessionManager;

    move-result-object v0

    .line 201
    .local v0, "session":Lcom/ali/user/enterprise/base/session/ISession;
    const/4 v2, 0x0

    invoke-static {v2, p1, v0}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper;->onLoginSuccess(Lcom/ali/user/enterprise/base/data/LoginReturnData;Lcom/ali/user/enterprise/base/data/AliUserResponseData;Lcom/ali/user/enterprise/base/session/ISession;)V

    .line 202
    iget-object v2, p1, Lcom/ali/user/enterprise/base/data/SessionModel;->loginServiceExt:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p1, Lcom/ali/user/enterprise/base/data/SessionModel;->loginServiceExt:Ljava/util/Map;

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ali/user/enterprise/base/session/ISession;->setExtJson(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget v2, p1, Lcom/ali/user/enterprise/base/data/SessionModel;->site:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 210
    iget v2, p1, Lcom/ali/user/enterprise/base/data/SessionModel;->site:I

    invoke-interface {v0, v2}, Lcom/ali/user/enterprise/base/session/ISession;->setLoginSite(I)V

    .line 214
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p1, Lcom/ali/user/enterprise/base/data/SessionModel;->loginTime:J

    .line 215
    invoke-static {p1}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->putSessionModelToFile(Lcom/ali/user/enterprise/base/data/SessionModel;)V

    .line 216
    invoke-interface {p2, v0}, Lcom/ali/user/enterprise/login/LoginCallback;->onSuccess(Lcom/ali/user/enterprise/base/session/ISession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "session":Lcom/ali/user/enterprise/base/session/ISession;
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    const/4 v2, -0x4

    const-string/jumbo v3, "Exception"

    invoke-direct {p0, p2, v2, v3}, Lcom/ali/user/enterprise/login/LoginController;->mainFailCallback(Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    goto :goto_0
.end method
