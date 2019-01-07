.class public Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;
.super Ljava/lang/Object;
.source "ExpiredCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExpiredCacheParser"


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
    .line 21
    const-string/jumbo v6, "mtopsdk.ExpiredCacheParser"

    const-string/jumbo v7, "[parse]ExpiredCacheParser parse called"

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/ResponseSource;->getMtopProxy()Lmtopsdk/mtop/MtopProxy;

    move-result-object v3

    .line 23
    .local v3, "proxy":Lmtopsdk/mtop/MtopProxy;
    iget-object v6, v3, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    const/4 v7, 0x2

    iput v7, v6, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    .line 24
    iget-object v6, v3, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v6}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataStart()V

    .line 25
    iget-object v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 26
    .local v5, "rpcCache":Lanetwork/network/cache/RpcCache;
    invoke-static {v5, v3}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 27
    .local v2, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    sget-object v6, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->EXPIRED_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-virtual {v2, v6}, Lmtopsdk/mtop/domain/MtopResponse;->setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V

    .line 28
    iget-object v6, v3, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v6}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataEnd()V

    .line 29
    iget-object v6, v3, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v2, v6}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 30
    invoke-virtual {v3}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v1

    .line 31
    .local v1, "callback":Lmtopsdk/mtop/common/MtopListener;
    instance-of v6, v1, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v6, :cond_0

    .line 32
    new-instance v0, Lmtopsdk/mtop/common/MtopCacheEvent;

    invoke-direct {v0, v2}, Lmtopsdk/mtop/common/MtopCacheEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 33
    .local v0, "cacheEvent":Lmtopsdk/mtop/common/MtopCacheEvent;
    iget-object v6, v3, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v6}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheReturn()V

    .line 34
    iget-object v6, v3, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {v6, v2}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->finishMtopStatisticsOnCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 35
    check-cast v1, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    .end local v1    # "callback":Lmtopsdk/mtop/common/MtopListener;
    invoke-virtual {v3}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;->onCached(Lmtopsdk/mtop/common/MtopCacheEvent;Ljava/lang/Object;)V

    .line 38
    .end local v0    # "cacheEvent":Lmtopsdk/mtop/common/MtopCacheEvent;
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/ResponseSource;->getRequest()Llj;

    move-result-object v4

    .line 39
    .local v4, "request":Llj;
    iget-object v6, v5, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-static {v6}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    const-string/jumbo v6, "if-modified-since"

    iget-object v7, v5, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Llj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    iget-object v6, v5, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-static {v6}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    const-string/jumbo v6, "if-none-match"

    iget-object v7, v5, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Llj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    iput-object v2, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 46
    return-void
.end method
