.class public Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
.super Lcom/alipay/mobile/h5container/service/H5Service;
.source "H5ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ServiceImpl"


# instance fields
.field public iApplicationInstaller:Linm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/H5Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/util/HashMap;Lioa;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Lioa;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->sendPushMsg(Ljava/util/HashMap;Lioa;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->clearWork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Lioa;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lioa;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->clearWorkSync(Ljava/lang/String;Lioa;)V

    return-void
.end method

.method private clearWork(Ljava/lang/String;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 636
    .line 637
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 638
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 639
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->clearServiceWorker(Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string/jumbo v1, "H5ServiceImpl"

    const-string/jumbo v2, "clearWork provider == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearWorkSync(Ljava/lang/String;Lioa;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;
    .param p2, "h5CallBack"    # Lioa;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 647
    .line 648
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 649
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 650
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    if-eqz v0, :cond_0

    .line 651
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->clearServiceWorkerSync(Ljava/lang/String;Lioa;)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    const-string/jumbo v1, "H5ServiceImpl"

    const-string/jumbo v2, "clearWorkSync provider == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPushMsg(Ljava/util/HashMap;Lioa;)V
    .locals 3
    .param p2, "h5CallBack"    # Lioa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lioa;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 562
    .line 563
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 564
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 565
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    if-eqz v0, :cond_1

    .line 566
    if-nez p2, :cond_0

    .line 567
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V

    .line 574
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->sendServiceWorkerPushMessage(Ljava/util/HashMap;Lioa;)V

    goto :goto_0

    .line 572
    :cond_1
    const-string/jumbo v1, "H5ServiceImpl"

    const-string/jumbo v2, "sendServiceWorkerPushMessage provider == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCommonCreatePage(Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Linz;)Linz;
    .locals 6
    .param p1, "h5Context"    # Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    .param p2, "bundle"    # Linz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    if-nez p2, :cond_0

    .line 302
    new-instance p2, Linz;

    .end local p2    # "bundle":Linz;
    invoke-direct {p2}, Linz;-><init>()V

    .line 305
    .restart local p2    # "bundle":Linz;
    :cond_0
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 306
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4043
    iput-object v3, p2, Linz;->b:Landroid/os/Bundle;

    .line 309
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->getMicroApplication(Lcom/alipay/mobile/h5container/api/H5Context;)Linn;

    move-result-object v0

    .line 310
    .local v0, "app":Linn;
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Linn;)V

    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "appId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {v0}, Linn;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 315
    :cond_2
    const-string/jumbo v3, "H5ServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createPage appId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;

    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V

    .line 317
    .local v2, "listener":Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
    invoke-virtual {p2, v2}, Linz;->a(Liom;)V

    .line 318
    return-object p2
.end method

.method private setInitScene()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 171
    sget-wide v2, Lior;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    .local v0, "time":J
    sget-boolean v2, Liog;->a:Z

    if-nez v2, :cond_1

    .line 176
    invoke-static {v0, v1, v6}, Lior;->a(JI)V

    .line 182
    :goto_1
    sput-boolean v6, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    goto :goto_0

    .line 177
    :cond_1
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    if-nez v2, :cond_2

    .line 178
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lior;->a(JI)V

    goto :goto_1

    .line 180
    :cond_2
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lior;->a(JI)V

    goto :goto_1
.end method


# virtual methods
.method public H5IApplicationInstaller()Linm;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->iApplicationInstaller:Linm;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->iApplicationInstaller:Linm;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->iApplicationInstaller:Linm;

    return-object v0
.end method

.method public addEmbedViewConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V
    .locals 1
    .param p1, "h5EmbedViewConfig"    # Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    .prologue
    .line 339
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->addTypeConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V

    .line 340
    return-void
.end method

.method public addEmbedViewConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->addTypeConfigs(Ljava/util/List;)V

    .line 345
    return-void
.end method

.method public addH5PluginConfigList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5PluginConfig;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->addH5PluginConfigList(Ljava/util/List;)V

    .line 335
    return-void
.end method

.method public addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .prologue
    .line 328
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->addConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V

    .line 329
    return-void
.end method

.method public clearServiceWorker(Ljava/lang/String;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 579
    :try_start_0
    sget-boolean v1, Liog;->a:Z

    if-nez v1, :cond_0

    .line 580
    const-string/jumbo v1, "H5ServiceImpl"

    const-string/jumbo v2, "clearServiceWorker !H5Flag.ucReady"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string/jumbo v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 603
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->clearWork(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5ServiceImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearServiceWorkerSync(Ljava/lang/String;Lioa;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;
    .param p2, "h5CallBack"    # Lioa;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 608
    :try_start_0
    sget-boolean v1, Liog;->a:Z

    if-nez v1, :cond_0

    .line 609
    const-string/jumbo v1, "H5ServiceImpl"

    const-string/jumbo v2, "clearServiceWorkerSync !H5Flag.ucReady"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string/jumbo v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Lioa;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 632
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->clearWorkSync(Ljava/lang/String;Lioa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5ServiceImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createPage(Landroid/app/Activity;Linz;)Liop;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Linz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    const-string/jumbo v1, "H5ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createPage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "createPageSence"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 274
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 275
    const-string/jumbo v1, "pageLoad|createPagePoint"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->setInitScene()V

    .line 278
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->setCommonCreatePage(Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Linz;)Linz;

    move-result-object p2

    .line 280
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->createPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Liop;

    move-result-object v1

    return-object v1
.end method

.method public createPageAsync(Landroid/app/Activity;Linz;Liot;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Linz;
    .param p3, "h5PageReadyListener"    # Liot;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    const-string/jumbo v1, "H5ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createPageAsync "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "createPageSence"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 291
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 292
    const-string/jumbo v1, "pageLoad|createPageAsyncPoint"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->setInitScene()V

    .line 295
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->setCommonCreatePage(Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Linz;)Linz;

    move-result-object p2

    .line 297
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->createPageAsync(Lcom/alipay/mobile/h5container/api/H5Context;Linz;Liot;)V

    .line 298
    return-void
.end method

.method public createPlugin(Ljava/lang/String;Liop;Liow;)Liov;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "h5Page"    # Liop;
    .param p3, "h5PluginManager"    # Liow;

    .prologue
    .line 494
    const-string/jumbo v0, "page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;-><init>()V

    invoke-interface {p3, v0}, Liow;->register(Liov;)Z

    .line 496
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;-><init>()V

    invoke-interface {p3, v0}, Liow;->register(Liov;)Z

    .line 497
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;-><init>()V

    invoke-interface {p3, v0}, Liow;->register(Liov;)Z

    .line 498
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;-><init>()V

    invoke-interface {p3, v0}, Liow;->register(Liov;)Z

    .line 499
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;-><init>()V

    invoke-interface {p3, v0}, Liow;->register(Liov;)Z

    .line 500
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;-><init>(Liop;)V

    invoke-interface {p3, v0}, Liow;->register(Liov;)Z

    .line 501
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;-><init>()V

    invoke-interface {p3, v0}, Liow;->register(Liov;)Z

    .line 503
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Liow;)Liov;

    move-result-object v0

    return-object v0
.end method

.method public createPlugin(Ljava/lang/String;Liow;)Liov;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "h5PluginManager"    # Liow;

    .prologue
    .line 484
    const-string/jumbo v0, "page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;-><init>()V

    invoke-interface {p2, v0}, Liow;->register(Liov;)Z

    .line 486
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;-><init>()V

    invoke-interface {p2, v0}, Liow;->register(Liov;)Z

    .line 487
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;-><init>()V

    invoke-interface {p2, v0}, Liow;->register(Liov;)Z

    .line 489
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Liow;)Liov;

    move-result-object v0

    return-object v0
.end method

.method public createPluginManager(Liob;)Liow;
    .locals 1
    .param p1, "h5CoreNode"    # Liob;

    .prologue
    .line 509
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;-><init>(Liob;)V

    return-object v0
.end method

.method public generatePackInfoReq(Ljava/util/List;)Liqk;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Liqk;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 745
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v7, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 746
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "not invoke on ui thread!!!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 749
    :cond_0
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 750
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 751
    .local v1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    if-eqz v3, :cond_1

    .line 752
    const-string/jumbo v7, "NO"

    iput-object v7, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 753
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 754
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 755
    invoke-virtual {v7, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 756
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v7

    .line 753
    invoke-interface {v3, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->makeAppReq(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v1

    .line 759
    :cond_1
    if-nez v1, :cond_2

    .line 760
    const-string/jumbo v7, "H5ServiceImpl"

    const-string/jumbo v8, "appReq == null "

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .end local v1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 765
    .restart local v1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 766
    .local v5, "queryJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 767
    .local v0, "appId":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 768
    .local v2, "entryJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "app_id"

    invoke-virtual {v2, v8, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string/jumbo v6, ""

    .line 770
    .local v6, "walletVersion":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 771
    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 773
    :cond_3
    const-string/jumbo v8, "version"

    invoke-virtual {v2, v8, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-virtual {v5, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 777
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "entryJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "walletVersion":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 778
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    .line 781
    :cond_5
    const-string/jumbo v7, "H5ServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "appReq.query : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getPkgReqFromAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Liqk;

    move-result-object v4

    .line 783
    .local v4, "packInfoReq":Liqk;
    return-object v4
.end method

.method public getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    return-object v0
.end method

.method public getH5GlobalDegradePkg(Ljava/lang/String;)[B
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 796
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getContent(Ljava/lang/String;)[B

    move-result-object v0

    .line 797
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 800
    .end local v0    # "bytes":[B
    :goto_0
    return-object v0

    .restart local v0    # "bytes":[B
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContent(Ljava/lang/String;Z)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getH5PageByViewId(I)Liop;
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 416
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getH5PageByViewId(I)Liop;

    move-result-object v0

    return-object v0
.end method

.method public getItsOwnNode()Liob;
    .locals 1

    .prologue
    .line 478
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    return-object v0
.end method

.method public getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    move-result-object v0

    return-object v0
.end method

.method public getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    move-result-object v0

    return-object v0
.end method

.method public getPluginManager()Liow;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Liow;

    move-result-object v0

    return-object v0
.end method

.method public getProcessH5Activity()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    return-object v0
.end method

.method public getProcessH5TransActivity()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class;

    return-object v0
.end method

.method public getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByWorkerId(Ljava/lang/String;)Lipc;
    .locals 1
    .param p1, "workerId"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessionByWorkerId(Ljava/lang/String;)Lipc;

    move-result-object v0

    return-object v0
.end method

.method public getSessions()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lipc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method public getSharedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lioc;

    move-result-object v0

    .line 127
    .local v0, "h5DataProvider":Lioc;
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Lioc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopH5BaseFragment()Linw;
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5BaseFragment()Linw;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5BaseFragmentByViewId(I)Linw;
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 441
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5BaseFragmentByViewId(I)Linw;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Linw;
    .locals 1
    .param p1, "workerId"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Linw;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5Fragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5Fragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5Page()Liop;
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5Page()Liop;

    move-result-object v0

    return-object v0
.end method

.method public getTopSession()Lipc;
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v0

    return-object v0
.end method

.method public getUcInitTask()Ljava/lang/Runnable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 805
    new-instance v0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    const/4 v1, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;-><init>(ZLandroid/os/Bundle;)V

    return-object v0
.end method

.method public getWebDriverHelper()Liph;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Liph;

    move-result-object v0

    return-object v0
.end method

.method public initServicePlugin()V
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->initServicePlugin()V

    .line 468
    return-void
.end method

.method public isAliDomain(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->isAliDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    const-string/jumbo v1, "H5ServiceImpl"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5TaskScheduleProviderImpl;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/wallet/H5TaskScheduleProviderImpl;-><init>()V

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->setH5TaskScheduleProvider(Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    .line 103
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v2

    .line 102
    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->onCreate(Landroid/content/Context;)V

    .line 105
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5Engine;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5Engine;-><init>()V

    .line 106
    .local v0, "engine":Lcom/alipay/mobile/nebulacore/wallet/H5Engine;
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v1

    const-string/jumbo v2, "H5App"

    .line 1131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "engineType can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1134
    :cond_0
    if-nez v0, :cond_1

    .line 1135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "engine can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1137
    :cond_1
    iget-object v1, v1, Lcom/alipay/mobile/framework/c;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const-string/jumbo v0, "H5ServiceImpl"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public parseRNPkg(Ljava/lang/String;)I
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->parseRNPkg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public permitLocation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->permitLocation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public preLoadInTinyProcess()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method public prepareApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "process"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .prologue
    .line 401
    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->updateApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    .line 402
    return-void
.end method

.method public prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5UpdateAppCallback"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .prologue
    .line 456
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    .line 457
    return-void
.end method

.method public removeSharedData(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lioc;

    move-result-object v0

    .line 136
    .local v0, "h5DataProvider":Lioc;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p1}, Lioc;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :cond_0
    return-void
.end method

.method public savePackJson(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 724
    const-string/jumbo v3, "H5ServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "savePackJson "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "not invoke on ui thread!!!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 731
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 732
    .local v1, "h5AppBizRpcProvider":Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;
    if-eqz v1, :cond_1

    .line 733
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;->handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    move-result-object v0

    .line 734
    .local v0, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v2

    .line 735
    .local v2, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v2, :cond_1

    .line 736
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V

    .line 740
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v1    # "h5AppBizRpcProvider":Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;
    .end local v2    # "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    :cond_1
    return-void
.end method

.method public sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 143
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    return v0
.end method

.method public sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->sendServiceWorkerPushMessage(Ljava/util/HashMap;Lioa;)V

    .line 535
    return-void
.end method

.method public sendServiceWorkerPushMessage(Ljava/util/HashMap;Lioa;)V
    .locals 2
    .param p2, "h5CallBack"    # Lioa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lioa;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 539
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Liog;->a:Z

    if-nez v0, :cond_0

    .line 540
    const-string/jumbo v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/util/HashMap;Lioa;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->sendPushMsg(Ljava/util/HashMap;Lioa;)V

    goto :goto_0
.end method

.method public sendToWebFromMainProcess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 674
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 708
    return-void
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lioc;

    move-result-object v0

    .line 118
    .local v0, "h5DataProvider":Lioc;
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1, p2}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setWebDriverHelper(Liph;)V
    .locals 1
    .param p1, "helper"    # Liph;

    .prologue
    .line 148
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->setWebDriverHelper(Liph;)V

    .line 149
    return-void
.end method

.method public startPage(Linn;Linz;)V
    .locals 17
    .param p1, "app"    # Linn;
    .param p2, "bundle"    # Linz;

    .prologue
    .line 188
    sget-boolean v4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 189
    const-string/jumbo v4, "pageLoad|startPagePoint"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->setInitScene()V

    .line 194
    if-nez p2, :cond_2

    .line 195
    const-string/jumbo v4, "H5ServiceImpl"

    const-string/jumbo v5, "invalid start page parameters!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    invoke-virtual/range {p2 .. p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v14

    .line 199
    .local v14, "params":Landroid/os/Bundle;
    if-nez v14, :cond_3

    .line 200
    new-instance v14, Landroid/os/Bundle;

    .end local v14    # "params":Landroid/os/Bundle;
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 3043
    .restart local v14    # "params":Landroid/os/Bundle;
    move-object/from16 v0, p2

    iput-object v14, v0, Linz;->b:Landroid/os/Bundle;

    .line 204
    :cond_3
    const-string/jumbo v4, "createPageSence"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v4, "url"

    invoke-static {v14, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    const-string/jumbo v4, "u"

    invoke-static {v14, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_4
    const/4 v4, 0x0

    const-string/jumbo v5, "startPage"

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 212
    const-string/jumbo v4, "H5ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "stripLandingURL&Deeplink url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bingo deeplink"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_5
    const-string/jumbo v4, "startAppNormal"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "realUrl":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 219
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 220
    .local v11, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v11, :cond_6

    .line 221
    const/4 v4, 0x0

    const-string/jumbo v5, "startPage"

    invoke-interface {v11, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 222
    .local v15, "result":Z
    const/4 v4, 0x1

    const-string/jumbo v5, "startAppNormal"

    const-string/jumbo v6, "appId"

    .line 223
    invoke-static {v14, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "publicId"

    invoke-static {v14, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "bizScenario"

    .line 224
    invoke-static {v14, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 222
    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz v15, :cond_6

    .line 226
    const-string/jumbo v4, "H5ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "stripLandingURL&Deeplink url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bingo deeplink in landing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .end local v3    # "realUrl":Ljava/lang/String;
    .end local v11    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v15    # "result":Z
    :cond_6
    const/4 v9, 0x0

    .line 234
    .local v9, "appId":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 235
    invoke-virtual/range {p1 .. p1}, Linn;->getAppId()Ljava/lang/String;

    move-result-object v9

    .line 237
    :cond_7
    const-string/jumbo v4, "H5ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startPage appId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    const-string/jumbo v4, "H5ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "in H5ServiceImpl, startParams is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    new-instance v13, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V

    .line 246
    .local v13, "listener":Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Linz;->a(Liom;)V

    .line 248
    new-instance v10, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    const/4 v4, 0x0

    invoke-direct {v10, v4}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 249
    .local v10, "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Linn;)V

    .line 251
    const-string/jumbo v4, "H5ServiceImpl"

    const-string/jumbo v5, "startPage execute runnable"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v4, "URGENT_DISPLAY"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v10, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Linz;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 259
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 261
    .local v12, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v12, :cond_1

    .line 262
    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->preConnectSpdy()V

    goto/16 :goto_0

    .line 241
    .end local v10    # "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    .end local v12    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v13    # "listener":Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
    :catch_0
    move-exception v16

    .line 242
    .local v16, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5ServiceImpl"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startPageFromActivity(Landroid/app/Activity;Linz;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5Bundle"    # Linz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 712
    const-string/jumbo v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/app/Activity;Linz;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 720
    return-void
.end method

.method public startWebActivity(Linn;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "app"    # Linn;
    .param p2, "param"    # Landroid/os/Bundle;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startWebActivity(Linn;Landroid/os/Bundle;Ljava/util/List;)V

    .line 159
    return-void
.end method

.method public startWebActivity(Linn;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1
    .param p1, "app"    # Linn;
    .param p2, "param"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linn;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, "arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Linz;

    invoke-direct {v0}, Linz;-><init>()V

    .line 163
    .local v0, "bundle":Linz;
    if-nez p2, :cond_0

    .line 164
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "param":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2043
    .restart local p2    # "param":Landroid/os/Bundle;
    :cond_0
    iput-object p2, v0, Linz;->b:Landroid/os/Bundle;

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startPage(Linn;Linz;)V

    .line 168
    return-void
.end method

.method public ucIsReady(Lipf;)V
    .locals 1
    .param p1, "h5UcReadyCallBack"    # Lipf;

    .prologue
    .line 406
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->ucIsReady(Lipf;)V

    .line 407
    return-void
.end method
