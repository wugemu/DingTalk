.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;
.super Ljava/lang/Object;
.source "H5TinyAppDebugMode.java"


# static fields
.field private static final APP_CENTER_TOKEN:Ljava/lang/String; = "appcenter"

.field public static final KEY_NB_TOKEN:Ljava/lang/String; = "nbtoken"

.field public static final KEY_WHITE_LIST:Ljava/lang/String; = "domainWhiteList"

.field private static final TAG:Ljava/lang/String; = "H5TinyAppDebugMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->handleResponse(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->showFailToast()V

    return-void
.end method

.method public static addRecentAppForDebugMode(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 9
    .param p0, "param"    # Landroid/os/Bundle;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->checkNbToken(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v8

    .line 43
    .local v8, "devAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    if-nez v8, :cond_1

    .line 44
    const-string/jumbo v1, "H5TinyAppDebugMode"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5DevAppList not contain appId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v8    # "devAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v8    # "devAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    .line 48
    .local v0, "debugModeProvider":Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v2, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    iget-object v3, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;->addRecentAppForDebugMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkNbToken(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "param"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const-string/jumbo v1, "nbtoken"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "nbToken":Ljava/lang/String;
    const-string/jumbo v1, "appcenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static doRpcAuth(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 10
    .param p0, "param"    # Landroid/os/Bundle;
    .param p1, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 63
    .local v1, "devAppId":Ljava/lang/String;
    const-string/jumbo v5, "nbsn"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "nbsn":Ljava/lang/String;
    const-string/jumbo v5, "nbsv"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "nbsv":Ljava/lang/String;
    const-string/jumbo v5, "nbtoken"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "token":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-direct {v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;-><init>()V

    .line 68
    .local v6, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    iput-object v2, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 69
    iput-object v7, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 71
    const-string/jumbo v5, "H5TinyAppDebugMode"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "devAppId : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nbsn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nbsv : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " token : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "h5_read_use_dev_app_config"

    const/4 v8, 0x0

    .line 74
    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    .line 76
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->handleResponse(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    .line 81
    .local v0, "authProvider":Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;
    if-eqz v0, :cond_0

    .line 82
    new-instance v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;

    invoke-direct {v5, v1, v6, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;->rpcAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;)V

    goto :goto_0
.end method

.method public static enableTinyAppDebugMode()Z
    .locals 3

    .prologue
    .line 29
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 30
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v2, "smallprogram_debug_close_switch"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const/4 v2, 0x0

    .line 36
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static handleResponse(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V
    .locals 7
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "domainWhiteList"    # [Ljava/lang/String;

    .prologue
    .line 101
    const-string/jumbo v2, ""

    .line 102
    .local v2, "whiteList":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 103
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 104
    .local v0, "domain":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "domain":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 108
    .local v1, "startParams":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 109
    const-string/jumbo v3, "domainWhiteList"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->hasAuth:Z

    .line 113
    const-string/jumbo v3, "H5TinyAppDebugMode"

    const-string/jumbo v4, "do syncApp"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 115
    return-void
.end method

.method private static showFailToast()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$2;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
