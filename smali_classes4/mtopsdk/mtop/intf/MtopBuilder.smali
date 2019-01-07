.class public Lmtopsdk/mtop/intf/MtopBuilder;
.super Ljava/lang/Object;
.source "MtopBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBuilder"


# instance fields
.field private customDomain:Ljava/lang/String;

.field private fullBaseUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field public listener:Lmtopsdk/mtop/common/MtopListener;

.field public mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

.field public request:Lmtopsdk/mtop/domain/MtopRequest;

.field public requestContext:Ljava/lang/Object;

.field protected stat:Lmtopsdk/mtop/util/MtopStatistics;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputDo"    # Ljava/lang/Object;
    .param p2, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 62
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 67
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 72
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->customDomain:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 120
    invoke-static {p1}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 121
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "mtopData"    # Lmtopsdk/mtop/domain/IMTOPDataObject;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 62
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 67
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 72
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->customDomain:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 96
    invoke-static {p1}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 97
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 62
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 67
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 72
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->customDomain:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 107
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 108
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/intf/MtopBuilder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/intf/MtopBuilder;

    .prologue
    .line 44
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private createListenerProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    .locals 2
    .param p1, "listener"    # Lmtopsdk/mtop/common/MtopListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    new-instance v1, Lmtopsdk/mtop/common/DefaultMtopCallback;

    invoke-direct {v1}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    invoke-direct {v0, v1}, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    .line 536
    .local v0, "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    :goto_0
    return-object v0

    .line 528
    .end local v0    # "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    :cond_0
    instance-of v1, p1, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v1, :cond_1

    .line 529
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopCacheSplitListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopCacheSplitListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    .restart local v0    # "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    goto :goto_0

    .line 530
    .end local v0    # "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    :cond_1
    instance-of v1, p1, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v1, :cond_2

    .line 531
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopCacheListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopCacheListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    .restart local v0    # "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    goto :goto_0

    .line 533
    .end local v0    # "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    :cond_2
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    .restart local v0    # "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    goto :goto_0
.end method

.method private createMtopProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/MtopProxy;
    .locals 4
    .param p1, "listener"    # Lmtopsdk/mtop/common/MtopListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 503
    new-instance v0, Lmtopsdk/mtop/MtopProxy;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v3, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 504
    .local v0, "proxy":Lmtopsdk/mtop/MtopProxy;
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    .line 508
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-object v1, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 509
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->customDomain:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->customDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/MtopProxy;->setCustomDomain(Ljava/lang/String;)V

    .line 512
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 513
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/MtopProxy;->setFullBaseUrl(Ljava/lang/String;)V

    .line 515
    :cond_2
    return-object v0
.end method

