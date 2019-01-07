.class public Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;
.super Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.source "H5DevAppActivity.java"


# instance fields
.field private devAppId:Ljava/lang/String;

.field private enableBugMe:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;-><init>()V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->devAppId:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->enableBugMe:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->devAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->onBugMeRpcResult(Landroid/net/Uri;[Ljava/lang/String;)V

    return-void
.end method

.method private onBugMeRpcResult(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 8
    .param p1, "schemeUri"    # Landroid/net/Uri;
    .param p2, "domainWhiteList"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    move-object v2, p1

    .line 137
    .local v2, "targetUri":Landroid/net/Uri;
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->enableBugMe:Z

    if-eqz v4, :cond_3

    .line 138
    const-string/jumbo v3, ""

    .line 139
    .local v3, "whiteList":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 140
    array-length v5, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, p2, v4

    .line 141
    .local v0, "domain":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "domain":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "enableBugme"

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->enableBugMe:Z

    .line 146
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "domainWhiteList"

    .line 147
    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 151
    .end local v3    # "whiteList":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 152
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 153
    .local v1, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string/jumbo v0, "H5BugMeDevApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "H5DevAppActivity onCreate "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 37
    .local v10, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scheme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    .local v9, "scheme":Ljava/lang/String;
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 40
    .local v5, "schemeUri":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->finish()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v0, "true"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "enableBugme"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->enableBugMe:Z

    .line 46
    const-string/jumbo v0, "appId"

    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->devAppId:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "nbsource"

    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, "nbsource":Ljava/lang/String;
    const-string/jumbo v0, "nbsn"

    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "nbsn":Ljava/lang/String;
    const-string/jumbo v0, "nbsv"

    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 52
    .local v13, "nbsv":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;-><init>()V

    .line 53
    .local v4, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    iput-object v8, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 54
    iput-object v13, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "H5BaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "devAppId "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->devAppId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " nbsource:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " nbsn:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " nbsv:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " enableBugme:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->enableBugMe:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "debug"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 61
    .local v3, "containDebug":Z
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "h5_read_use_dev_app_config"

    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 64
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->devAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->onBugMeRpcResult(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->finish()V

    goto/16 :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

    .line 73
    .local v2, "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    if-eqz v2, :cond_3

    .line 74
    const-string/jumbo v0, "\u8bf7\u6c42\u6570\u636e\u4e2d"

    invoke-interface {v2, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;->showLoading(Landroid/app/Activity;Ljava/lang/String;)V

    .line 78
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    .line 80
    .local v6, "bugMeRpcAuthProvider":Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;
    if-eqz v6, :cond_0

    .line 81
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->devAppId:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;Landroid/net/Uri;)V

    move-object v11, v0

    invoke-interface/range {v6 .. v11}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;->rpcAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onResume()V

    .line 161
    const-string/jumbo v0, "H5BugMeDevApp"

    const-string/jumbo v1, "H5DevAppActivity onResume "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
