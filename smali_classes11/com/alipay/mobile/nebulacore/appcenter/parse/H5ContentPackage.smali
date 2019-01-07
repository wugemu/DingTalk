.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "H5ContentPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;,
        Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$ParseRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_PREPARE_WAIT_MS:I = 0x1388

.field private static final RETRY_LIMIT:I = 0x3


# instance fields
.field private TAG:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field private appVersion:Ljava/lang/String;

.field private canDegrade:Z

.field private conditionVariable:Landroid/os/ConditionVariable;

.field public currentUseVersion:Ljava/lang/String;

.field private fallbackReason:Ljava/lang/String;

.field private h5AppUrlMapProvider:Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

.field private hasHandleSessionTabData:Z

.field private installReceiver:Landroid/content/BroadcastReceiver;

.field private isReleased:Z

.field public isResPackage:Z

.field private isResourceApp:Z

.field private params:Landroid/os/Bundle;

.field private parseLatch:Ljava/util/concurrent/CountDownLatch;

.field private preload:Z

.field private retryCount:I

.field private tarPath:Ljava/lang/String;

.field private unAvailableReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Z)V
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "isResPackage"    # Z

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    const-string/jumbo v0, "H5ContentPackage"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->hasHandleSessionTabData:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->installReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->canDegrade:Z

    .line 100
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isReleased:Z

    .line 106
    iput v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->retryCount:I

    .line 107
    const-string/jumbo v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 110
    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResourceApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResourceApp:Z

    .line 112
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h5AppUrlMapProvider:Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareForTinyResApp()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareForDegrade(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->sendPreLoadAppx()V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;ZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->handleSessionTabData(ZLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->tarPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->unregisterInstallReceiver()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->hotUpdateApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isReleased:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareNotInstalledApp(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->preload:Z

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->closeWait(J)V

    return-void
.end method

.method private closeWait(J)V
    .locals 7
    .param p1, "startTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 592
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 600
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseLatch block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 606
    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    .line 607
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "conditionVariable block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_1
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private countDownLatch()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 681
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 690
    :cond_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private downloadContentForAppCenter()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-eqz v0, :cond_0

    .line 381
    iget v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->retryCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "abort retry to download app."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->retryCount:I

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "downloadContentForAppCenter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->registerInstallReceiver()V

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableUseDegrade()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->canDegrade:Z

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableResDegrade()Z

    move-result v0

    goto :goto_0
.end method

.method private getHighestVersionFromDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 337
    .local v0, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private declared-synchronized handleSessionTabData(ZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 11
    .param p1, "isReady"    # Z
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "sid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->hasHandleSessionTabData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 678
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 616
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->hasHandleSessionTabData:Z

    .line 617
    const/4 v6, 0x0

    .line 619
    .local v6, "tabDataStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "##tabbar## handleSessionTabData isH5GlobalPackage "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", isReady "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-boolean v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-nez v8, :cond_0

    .line 625
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "sessionId"

    invoke-static {p2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, "sessionId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v3

    .line 627
    .local v3, "h5Session":Lipc;
    instance-of v8, v3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v8, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object v8, v0

    .line 628
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 632
    if-nez p1, :cond_6

    .line 634
    const-string/jumbo v8, "cdnBaseUrl"

    invoke-static {p2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "cdnHost":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 636
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "cdn url empty!"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 639
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "tabBar.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "finalUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "##tabbar## handleSessionTabData !isReady fallback final url "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    move-object v6, v2

    .line 645
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "##tabbar## handleSessionTabData !isReady tabDataStr "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 648
    const-string/jumbo v6, "stupid"

    .line 650
    :cond_4
    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 651
    .end local v3    # "h5Session":Lipc;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->setData(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    move-result-object v4

    .line 652
    .local v4, "listener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "##tabbar## handleSessionTabData !isReady listener "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    if-eqz v4, :cond_0

    .line 655
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "##tabbar## handleSessionTabData !isReady onDataParsed"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-interface {v4, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;->onDataParsed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 613
    .end local v1    # "cdnHost":Ljava/lang/String;
    .end local v2    # "finalUrl":Ljava/lang/String;
    .end local v4    # "listener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    .end local v5    # "sessionId":Ljava/lang/String;
    .end local v6    # "tabDataStr":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v6    # "tabDataStr":Ljava/lang/String;
    :cond_5
    move-object v5, p3

    .line 625
    goto/16 :goto_1

    .line 659
    .restart local v3    # "h5Session":Lipc;
    .restart local v5    # "sessionId":Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getTabDataByAppId(Ljava/lang/String;)[B

    move-result-object v7

    .line 660
    .local v7, "tabbarJSON":[B
    if-eqz v7, :cond_7

    .line 661
    new-instance v6, Ljava/lang/String;

    .end local v6    # "tabDataStr":Ljava/lang/String;
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 663
    .restart local v6    # "tabDataStr":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "##tabbar## handleSessionTabData isReady tabBarData "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 666
    const-string/jumbo v6, "stupid"

    .line 668
    :cond_8
    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 669
    .end local v3    # "h5Session":Lipc;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->setData(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    move-result-object v4

    .line 670
    .restart local v4    # "listener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "##tabbar## handleSessionTabData isReady listener "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    if-eqz v4, :cond_0

    .line 673
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "##tabbar## handleSessionTabData isReady onDataParsed"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-interface {v4, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;->onDataParsed(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private hotUpdateApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "hotVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 400
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to get app provider!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "hotUpdateApp hotVersion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " appVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-nez v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 414
    .local v1, "isInstalled":Z
    if-eqz v1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "installedPath":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseContent(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method private isResourceApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 750
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v0, :cond_1

    .line 751
    :cond_0
    const/4 v0, 0x0

    .line 753
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isResourceApp(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private parseContent(ZLjava/lang/String;Z)V
    .locals 16
    .param p1, "hotUpdate"    # Z
    .param p2, "installedPath"    # Ljava/lang/String;
    .param p3, "needInstall"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    const-string/jumbo v6, "sessionId"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, "sessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "parseContent appId:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " sessionId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " installPath:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v4, :cond_1

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to get app provider!"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const/4 v11, 0x0

    .line 437
    .local v11, "offlineHost":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file://"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 439
    const-string/jumbo v4, "/"

    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 444
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 445
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 446
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_3

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".tar"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->tarPath:Ljava/lang/String;

    .line 449
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    const-string/jumbo v6, "offlineHost"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    const-string/jumbo v6, "offlineHost"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 452
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    const-string/jumbo v6, "offlineHost"

    invoke-virtual {v4, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 457
    .local v8, "startTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    if-nez v4, :cond_6

    if-nez p1, :cond_6

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v4, :cond_6

    .line 461
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 467
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/Nebula;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 469
    .local v7, "copyBundle":Landroid/os/Bundle;
    new-instance v3, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;

    move-object/from16 v4, p0

    move/from16 v6, p3

    move/from16 v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;ZLandroid/os/Bundle;JZ)V

    .line 575
    .local v3, "runnable":Ljava/lang/Runnable;
    const-string/jumbo v4, "URGENT_DISPLAY"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    if-eqz v4, :cond_0

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    const-wide/16 v14, 0x1388

    invoke-virtual {v4, v14, v15}, Landroid/os/ConditionVariable;->block(J)Z

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "prepareContent block "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " ms"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 585
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v7    # "copyBundle":Landroid/os/Bundle;
    .end local v8    # "startTime":J
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private prepareForDegrade(Z)V
    .locals 6
    .param p1, "isAvailable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v3, :cond_0

    .line 223
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, "degradeStart":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->prepareContent(Ljava/lang/String;)Z

    move-result v2

    .line 228
    .local v2, "haveDegradePkg":Z
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[prepareForDegrade] haveDegradePkg: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->closeWait(J)V

    .line 231
    if-eqz v2, :cond_1

    .line 232
    const-string/jumbo v3, "IO"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareNotInstalledApp(Z)V

    goto :goto_0
.end method

.method private prepareForTinyResApp()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 262
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 265
    .local v2, "time":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->prepareContent(Ljava/lang/String;)Z

    .line 266
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->closeWait(J)V

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "66666692 tinyResApp prepareContent cost "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->preload:Z

    if-eqz v1, :cond_2

    .line 270
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->sendPreLoadAppx()V

    .line 274
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "lite1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "66666692 tinyResApp in preLoadLite1 not prepare"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v0    # "processName":Ljava/lang/String;
    :goto_0
    return-void

    .line 282
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v4, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$4;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$4;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    const-wide/16 v6, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private prepareNotInstalledApp(Z)V
    .locals 8
    .param p1, "isAvailable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, "time":J
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    new-instance v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;

    invoke-direct {v5, p0, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;)V

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 318
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prepareNotInstalledApp cost "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 308
    :cond_0
    if-eqz p1, :cond_1

    .line 309
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v1, v4, v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseContent(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 311
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notDownload_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 313
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->unAvailableReason:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->unAvailableReason:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    new-instance v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;

    invoke-direct {v5, p0, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;)V

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    goto :goto_0

    .line 313
    :cond_2
    const-string/jumbo v1, "7"

    goto :goto_1
.end method

.method private declared-synchronized registerInstallReceiver()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->installReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 815
    :goto_0
    monitor-exit p0

    return-void

    .line 781
    :cond_0
    :try_start_1
    new-instance v3, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->installReceiver:Landroid/content/BroadcastReceiver;

    .line 808
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 810
    .local v2, "manager":Ldq;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 811
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.alipay.mobile.android.h5app.installstatus"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerInstallReceiver \uff1aappId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->installReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 778
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "manager":Ldq;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private sendPreLoadAppx()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 294
    .local v2, "manager":Ldq;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendPreLoadAppx "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , appVersion is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v3, "appx_preload_success"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 298
    return-void
.end method

.method private setTinyAppFallBackData()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-nez v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    const-string/jumbo v4, "isTinyApp"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 347
    .local v2, "tinyApp":Z
    if-eqz v2, :cond_1

    .line 348
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->removeApiPermission(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 349
    .local v0, "apiByte":[B
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->removeAppConfigByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 351
    .local v1, "configByte":[B
    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 353
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->put(Ljava/lang/String;[B)V

    .line 357
    :cond_0
    if-eqz v1, :cond_1

    .line 358
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->put(Ljava/lang/String;[B)V

    .line 362
    .end local v0    # "apiByte":[B
    .end local v1    # "configByte":[B
    .end local v2    # "tinyApp":Z
    :cond_1
    return-void
.end method

.method private declared-synchronized unregisterInstallReceiver()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->installReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 819
    const/4 v2, 0x0

    .line 826
    :goto_0
    monitor-exit p0

    return v2

    .line 821
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " unregisterInstallReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 823
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 824
    .local v1, "manager":Ldq;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->installReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 825
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->installReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    const/4 v2, 0x1

    goto :goto_0

    .line 818
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "manager":Ldq;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public get(Ljava/lang/String;)[B
    .locals 14
    .param p1, "pureUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 697
    .local v10, "time":J
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "begin wait for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 701
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v10

    .line 702
    .local v12, "waitTime":J
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wait parse elapse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-wide/16 v2, 0xbb8

    cmp-long v1, v12, v2

    if-ltz v1, :cond_1

    .line 704
    const-string/jumbo v1, "wait_appParse_timeout"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    .line 706
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->countDownLatch()V

    .line 710
    .end local v10    # "time":J
    .end local v12    # "waitTime":J
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h5AppUrlMapProvider:Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    if-eqz v1, :cond_2

    .line 711
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h5AppUrlMapProvider:Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v1, p1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;->mapUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 713
    :cond_2
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 714
    .local v6, "content":[B
    if-nez v6, :cond_3

    const-string/jumbo v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "no"

    const-string/jumbo v2, "h5_match_httpRes"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 716
    move-object v8, p1

    .local v8, "fixUrl":Ljava/lang/String;
    const-string/jumbo v1, "http://"

    const-string/jumbo v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 717
    invoke-super {p0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "content":[B
    check-cast v6, [B

    .line 718
    .restart local v6    # "content":[B
    if-eqz v6, :cond_3

    .line 719
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    .line 720
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_3

    .line 721
    const-string/jumbo v1, "h5_match_httpRes"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v8    # "fixUrl":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_5

    .line 728
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->enableResHttpCache()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResourceApp:Z

    if-eqz v1, :cond_4

    .line 730
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v1

    invoke-virtual {v1, p1, v6}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->add(Ljava/lang/String;[B)V

    move-object v6, v9

    .line 746
    .end local v6    # "content":[B
    :cond_4
    :goto_0
    return-object v6

    .line 734
    .restart local v6    # "content":[B
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 735
    const-string/jumbo v1, "notMatch"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    .end local v6    # "content":[B
    :catch_0
    move-exception v7

    .line 741
    .local v7, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "latch exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    .line 743
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->countDownLatch()V

    move-object v6, v9

    .line 746
    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUnAvailableReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->unAvailableReason:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public prepareContent(Z)V
    .locals 8
    .param p1, "needLock"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v5, :cond_0

    .line 126
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to get app provider!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "prepareContent with lock!"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->conditionVariable:Landroid/os/ConditionVariable;

    .line 135
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    const-string/jumbo v6, "appVersion"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    .line 136
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->enableUseDegrade()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getHighestVersionFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    .line 144
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->refreshLogTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    .line 148
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x1

    .line 152
    .local v3, "versionChanged":Z
    :goto_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 153
    .local v1, "installed":Z
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "prepareContent appId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " appVersion "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " canDegrade:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->canDegrade:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " installed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " currentUseVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 164
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "!versionChanged return"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "installed":Z
    .end local v3    # "versionChanged":Z
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    move v3, v4

    .line 149
    goto :goto_2

    .line 169
    .restart local v1    # "installed":Z
    .restart local v3    # "versionChanged":Z
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getH5ContentPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v0

    .line 170
    .local v0, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-eqz v0, :cond_6

    .line 171
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "H5GlobalDegradePkg contain "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 174
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "H5GlobalDegradePkg contain contain this version not parse"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_6
    if-nez v1, :cond_a

    .line 180
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 182
    .local v2, "isAvailable":Z
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handle not installed. amr available: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->params:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->handleSessionTabData(ZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->setTinyAppFallBackData()V

    .line 187
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 189
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->downloadContentForAppCenter()V

    .line 190
    const-string/jumbo v4, "isNotNebulaApp"

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->fallbackReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 193
    :cond_7
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyResAppId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "h5_use_preset_tinyCommonRes"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 194
    const-string/jumbo v4, "URGENT_DISPLAY"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 204
    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->enableUseDegrade()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 205
    const-string/jumbo v4, "URGENT_DISPLAY"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$2;

    invoke-direct {v5, p0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$2;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 214
    :cond_9
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareNotInstalledApp(Z)V

    goto/16 :goto_0

    .line 217
    .end local v2    # "isAvailable":Z
    :cond_a
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseContent(ZLjava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public refreshLogTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v0, "H5ContentPackage_res_"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    .line 252
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    .line 253
    return-void

    .line 250
    :cond_0
    const-string/jumbo v0, "H5ContentPackage_"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method public releaseContent()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "releaseContent appId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isReleased:Z

    .line 368
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->countDownLatch()V

    .line 369
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->clear()V

    .line 370
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->unregisterInstallReceiver()Z

    .line 371
    return-void
.end method

.method public setCanDegrade(Z)V
    .locals 0
    .param p1, "degrade"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->canDegrade:Z

    .line 323
    return-void
.end method

.method public setPreload(Z)V
    .locals 0
    .param p1, "preload"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->preload:Z

    .line 117
    return-void
.end method
