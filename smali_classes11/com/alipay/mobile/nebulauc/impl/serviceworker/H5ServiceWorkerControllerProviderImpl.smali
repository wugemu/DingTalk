.class public Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;
.super Ljava/lang/Object;
.source "H5ServiceWorkerControllerProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;


# static fields
.field private static final TIMEOUT:I = 0x7d0

.field private static apiList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final kylinBridge:Ljava/lang/String; = "https://alipay.kylinBridge"

.field private static final viewId:Ljava/lang/String; = "viewId"


# instance fields
.field private TAG:Ljava/lang/String;

.field private isFirstJsApi:Z

.field private syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "getSystemInfo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "remoteLog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "httpRequest"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "reportData"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "getAuthCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "setTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "getTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "removeTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "trackerConfig"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "reportData"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "configService.getConfig"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "getAuthUserInfo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    const-string/jumbo v1, "localLog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "H5ServiceWorkerControllerProviderImpl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFirstJsApi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;ILjava/lang/String;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTargetH5Page(ILjava/lang/String;)Liop;

    move-result-object v0

    return-object v0
.end method

.method private static enableAsync()Z
    .locals 3

    .prologue
    .line 531
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 532
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 533
    const-string/jumbo v2, "h5_enableSWAsync"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    const/4 v2, 0x0

    .line 538
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private enableWorkSession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x0

    .line 364
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDftSyncJsApiArray()Lcom/alibaba/fastjson/JSONArray;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "getSystemInfo"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "setAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "getAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "removeAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "clearAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "setTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "getTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "removeTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "clearTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "getTinyLocalStorageInfo"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "getStartupParams"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "internalAPI"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->syncJsonArray:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method private getHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->apiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->enableAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Lioe;->a()Landroid/os/Handler;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 525
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->uiHandler:Landroid/os/Handler;

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->uiHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getNotDevSession()Lipc;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 325
    const-class v6, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 326
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_2

    .line 328
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v4

    .line 329
    .local v4, "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    if-eqz v4, :cond_2

    .line 330
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 332
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 333
    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lipc;

    .line 334
    .local v3, "session":Lipc;
    if-eqz v3, :cond_0

    .line 335
    invoke-interface {v3}, Lipc;->getId()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sessionId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isDevSession(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    monitor-exit v4

    .line 348
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "session":Lipc;
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :goto_1
    return-object v3

    .line 332
    .restart local v2    # "index":I
    .restart local v3    # "session":Lipc;
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 342
    .end local v3    # "session":Lipc;
    :cond_1
    monitor-exit v4

    .line 348
    .end local v2    # "index":I
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 342
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catch_0
    move-exception v5

    .line 345
    .local v5, "throwable":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private getTargetH5Page(ILjava/lang/String;)Liop;
    .locals 6
    .param p1, "id"    # I
    .param p2, "workerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 399
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 400
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getH5page viewId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " workerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-eqz v2, :cond_7

    .line 402
    const-class v4, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;

    monitor-enter v4

    .line 403
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 404
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 406
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Linw;

    move-result-object v0

    .line 407
    .local v0, "h5BaseFragment":Linw;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 408
    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v1

    monitor-exit v4

    .line 440
    .end local v0    # "h5BaseFragment":Linw;
    :goto_0
    return-object v1

    .line 410
    .restart local v0    # "h5BaseFragment":Linw;
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "fatal error h5Page == null #1"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    .line 412
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "not send work to web-view"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTopServiceWorkPage()Liop;

    move-result-object v1

    .end local v1    # "h5Page":Liop;
    monitor-exit v4

    goto :goto_0

    .line 436
    .end local v0    # "h5BaseFragment":Linw;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 416
    .restart local v0    # "h5BaseFragment":Linw;
    .restart local v1    # "h5Page":Liop;
    :cond_2
    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 420
    .end local v0    # "h5BaseFragment":Linw;
    .end local v1    # "h5Page":Liop;
    :cond_3
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragmentByViewId(I)Linw;

    move-result-object v0

    .line 421
    .restart local v0    # "h5BaseFragment":Linw;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 422
    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v1

    monitor-exit v4

    goto :goto_0

    .line 424
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "fatal error h5Page == null #2"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v0    # "h5BaseFragment":Linw;
    :goto_1
    monitor-exit v4

    .line 440
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 429
    :cond_5
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Linw;

    move-result-object v3

    invoke-interface {v3}, Linw;->getH5Page()Liop;

    move-result-object v1

    .line 430
    .restart local v1    # "h5Page":Liop;
    if-eqz v1, :cond_6

    .line 431
    monitor-exit v4

    goto :goto_0

    .line 433
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "fatal error h5Page == null #3"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 438
    .end local v1    # "h5Page":Liop;
    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "fatal error h5Service==null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getTopServiceWorkPage()Liop;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 373
    const-class v6, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 374
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_2

    .line 376
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v4

    .line 377
    .local v4, "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    if-eqz v4, :cond_2

    .line 378
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 380
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 381
    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lipc;

    .line 382
    .local v3, "session":Lipc;
    if-eqz v3, :cond_0

    .line 383
    invoke-interface {v3}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 385
    invoke-interface {v3}, Lipc;->getTopPage()Liop;

    move-result-object v6

    monitor-exit v4

    .line 395
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "session":Lipc;
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :goto_1
    return-object v6

    .line 380
    .restart local v2    # "index":I
    .restart local v3    # "session":Lipc;
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 389
    .end local v3    # "session":Lipc;
    :cond_1
    monitor-exit v4

    .line 395
    .end local v2    # "index":I
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_2
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 389
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catch_0
    move-exception v5

    .line 392
    .local v5, "throwable":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private getWorkResponse(Lipc;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "workSession"    # Lipc;
    .param p2, "u"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-interface {p1}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    .line 309
    .local v0, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v0, :cond_1

    .line 311
    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 312
    .local v1, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v1, :cond_1

    .line 319
    .end local v0    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v1

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "workSession is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lipb;Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5ServiceWorkerHook4Bridge"    # Lipb;
    .param p4, "workerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$3;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lipb;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method

.method private isDevSession(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "68687029"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 36
    .param p1, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .prologue
    .line 87
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v28

    .line 88
    .local v28, "uri":Landroid/net/Uri;
    if-eqz v28, :cond_4

    .line 90
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    .line 91
    .local v27, "u":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    .line 93
    .local v23, "scheme":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, "host":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "://"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 96
    .local v20, "kylinPrefix":Ljava/lang/String;
    const-string/jumbo v31, "https://alipay.kylinBridge"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 97
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFirstJsApi:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 98
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFirstJsApi:Z

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sput-wide v32, Lior;->g:J

    .line 102
    :cond_0
    const-string/jumbo v31, "data"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "shouldInterceptRequest4ServiceWorker data "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v19

    .line 106
    .local v19, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_2

    .line 107
    :cond_1
    const/16 v30, 0x0

    .line 302
    .end local v7    # "data":Ljava/lang/String;
    .end local v15    # "host":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "kylinPrefix":Ljava/lang/String;
    .end local v23    # "scheme":Ljava/lang/String;
    .end local v27    # "u":Ljava/lang/String;
    :goto_0
    return-object v30

    .line 110
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "kylinPrefix":Ljava/lang/String;
    .restart local v23    # "scheme":Ljava/lang/String;
    .restart local v27    # "u":Ljava/lang/String;
    :cond_2
    const-string/jumbo v31, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v31, "requestId"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v22

    .line 112
    .local v22, "requestId":I
    const-string/jumbo v31, "applicationId"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "applicationId":Ljava/lang/String;
    const-string/jumbo v31, "callback"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "callback":Ljava/lang/String;
    const-string/jumbo v31, "postMessage"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 117
    const-string/jumbo v31, "data"

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v21

    .line 118
    .local v21, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v31, "viewId"

    const/16 v32, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v29

    .line 119
    .local v29, "viewId":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTargetH5Page(ILjava/lang/String;)Liop;

    move-result-object v11

    .line 120
    .local v11, "h5Page":Liop;
    if-eqz v11, :cond_3

    invoke-interface {v11}, Liop;->getBridge()Linx;

    move-result-object v31

    if-eqz v31, :cond_3

    .line 121
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 122
    .local v8, "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v31, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {v11}, Liop;->getBridge()Linx;

    move-result-object v31

    const-string/jumbo v32, "message"

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v8, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 125
    .end local v8    # "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/json"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v34, ""

    const-string/jumbo v35, "utf-8"

    .line 126
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 297
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "applicationId":Ljava/lang/String;
    .end local v6    # "callback":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    .end local v11    # "h5Page":Liop;
    .end local v15    # "host":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "kylinPrefix":Ljava/lang/String;
    .end local v21    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v22    # "requestId":I
    .end local v23    # "scheme":Ljava/lang/String;
    .end local v27    # "u":Ljava/lang/String;
    .end local v29    # "viewId":I
    :catch_0
    move-exception v26

    .line 298
    .local v26, "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "catch exception "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .end local v26    # "throwable":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 129
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v5    # "applicationId":Ljava/lang/String;
    .restart local v6    # "callback":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "kylinPrefix":Ljava/lang/String;
    .restart local v22    # "requestId":I
    .restart local v23    # "scheme":Ljava/lang/String;
    .restart local v27    # "u":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 140
    const/4 v14, 0x0

    .line 141
    .local v14, "hasPermission":Z
    const-string/jumbo v31, "H5_SWSYNCAPILIST"

    .line 142
    invoke-static/range {v31 .. v31}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v18

    .line 144
    .local v18, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 145
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getDftSyncJsApiArray()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v18

    .line 147
    :cond_7
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_8

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "sync  H5_SWSYNCAPILIST"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v31

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 150
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 151
    .local v17, "item":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 152
    const/4 v14, 0x1

    .line 157
    .end local v16    # "i":I
    .end local v17    # "item":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "sync hasPermission "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz v14, :cond_a

    .line 159
    new-instance v24, Landroid/os/ConditionVariable;

    invoke-direct/range {v24 .. v24}, Landroid/os/ConditionVariable;-><init>()V

    .line 160
    .local v24, "syncLock":Landroid/os/ConditionVariable;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v25, "syncResult":Ljava/lang/StringBuilder;
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v31, "("

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v31, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/ConditionVariable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lipb;Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {v24 .. v24}, Landroid/os/ConditionVariable;->close()V

    .line 194
    const-wide/16 v32, 0x7d0

    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 195
    const-string/jumbo v31, ")"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/javascript"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    .line 198
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "utf-8"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 149
    .end local v24    # "syncLock":Landroid/os/ConditionVariable;
    .end local v25    # "syncResult":Ljava/lang/StringBuilder;
    .restart local v16    # "i":I
    .restart local v17    # "item":Ljava/lang/String;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 200
    .end local v16    # "i":I
    .end local v17    # "item":Ljava/lang/String;
    :cond_a
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/javascript"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "(\'not in H5_SWSYNCAPILIST\')"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "utf-8"

    .line 203
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 207
    .end local v14    # "hasPermission":Z
    .end local v18    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_b
    new-instance v31, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lipb;Ljava/lang/String;)V

    .line 244
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/json"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v34, ""

    const-string/jumbo v35, "utf-8"

    .line 245
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 255
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "applicationId":Ljava/lang/String;
    .end local v6    # "callback":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v22    # "requestId":I
    :cond_c
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    const-string/jumbo v31, "blob"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url begin:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v12

    .line 258
    .local v12, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v12, :cond_f

    .line 259
    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopSession()Lipc;

    move-result-object v13

    .line 260
    .local v13, "h5Session":Lipc;
    if-eqz v13, :cond_d

    .line 261
    invoke-interface {v13}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v10

    .line 262
    .local v10, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v10, :cond_d

    .line 264
    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v30

    .line 265
    .local v30, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v30, :cond_d

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url from pkg "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v10    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_d
    if-eqz v13, :cond_f

    .line 274
    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Linw;

    move-result-object v9

    .line 275
    .local v9, "h5BaseFragment":Linw;
    if-eqz v9, :cond_e

    invoke-interface {v9}, Linw;->getH5Page()Liop;

    move-result-object v31

    if-eqz v31, :cond_e

    const-string/jumbo v31, "h5_enableWebSession"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->enableWorkSession(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 276
    invoke-interface {v9}, Linw;->getH5Page()Liop;

    move-result-object v11

    .line 277
    .restart local v11    # "h5Page":Liop;
    invoke-interface {v11}, Liop;->getSession()Lipc;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getWorkResponse(Lipc;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v30

    .line 278
    .restart local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v30, :cond_e

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url form mainPageResourceResponse :"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .end local v11    # "h5Page":Liop;
    .end local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_e
    invoke-interface {v13}, Lipc;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isDevSession(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    const-string/jumbo v31, "h5_enableDevSession"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->enableWorkSession(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "is dev session "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lipc;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getNotDevSession()Lipc;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getWorkResponse(Lipc;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v30

    .line 287
    .restart local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v30, :cond_f

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url form mainPageResourceResponse inDevSession:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    .end local v9    # "h5BaseFragment":Linw;
    .end local v13    # "h5Session":Lipc;
    .end local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url form online:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
