.class public Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;
.super Ljava/lang/Object;
.source "BirdNestManager.java"


# static fields
.field private static mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 1
    .param p0, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 12
    sget-object v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Lcom/alipay/android/app/render/api/RenderEnv;->isWallet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->getWalletService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    .line 19
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    return-object v0

    .line 16
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->getSDKService(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    goto :goto_0
.end method

.method private static getSDKService(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 6
    .param p0, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 25
    .local v2, "service":Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    :try_start_0
    const-string/jumbo v3, "com.alipay.android.app.render.birdnest.service.impl.BirdNestSDKService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    invoke-virtual {v2, p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->initialize(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    .line 31
    return-object v2

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "render"

    const-string/jumbo v5, "BirdNestSDKServiceEx"

    invoke-virtual {v3, v4, v5, v1}, Lcom/alipay/android/app/render/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getWalletService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 6

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 37
    .local v2, "service":Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    :try_start_0
    const-string/jumbo v3, "com.alipay.android.app.render.birdnest.service.impl.BirdNestWalletService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v2

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "render"

    const-string/jumbo v5, "BirdNestWalletServiceEx"

    invoke-virtual {v3, v4, v5, v1}, Lcom/alipay/android/app/render/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
