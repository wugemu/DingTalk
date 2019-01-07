.class public Lmtopsdk/mtop/cache/handler/FreshCacheParser;
.super Ljava/lang/Object;
.source "FreshCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FreshCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;)V
    .locals 8
    .param p1, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 21
    const-string/jumbo v5, "mtopsdk.FreshCacheParser"

    const-string/jumbo v6, "[parse]FreshCacheParser parse called"

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v5, 0x0

    iput-boolean v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 24
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/ResponseSource;->getMtopProxy()Lmtopsdk/mtop/MtopProxy;

    move-result-object v4

    .line 25
    .local v4, "proxy":Lmtopsdk/mtop/MtopProxy;
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput v7, v5, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    .line 26
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataStart()V

    .line 27
    iget-object v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    invoke-static {v5, v4}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 28
    .local v3, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    sget-object v5, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->FRESH_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-virtual {v3, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V

    .line 29
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataEnd()V

    .line 30
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 32
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v5, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    if-eqz v5, :cond_0

    .line 33
    iput-boolean v7, p1, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 36
    :cond_0
    iget-boolean v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->isAsync:Z

    if-eqz v5, :cond_1

    .line 37
    invoke-virtual {v4}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v1

    .line 38
    .local v1, "callback":Lmtopsdk/mtop/common/MtopListener;
    if-eqz v1, :cond_1

    .line 39
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v5, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    if-eqz v5, :cond_2

    instance-of v5, v1, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v5, :cond_2

    .line 40
    new-instance v0, Lmtopsdk/mtop/common/MtopCacheEvent;

    invoke-direct {v0, v3}, Lmtopsdk/mtop/common/MtopCacheEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 41
    .local v0, "cacheEvent":Lmtopsdk/mtop/common/MtopCacheEvent;
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheReturn()V

    .line 42
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {v5, v3}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->finishMtopStatisticsOnCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 43
    check-cast v1, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    .end local v1    # "callback":Lmtopsdk/mtop/common/MtopListener;
    invoke-virtual {v4}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;->onCached(Lmtopsdk/mtop/common/MtopCacheEvent;Ljava/lang/Object;)V

    .line 54
    .end local v0    # "cacheEvent":Lmtopsdk/mtop/common/MtopCacheEvent;
    :cond_1
    :goto_0
    iput-object v3, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 55
    return-void

    .line 44
    .restart local v1    # "callback":Lmtopsdk/mtop/common/MtopListener;
    :cond_2
    instance-of v5, v1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v5, :cond_1

    .line 45
    new-instance v2, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v2, v3}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 46
    .local v2, "finishEvent":Lmtopsdk/mtop/common/MtopFinishEvent;
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheReturn()V

    .line 47
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v7, "x-s-traceid"

    invoke-static {v6, v7}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    .line 48
    iget-object v5, v4, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->finishMtopStatisticsOnCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 49
    check-cast v1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    .end local v1    # "callback":Lmtopsdk/mtop/common/MtopListener;
    invoke-virtual {v4}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_0
.end method
