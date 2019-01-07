.class public Lmtopsdk/mtop/util/MtopStatistics;
.super Ljava/lang/Object;
.source "MtopStatistics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/util/MtopStatistics$1;,
        Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;
    }
.end annotation


# static fields
.field private static final MTOP_EXCEPTIONS_MONITOR_POINT:Ljava/lang/String; = "mtopExceptions"

.field private static final MTOP_STATS_MODULE:Ljava/lang/String; = "mtopsdk"

.field private static final MTOP_STATS_MONITOR_POINT:Ljava/lang/String; = "mtopStats"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopStatistics"

.field private static volatile isAppMonitorRegistered:Z

.field private static registerLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public apiKey:Ljava/lang/String;

.field public cacheCostTime:J

.field public cacheHitType:I

.field protected cacheResponseParseEndTime:J

.field protected cacheResponseParseStartTime:J

.field public cacheResponseParseTime:J

.field protected cacheReturnTime:J

.field public cacheSwitch:I

.field public clientTraceId:Ljava/lang/String;

.field public commitStat:Z

.field public domain:Ljava/lang/String;

.field protected endTime:J

.field public intSeqNo:I

.field public isAsync:Z

.field protected mtopResponseParseEndTime:J

.field protected mtopResponseParseStartTime:J

.field public mtopResponseParseTime:J

.field protected netSendEndTime:J

.field protected netSendStartTime:J

.field protected netStat:Lanetwork/channel/statist/StatisticData;

.field public netTotalTime:J

.field public pageUrl:Ljava/lang/String;

.field private rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

.field public retCode:Ljava/lang/String;

.field private seqNo:Ljava/lang/String;

.field public serverTraceId:Ljava/lang/String;

.field protected startTime:J

.field protected statSum:Ljava/lang/String;

.field public statusCode:I

.field public totalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/util/MtopStatistics;->isAppMonitorRegistered:Z

    .line 176
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lmtopsdk/mtop/util/MtopStatistics;->registerLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    .line 41
    iput-boolean v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->isAsync:Z

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    .line 181
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->createIntSeqNo()I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->intSeqNo:I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MTOP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->intSeqNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    .line 184
    return-void
.end method

