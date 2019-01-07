.class public Lmtopsdk/mtop/cache/handler/CacheStatusHandler;
.super Ljava/lang/Object;
.source "CacheStatusHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheStatusHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishMtopStatisticsOnCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 6
    .param p0, "stat"    # Lmtopsdk/mtop/util/MtopStatistics;
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->onEnd()V

    .line 62
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->onStatSum()V

    .line 63
    if-eqz p1, :cond_3

    .line 64
    const/4 v2, 0x0

    .line 66
    .local v2, "statCopy":Lmtopsdk/mtop/util/MtopStatistics;
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmtopsdk/mtop/util/MtopStatistics;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 73
    invoke-virtual {p1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 76
    .end local v2    # "statCopy":Lmtopsdk/mtop/util/MtopStatistics;
    :cond_3
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const-string/jumbo v3, "mtopsdk.MtopStatistics"

    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .restart local v2    # "statCopy":Lmtopsdk/mtop/util/MtopStatistics;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    const-string/jumbo v3, "mtopsdk.CacheStatusHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[finishMtopStatisticsOnCache] clone MtopStatistics error ---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static handleCacheStatus(Lmtopsdk/mtop/domain/ResponseSource;)V
    .locals 2
    .param p0, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    iget-object v0, v0, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-static {v0}, Lmtopsdk/mtop/cache/handler/CacheParserFactory;->createCacheParser(Lanetwork/network/cache/RpcCache$CacheStatus;)Lmtopsdk/mtop/cache/handler/ICacheParser;

    move-result-object v0

    invoke-interface {v0, p0}, Lmtopsdk/mtop/cache/handler/ICacheParser;->parse(Lmtopsdk/mtop/domain/ResponseSource;)V

    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo v0, "mtopsdk.CacheStatusHandler"

    const-string/jumbo v1, "[handleCacheStatus]Didn\'t  hit local cache "

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2
    .param p0, "rpcCache"    # Lanetwork/network/cache/RpcCache;
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;

    .prologue
    .line 40
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>()V

    .line 41
    .local v0, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lanetwork/network/cache/RpcCache;->body:[B

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setBytedata([B)V

    .line 44
    iget-object v1, p0, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 45
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setResponseCode(I)V

    .line 46
    invoke-static {v0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseRetCodeFromResponseHeader(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 48
    return-object v0
.end method
