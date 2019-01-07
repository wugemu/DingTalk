.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;
.super Ljava/lang/Object;
.source "H5BugMeManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/dev/H5BugMeManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5BugMeManagerImpl"


# instance fields
.field private mAccessCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAlreadySetup:Z

.field private mBugMeAccessCheckedInTiny:Z

.field private mBugMeHasAccessInTiny:Z

.field private mDomainWhiteList:[Ljava/lang/String;

.field private mDumpEnabled:Z

.field private mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

.field private mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

.field private mNeedResetOnSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDomainWhiteList:[Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAccessCache:Landroid/util/LruCache;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDumpEnabled:Z

    .line 37
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAlreadySetup:Z

    .line 38
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mBugMeAccessCheckedInTiny:Z

    .line 39
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mBugMeHasAccessInTiny:Z

    .line 40
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .line 41
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mNeedResetOnSetup:Z

    return-void
.end method

.method private ensureProviderAndPlugin()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "H5BugMeManagerImpl"

    const-string/jumbo v1, "create DevPlugin & BugMeProvider"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .line 69
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;-><init>(Lcom/alipay/mobile/nebula/dev/H5BugMeManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 70
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Liow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-interface {v0, v1}, Liow;->register(Liov;)Z

    .line 73
    :cond_0
    return-void
.end method

.method private logServiceWorkerCallback(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 13
    .param p2, "workerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 228
    .local v7, "event":Ljava/lang/String;
    const-string/jumbo v0, "msg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 230
    .local v8, "message":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "worker_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "viewId":Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 232
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 233
    .local v10, "sessionId":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 234
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 236
    .local v3, "userAgent":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v9

    .line 237
    .local v9, "nebulaService":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    if-eqz v9, :cond_4

    .line 238
    invoke-interface {v9}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5Page()Liop;

    move-result-object v11

    .line 240
    .local v11, "topPage":Liop;
    :try_start_0
    invoke-interface {v11}, Liop;->getTitle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 246
    :cond_2
    :goto_1
    invoke-interface {v11}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 247
    invoke-interface {v11}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 249
    :cond_3
    invoke-static {v11}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getSessionId(Liop;)Ljava/lang/String;

    move-result-object v10

    .line 252
    .end local v11    # "topPage":Liop;
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0, v2, v10}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setSessionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "OnReportConsoleMessage"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "log"

    invoke-interface {v0, v1, v2, v8, v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .restart local v11    # "topPage":Liop;
    :catch_0
    move-exception v0

    invoke-interface {v11}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v11}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 259
    .end local v11    # "topPage":Liop;
    :cond_5
    const-string/jumbo v0, "OnStarted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "create"

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 261
    :cond_6
    const-string/jumbo v0, "onStopped"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "destroy"

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 263
    :cond_7
    const-string/jumbo v0, "OnReportException"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "H5BugMeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Worker OnReportException: "

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "error"

    invoke-interface {v0, v1, v2, v8, v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private releaseProviderAndPlugin()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "H5BugMeManagerImpl"

    const-string/jumbo v1, "release DevPlugin & BugMeProvider"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Liow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-interface {v0, v1}, Liow;->unregister(Liov;)Z

    .line 80
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevPlugin:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .line 81
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public hasAccessToDebug(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    .line 146
    :goto_0
    return v3

    .line 128
    :cond_0
    const-string/jumbo v6, "h5_bug_me_super_user"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    const/4 v3, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "pureUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAccessCache:Landroid/util/LruCache;

    invoke-virtual {v6, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 133
    .local v0, "cached":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 136
    :cond_2
    const/4 v3, 0x0

    .line 137
    .local v3, "isInWhiteList":Z
    const-string/jumbo v6, "h5_bug_me_debug_switch"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDomainWhiteList:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDomainWhiteList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 139
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDomainWhiteList:[Ljava/lang/String;

    aget-object v1, v5, v2

    .line 140
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    const/4 v3, 0x1

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAccessCache:Landroid/util/LruCache;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public logServiceWorkerOnReceiveValue(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .param p2, "workerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    .local p1, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 187
    .local v2, "hasAccess":Z
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-nez v4, :cond_4

    .line 189
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mBugMeAccessCheckedInTiny:Z

    if-nez v4, :cond_3

    .line 191
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 193
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 194
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_1

    .line 195
    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 196
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 198
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mBugMeHasAccessInTiny:Z

    .line 200
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mBugMeHasAccessInTiny:Z

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->setUp()V

    .line 203
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mBugMeAccessCheckedInTiny:Z

    .line 215
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->logServiceWorkerCallback(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 221
    :cond_2
    :goto_1
    return-void

    .line 207
    :cond_3
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mBugMeHasAccessInTiny:Z

    goto :goto_0

    .line 212
    :cond_4
    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->hasAccessToDebug(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5BugMeManagerImpl"

    const-string/jumbo v5, "CORE_EVENT_CONSOLE_CALLBACK"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onBugMeSwitched(Z)V
    .locals 5
    .param p1, "debugSwitch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mNeedResetOnSetup:Z

    .line 170
    if-eqz p1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->ensureProviderAndPlugin()V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAccessCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mH5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "NebulaSDK"

    const-string/jumbo v2, "welcome"

    const-string/jumbo v3, "NebulaSDK"

    const-string/jumbo v4, "welcome to Hybrid Inspector"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->welcome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/data/H5Trace;->setEnabled(Z)V

    .line 180
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->release()V

    goto :goto_0
.end method

.method public openSettingPanel(Z)V
    .locals 4
    .param p1, "fromOpenPlatform"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string/jumbo v2, "h5_bug_me_show_icon"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 155
    const-string/jumbo v2, "h5_bug_me_super_user"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 159
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5BugMeManagerImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDumpEnabled:Z

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->releaseProviderAndPlugin()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAccessCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDomainWhiteList:[Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->resetBugMeSettings()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAlreadySetup:Z

    .line 94
    return-void
.end method

.method public setDomainWhiteList([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDomainWhiteList:[Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAccessCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 120
    return-void
.end method

.method public setUp()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAlreadySetup:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "H5BugMeManagerImpl"

    const-string/jumbo v1, "setUpBugMe"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mNeedResetOnSetup:Z

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->resetBugMeSettings()V

    .line 59
    :cond_1
    const-string/jumbo v0, "h5_bug_me_debug_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mDumpEnabled:Z

    if-eqz v0, :cond_3

    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->ensureProviderAndPlugin()V

    .line 62
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->mAlreadySetup:Z

    goto :goto_0
.end method

.method public setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    .line 103
    .local v0, "canDebug":Z
    if-nez v0, :cond_2

    .line 105
    const-string/jumbo v2, "h5_bug_me_wired_debug"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    .line 106
    .local v1, "wiredDebug":Z
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v0

    .line 111
    .end local v1    # "wiredDebug":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 112
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebContentsDebuggingEnabled(Z)V

    goto :goto_0
.end method