.method private commitStatData()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 298
    iget-boolean v5, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    if-nez v5, :cond_0

    .line 368
    :goto_0
    return-void

    .line 302
    :cond_0
    sget-boolean v5, Lmtopsdk/mtop/util/MtopStatistics;->isAppMonitorRegistered:Z

    if-nez v5, :cond_1

    .line 303
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->registerMtopStatsAppMonitor()V

    .line 309
    :cond_1
    :try_start_0
    iget-object v5, p0, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-static {v5}, Lmtopsdk/mtop/util/ErrorConstant;->isSuccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "api"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v6, "isSynchronous"

    iget-boolean v5, p0, Lmtopsdk/mtop/util/MtopStatistics;->isAsync:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "0"

    :goto_1
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v5, "ret"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v5, "httpResponseStatus"

    iget v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v5, "domain"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->domain:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v5, "cacheSwitch"

    iget v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v5, "cacheHitType"

    iget v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v5, "clientTraceId"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->clientTraceId:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v5, "serverTraceId"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->getNetStat()Lanetwork/channel/statist/StatisticData;

    move-result-object v4

    .line 322
    .local v4, "netStatData":Lanetwork/channel/statist/StatisticData;
    if-eqz v4, :cond_2

    .line 323
    const-string/jumbo v6, "isSpdy"

    iget-boolean v5, v4, Lanetwork/channel/statist/StatisticData;->isSpdy:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "1"

    :goto_2
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v6, "isSSL"

    iget-boolean v5, v4, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "1"

    :goto_3
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v5, "retryTime"

    iget v6, v4, Lanetwork/channel/statist/StatisticData;->retryTime:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v5, "timeoutType"

    iget-object v6, v4, Lanetwork/channel/statist/StatisticData;->timeoutType:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 329
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 331
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 332
    .local v3, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v5, "totalTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 333
    const-string/jumbo v5, "networkExeTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 334
    const-string/jumbo v5, "cacheCostTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 335
    const-string/jumbo v5, "cacheResponseParseTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 336
    if-eqz v4, :cond_3

    .line 337
    const-string/jumbo v5, "mtopOperationQueueWait"

    iget-wide v6, v4, Lanetwork/channel/statist/StatisticData;->spdyWaitTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 338
    const-string/jumbo v5, "tcpLinkDate"

    iget-wide v6, v4, Lanetwork/channel/statist/StatisticData;->tcpLinkDate:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 339
    const-string/jumbo v5, "firstDataTime"

    iget-wide v6, v4, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 340
    const-string/jumbo v5, "serverRT"

    iget-wide v6, v4, Lanetwork/channel/statist/StatisticData;->serverRT:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 341
    const-string/jumbo v5, "rtt"

    iget-wide v6, v4, Lanetwork/channel/statist/StatisticData;->rtt:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 342
    const-string/jumbo v5, "recDataTime"

    iget-wide v6, v4, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 343
    const-string/jumbo v5, "oneWayTime_ANet"

    iget-wide v6, v4, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 345
    :cond_3
    iget-object v5, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v5, :cond_4

    .line 346
    const-string/jumbo v5, "rbReqTime"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v6, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 347
    const-string/jumbo v5, "toMainThTime"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v6, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toMainThTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 348
    const-string/jumbo v5, "mtopJsonParseTime"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v6, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 349
    const-string/jumbo v5, "mtopReqTime"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v6, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->mtopReqTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 351
    :cond_4
    const-string/jumbo v5, "mtopsdk"

    const-string/jumbo v6, "mtopStats"

    invoke-static {v5, v6, v0, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .end local v1    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v4    # "netStatData":Lanetwork/channel/statist/StatisticData;
    :goto_4
    iput-boolean v9, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    goto/16 :goto_0

    .line 313
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v1    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    const-string/jumbo v5, "1"

    goto/16 :goto_1

    .line 323
    .restart local v4    # "netStatData":Lanetwork/channel/statist/StatisticData;
    :cond_6
    const-string/jumbo v5, "0"

    goto/16 :goto_2

    .line 324
    :cond_7
    const-string/jumbo v5, "0"

    goto/16 :goto_3

    .line 354
    .end local v1    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "netStatData":Lanetwork/channel/statist/StatisticData;
    :cond_8
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 355
    .restart local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v5, "api"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 356
    const-string/jumbo v5, "ret"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 357
    const-string/jumbo v5, "httpResponseStatus"

    iget v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 358
    const-string/jumbo v5, "domain"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->domain:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 359
    const-string/jumbo v5, "clientTraceId"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->clientTraceId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 360
    const-string/jumbo v5, "serverTraceId"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 361
    const-string/jumbo v5, "refer"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 362
    const-string/jumbo v5, "mtopsdk"

    const-string/jumbo v6, "mtopExceptions"

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 364
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "mtopsdk.MtopStatistics"

    iget-object v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[commitStatData] commit mtopStats appmonitor error ---"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    iput-boolean v9, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    iput-boolean v9, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    throw v5
.end method

.method private currentTimeMillis()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private registerMtopStatsAppMonitor()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 407
    sget-object v4, Lmtopsdk/mtop/util/MtopStatistics;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 409
    :try_start_0
    const-string/jumbo v4, "mtopsdk.MtopStatistics"

    iget-object v5, p0, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    const-string/jumbo v6, "[registerMtopStatsAppMonitor]register MtopStats AppMonitor executed."

    invoke-static {v4, v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-boolean v4, Lmtopsdk/mtop/util/MtopStatistics;->isAppMonitorRegistered:Z

    if-nez v4, :cond_0

    .line 412
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 413
    .local v1, "dimensions":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v4, "api"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 414
    const-string/jumbo v4, "isSynchronous"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 415
    const-string/jumbo v4, "isSpdy"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 416
    const-string/jumbo v4, "isSSL"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 417
    const-string/jumbo v4, "retryTime"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 418
    const-string/jumbo v4, "timeoutType"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 419
    const-string/jumbo v4, "ret"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 420
    const-string/jumbo v4, "httpResponseStatus"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 421
    const-string/jumbo v4, "domain"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 422
    const-string/jumbo v4, "cacheSwitch"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 423
    const-string/jumbo v4, "cacheHitType"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 424
    const-string/jumbo v4, "clientTraceId"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 425
    const-string/jumbo v4, "serverTraceId"

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 428
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 429
    .local v3, "measures":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v4, "totalTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 430
    const-string/jumbo v4, "networkExeTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 431
    const-string/jumbo v4, "cacheCostTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 432
    const-string/jumbo v4, "cacheResponseParseTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 433
    const-string/jumbo v4, "mtopOperationQueueWait"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 434
    const-string/jumbo v4, "rbReqTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 435
    const-string/jumbo v4, "toMainThTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 436
    const-string/jumbo v4, "mtopJsonParseTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 437
    const-string/jumbo v4, "mtopReqTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 438
    const-string/jumbo v4, "recDataTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 439
    const-string/jumbo v4, "oneWayTime_ANet"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 440
    const-string/jumbo v4, "tcpLinkDate"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 441
    const-string/jumbo v4, "serverRT"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 442
    const-string/jumbo v4, "rtt"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 443
    const-string/jumbo v4, "firstDataTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 445
    const-string/jumbo v4, "mtopsdk"

    const-string/jumbo v5, "mtopStats"

    invoke-static {v4, v5, v3, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 448
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 449
    .local v0, "dimens":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v4, "api"

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 450
    const-string/jumbo v4, "ret"

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 451
    const-string/jumbo v4, "httpResponseStatus"

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 452
    const-string/jumbo v4, "domain"

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 453
    const-string/jumbo v4, "clientTraceId"

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 454
    const-string/jumbo v4, "serverTraceId"

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 455
    const-string/jumbo v4, "refer"

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 456
    const-string/jumbo v4, "mtopsdk"

    const-string/jumbo v5, "mtopExceptions"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v0    # "dimens":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v1    # "dimensions":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v3    # "measures":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    sput-boolean v8, Lmtopsdk/mtop/util/MtopStatistics;->isAppMonitorRegistered:Z

    .line 462
    sget-object v4, Lmtopsdk/mtop/util/MtopStatistics;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 463
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v4, "mtopsdk.MtopStatistics"

    iget-object v5, p0, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[registerMtopStatsAppMonitor] register MtopStats appmonitor error ---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    sput-boolean v8, Lmtopsdk/mtop/util/MtopStatistics;->isAppMonitorRegistered:Z

    .line 462
    sget-object v4, Lmtopsdk/mtop/util/MtopStatistics;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 461
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    sput-boolean v8, Lmtopsdk/mtop/util/MtopStatistics;->isAppMonitorRegistered:Z

    .line 462
    sget-object v5, Lmtopsdk/mtop/util/MtopStatistics;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public commitStatData(Z)V
    .locals 0
    .param p1, "commitStat"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    .line 294
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData()V

    .line 295
    return-void
.end method

.method public getNetStat()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public declared-synchronized getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;-><init>(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/util/MtopStatistics$1;)V

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    .line 392
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatSum()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 278
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v0, :cond_1

    .line 279
    const-string/jumbo v0, ""

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->getStatSum()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->getStatSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTotalTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 274
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    return-wide v0
.end method

.method public onCacheReturn()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 199
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    .line 201
    return-void
.end method

.method public onEnd()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 195
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    .line 196
    return-void
.end method

.method public onNetSendEnd()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    .line 225
    return-void
.end method

.method public onNetSendStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 220
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendStartTime:J

    .line 221
    return-void
.end method

.method public onNetStat(Lanetwork/channel/statist/StatisticData;)V
    .locals 0
    .param p1, "netStat"    # Lanetwork/channel/statist/StatisticData;

    .prologue
    .line 228
    iput-object p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    .line 229
    return-void
.end method

.method public onParseCacheDataEnd()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 208
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    .line 209
    return-void
.end method

.method public onParseCacheDataStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 204
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    .line 205
    return-void
.end method

.method public onParseResponseDataEnd()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 216
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseEndTime:J

    .line 217
    return-void
.end method

.method public onParseResponseDataStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 212
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseStartTime:J

    .line 213
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    .line 192
    return-void
.end method

.method public onStatSum()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 238
    iget-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    .line 239
    iget-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    iget-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    sub-long/2addr v2, v4

    :cond_0
    iput-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    .line 240
    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    iget-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    .line 241
    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    iget-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    .line 242
    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseEndTime:J

    iget-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseTime:J

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mtopOneWayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    const-string/jumbo v1, ",oneWayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v1, ",cacheSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v1, ",cacheHitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string/jumbo v1, ",cacheCostTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, ",cacheResponseParseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v1, ",mtopResponseParseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v1, ",httpResponseStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v1, ",ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    if-eqz v1, :cond_1

    .line 255
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    iget-object v1, v1, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v1}, Lanetwork/channel/statist/StatisticData;->sumNetStat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData()V

    .line 265
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->clientTraceId:Ljava/lang/String;

    iget-object v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->logTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void

    .line 259
    :cond_2
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    iget-object v1, v1, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MtopStatistics [Detail]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",cacheResponseParseStartTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",cacheResponseParseEndTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",cacheReturnTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",mtopResponseParseStartTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",mtopResponseParseEndTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",endTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nMtopStatistics[sumstat(ms)]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nrbStatData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