.method private isUseCache()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUseWua()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCacheKeyParamBlackList(Ljava/util/List;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/intf/MtopBuilder;"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    .line 341
    :cond_0
    return-object p0
.end method

.method public addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 258
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string/jumbo v0, "mtopsdk.MtopBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[addHttpQueryParameter]add HttpQueryParameter error,key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1
    :goto_0
    return-object p0

    .line 265
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    .line 268
    :cond_3
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .param p1, "listener"    # Lmtopsdk/mtop/common/MtopListener;

    .prologue
    .line 227
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 228
    return-object p0
.end method

.method public addMteeUa(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "mteeUa"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string/jumbo v0, "ua"

    invoke-virtual {p0, v0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 247
    return-object p0
.end method

.method public addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2
    .param p1, "openAppKey"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 360
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    .line 361
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    .line 363
    return-object p0
.end method

.method public asyncRequest()Lmtopsdk/mtop/common/ApiID;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 480
    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v2}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 481
    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p0, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->createMtopProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/MtopProxy;

    move-result-object v1

    .line 482
    .local v1, "proxy":Lmtopsdk/mtop/MtopProxy;
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->isUseCache()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->isUseWua()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lmtopsdk/mtop/MtopProxyBase;->isInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 483
    :cond_0
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    .line 484
    .local v0, "apiID":Lmtopsdk/mtop/common/ApiID;
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lmtopsdk/mtop/intf/MtopBuilder$1;

    invoke-direct {v3, p0, v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder$1;-><init>(Lmtopsdk/mtop/intf/MtopBuilder;Lmtopsdk/mtop/common/ApiID;Lmtopsdk/mtop/MtopProxy;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 492
    .end local v0    # "apiID":Lmtopsdk/mtop/common/ApiID;
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    goto :goto_0
.end method

.method public forceRefreshCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    .line 298
    return-object p0
.end method

.method public fullBaseUrl(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .param p1, "fullBaseUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 205
    :cond_0
    return-object p0
.end method

.method public getReqContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 279
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 280
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/intf/MtopBuilder;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setRequestHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected mtopCommitStatData(Z)V
    .locals 1
    .param p1, "commitStat"    # Z

    .prologue
    .line 543
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-boolean p1, v0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    .line 544
    return-void
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "protocol"    # Lmtopsdk/mtop/domain/ProtocolEnum;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setProtocol(Lmtopsdk/mtop/domain/ProtocolEnum;)V

    .line 194
    :cond_0
    return-object p0
.end method

.method public reqContext(Ljava/lang/Object;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .param p1, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 140
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 141
    return-object p0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "method"    # Lmtopsdk/mtop/domain/MethodEnum;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 330
    :cond_0
    return-object p0
.end method

.method public retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "retryTime"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setRetryTime(I)V

    .line 156
    return-object p0
.end method

.method public setBizId(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "bizId"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    .line 401
    return-object p0
.end method

.method public setCacheControlNoCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 179
    .local v0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .restart local v0    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "cache-control"

    const-string/jumbo v2, "no-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->setRequestHeaders(Ljava/util/Map;)V

    .line 184
    return-object p0
.end method

.method public setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "connTimeout"    # I

    .prologue
    .line 373
    if-lez p1, :cond_0

    .line 374
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    .line 377
    :cond_0
    return-object p0
.end method

.method public setCustomDomain(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .param p1, "customDomain"    # Ljava/lang/String;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->customDomain:Ljava/lang/String;

    .line 218
    :cond_0
    return-object p0
.end method

.method public setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2
    .param p1, "jsonTypeEnum"    # Lmtopsdk/mtop/domain/JsonTypeEnum;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/JsonTypeEnum;->getJsonType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 348
    :cond_0
    return-object p0
.end method

.method public setNetInfo(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "param"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    .line 237
    return-object p0
.end method

.method public setPageUrl(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-object p1, v0, Lmtopsdk/mtop/util/MtopStatistics;->pageUrl:Ljava/lang/String;

    .line 435
    return-object p0
.end method

.method public setReqBizExt(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "reqBizExt"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    .line 412
    return-object p0
.end method

.method public setReqUserId(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "reqUserId"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    .line 424
    return-object p0
.end method

.method public setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "socketTimeout"    # I

    .prologue
    .line 387
    if-lez p1, :cond_0

    .line 388
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    .line 390
    :cond_0
    return-object p0
.end method

.method public syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 444
    iget-object v4, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 445
    iget-object v4, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p0, v4}, Lmtopsdk/mtop/intf/MtopBuilder;->createListenerProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    move-result-object v0

    .line 446
    .local v0, "callback":Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    invoke-direct {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->createMtopProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/MtopProxy;

    move-result-object v2

    .line 449
    .local v2, "proxy":Lmtopsdk/mtop/MtopProxy;
    iget-object v4, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    .line 452
    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v4, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    if-nez v4, :cond_0

    .line 455
    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    iget-object v3, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 463
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v4, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->context:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 464
    iget-object v4, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->context:Ljava/lang/Object;

    iput-object v4, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 466
    :cond_1
    if-nez v3, :cond_2

    .line 467
    new-instance v3, Lmtopsdk/mtop/domain/MtopResponse;

    .end local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v4, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT"

    const-string/jumbo v7, "MTOP\u5f02\u6b65\u8c03\u7528\u8d85\u65f6"

    invoke-direct {v3, v4, v5, v6, v7}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .restart local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_2
    return-object v3

    .line 457
    .end local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "mtopsdk.MtopBuilder"

    const-string/jumbo v5, "[apiCall] error"

    invoke-static {v4, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public ttid(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public useCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 288
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    .line 289
    return-object p0
.end method

.method public useWua()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->useWua(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useWua(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    .line 320
    return-object p0
.end method
