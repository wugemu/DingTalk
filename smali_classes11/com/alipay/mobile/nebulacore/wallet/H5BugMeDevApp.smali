.class public Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;
.super Lini;
.source "H5BugMeDevApp.java"


# static fields
.field static final KEY_ENABLE_BUGME:Ljava/lang/String; = "enableBugme"

.field static final KEY_SCHEME:Ljava/lang/String; = "scheme"

.field static final KEY_TOKEN:Ljava/lang/String; = "token"

.field static final KEY_WHITE_LIST:Ljava/lang/String; = "domainWhiteList"

.field public static final TAG:Ljava/lang/String; = "H5BugMeDevApp"


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lini;-><init>()V

    return-void
.end method

.method private handleScheme(Ljava/lang/String;)V
    .locals 5
    .param p1, "scheme"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, "schemeUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string/jumbo v2, "H5BugMeDevApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "H5TinyAppDebugMode schemeUri : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 78
    .local v0, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->bundle:Landroid/os/Bundle;

    .line 40
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    const-string/jumbo v0, "H5BugMeDevApp"

    const-string/jumbo v1, "H5BugMeDevApp onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    const-string/jumbo v0, "H5BugMeDevApp"

    const-string/jumbo v1, "H5BugMeDevApp onRestart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onStart()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 44
    const-string/jumbo v4, "H5BugMeDevApp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onStart: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->bundle:Landroid/os/Bundle;

    const-string/jumbo v5, "token"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "tokenValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->bundle:Landroid/os/Bundle;

    const-string/jumbo v5, "scheme"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "schemeValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->bundle:Landroid/os/Bundle;

    const-string/jumbo v5, "enableBugme"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "enableBugme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->destroy(Landroid/os/Bundle;)V

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->handleScheme(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->destroy(Landroid/os/Bundle;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    const-string/jumbo v4, "token"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v4, "scheme"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v4, "enableBugme"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/c;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lcom/alipay/mobile/framework/c;->a(Linn;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    const-string/jumbo v0, "H5BugMeDevApp"

    const-string/jumbo v1, "H5BugMeDevApp onStop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
