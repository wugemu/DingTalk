.class public Lmtopsdk/mtop/common/NetworkListenerAdapter;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Llf$a;
.implements Llf$b;
.implements Llf$d;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkListenerAdapter"


# instance fields
.field private bos:Ljava/io/ByteArrayOutputStream;

.field public cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

.field private finishEvent:Llg$a;

.field public finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

.field private isNeedCallFinish:Z

.field private volatile isStreamReceived:Z

.field public progressListener:Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

.field private proxy:Lmtopsdk/mtop/MtopProxy;

.field private receivedLength:I

.field private resLength:I

.field public stat:Lmtopsdk/mtop/util/MtopStatistics;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/MtopProxy;)V
    .locals 2
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 64
    iput-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    .line 69
    iput-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->bos:Ljava/io/ByteArrayOutputStream;

    .line 71
    iput-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishEvent:Llg$a;

    .line 72
    iput-boolean v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->isNeedCallFinish:Z

    .line 73
    iput-boolean v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->isStreamReceived:Z

    .line 78
    iput v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    .line 83
    iput v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->resLength:I

    .line 90
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/common/NetworkListenerAdapter;ILjava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->onHeaderTask(ILjava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;

    .prologue
    .line 37
    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lmtopsdk/mtop/common/NetworkListenerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;

    .prologue
    .line 37
    iget v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->resLength:I

    return v0
.end method

.method static synthetic access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->bos:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$302(Lmtopsdk/mtop/common/NetworkListenerAdapter;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .param p1, "x1"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 37
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->bos:Ljava/io/ByteArrayOutputStream;

    return-object p1
.end method

.method static synthetic access$400(Lmtopsdk/mtop/common/NetworkListenerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;

    .prologue
    .line 37
    iget v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    return v0
.end method

.method static synthetic access$412(Lmtopsdk/mtop/common/NetworkListenerAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iget v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    return v0
.end method

.method static synthetic access$500(Lmtopsdk/mtop/common/NetworkListenerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;

    .prologue
    .line 37
    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->getHashCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Llg$a;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishEvent:Llg$a;

    return-object v0
.end method

.method static synthetic access$700(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llg$a;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .param p1, "x1"    # Llg$a;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->callFinish(Llg$a;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$802(Lmtopsdk/mtop/common/NetworkListenerAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->isNeedCallFinish:Z

    return p1
.end method

.method static synthetic access$900(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llg$a;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .param p1, "x1"    # Llg$a;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->onFinishTask(Llg$a;Ljava/lang/Object;)V

    return-void
.end method

.method private callFinish(Llg$a;Ljava/lang/Object;)V
    .locals 2
    .param p1, "finishEvent"    # Llg$a;
    .param p2, "context"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 173
    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->getHashCode()I

    move-result v0

    new-instance v1, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;-><init>(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llg$a;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 183
    return-void
.end method

.method private finishMtopStatistics(Lmtopsdk/mtop/util/MtopStatistics;)V
    .locals 3
    .param p1, "stat"    # Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/util/MtopStatistics;->onEnd()V

    .line 214
    invoke-virtual {p1}, Lmtopsdk/mtop/util/MtopStatistics;->onStatSum()V

    .line 215
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "mtopsdk.MtopStatistics"

    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->getSeqNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/util/MtopStatistics;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 307
    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "seqNo":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method private getSeqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFinishTask(Llg$a;Ljava/lang/Object;)V
    .locals 13
    .param p1, "event"    # Llg$a;
    .param p2, "context"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 239
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v8, :cond_0

    .line 240
    new-instance v8, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v8}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 242
    :cond_0
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v8}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendEnd()V

    .line 243
    if-eqz p1, :cond_1

    .line 244
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-interface {p1}, Llg$a;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmtopsdk/mtop/util/MtopStatistics;->onNetStat(Lanetwork/channel/statist/StatisticData;)V

    .line 245
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-interface {p1}, Llg$a;->getHttpCode()I

    move-result v9

    iput v9, v8, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    .line 247
    :cond_1
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v8}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "seqNo":Ljava/lang/String;
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-nez v8, :cond_3

    .line 249
    const-string/jumbo v7, "mtopsdk.NetworkListenerAdapter"

    const-string/jumbo v8, "[onFinishTask]finishListener is null"

    invoke-static {v7, v6, v8}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_2
    :goto_0
    return-void

    .line 252
    :cond_3
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    if-nez v8, :cond_4

    .line 253
    const-string/jumbo v7, "mtopsdk.NetworkListenerAdapter"

    const-string/jumbo v8, "[onFinishTask]mtopProxy is null"

    invoke-static {v7, v6, v8}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_4
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    iget-object v3, v8, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 257
    .local v3, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v4, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9, v7, v7}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v4, "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4, v8}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 259
    new-instance v2, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v2, v4}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 261
    .local v2, "mtopEvent":Lmtopsdk/mtop/common/MtopFinishEvent;
    if-nez p1, :cond_5

    .line 262
    const-string/jumbo v7, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {v4, v7}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v7, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v4, v7}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 264
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {p0, v7}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishMtopStatistics(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 266
    :try_start_0
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    invoke-interface {v7, v2, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "mtopsdk.NetworkListenerAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[onFinishTask]finishListener error --apiKey="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 273
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v8}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataStart()V

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "cacheResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    iget-object v8, v8, Lmtopsdk/mtop/cache/CacheEntity;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    if-eqz v8, :cond_6

    .line 276
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    iget-object v8, v8, Lmtopsdk/mtop/cache/CacheEntity;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    iget-object v0, v8, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 278
    :cond_6
    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    new-instance v9, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;

    invoke-interface {p1}, Llg$a;->getHttpCode()I

    move-result v10

    iget-object v11, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    iget-object v12, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->bos:Ljava/io/ByteArrayOutputStream;

    if-eqz v12, :cond_7

    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :cond_7
    invoke-direct {v9, v10, v11, v7}, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;-><init>(ILjava/util/Map;[B)V

    invoke-static {v4, v0, v8, v9}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v7

    iput-object v7, v2, Lmtopsdk/mtop/common/MtopFinishEvent;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 280
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataEnd()V

    .line 281
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    .line 282
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v8, v2, Lmtopsdk/mtop/common/MtopFinishEvent;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "x-s-traceid"

    invoke-static {v8, v9}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    .line 283
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {p0, v7}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishMtopStatistics(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 286
    :try_start_1
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    invoke-interface {v7, v2, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    :goto_1
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    iget-boolean v7, v7, Lmtopsdk/mtop/cache/CacheEntity;->apiCacheSwitchOpen:Z

    if-eqz v7, :cond_2

    .line 293
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    iget-object v5, v7, Lmtopsdk/mtop/cache/CacheEntity;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    .line 294
    .local v5, "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheManager()Lmtopsdk/mtop/cache/CacheManager;

    move-result-object v7

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Lmtopsdk/mtop/cache/CacheManager;->isNeedWriteCache(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    iget-object v8, v8, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v8, v8, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    if-ne v7, v8, :cond_2

    .line 295
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->cloneOriginMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 296
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheManager()Lmtopsdk/mtop/cache/CacheManager;

    move-result-object v7

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v4}, Lmtopsdk/mtop/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z

    goto/16 :goto_0

    .line 287
    .end local v5    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :catch_1
    move-exception v1

    .line 288
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "mtopsdk.NetworkListenerAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[onFinishTask]finishListener error --apiKey="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private onHeaderTask(ILjava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 226
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    .line 227
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->parseResLength()I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->resLength:I

    .line 229
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    new-instance v1, Lmtopsdk/mtop/common/MtopHeaderEvent;

    invoke-direct {v1, p1, p2}, Lmtopsdk/mtop/common/MtopHeaderEvent;-><init>(ILjava/util/Map;)V

    invoke-interface {v0, v1, p3}, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V

    .line 232
    :cond_0
    return-void
.end method

.method private parseResLength()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 190
    iget-object v2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    const-string/jumbo v3, "content-length"

    invoke-static {v2, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "contentLength":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    const-string/jumbo v3, "x-bin-length"

    invoke-static {v2, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    const/4 v1, 0x0

    .line 195
    .local v1, "resLength":I
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :cond_1
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v2

    const-string/jumbo v2, "mtopsdk.NetworkListenerAdapter"

    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->getSeqNo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[parseResLength]parse Response HeaderField ContentLength error "

    invoke-static {v2, v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onFinished(Llg$a;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Llg$a;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishEvent:Llg$a;

    .line 166
    iget-boolean v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->isNeedCallFinish:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->isStreamReceived:Z

    if-nez v0, :cond_1

    .line 167
    :cond_0
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->callFinish(Llg$a;Ljava/lang/Object;)V

    .line 169
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onInputStreamGet(Llp;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputStream"    # Llp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->isStreamReceived:Z

    .line 108
    new-instance v0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;-><init>(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llp;Ljava/lang/Object;)V

    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submitRequestTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 160
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 95
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;-><init>(Lmtopsdk/mtop/common/NetworkListenerAdapter;ILjava/util/Map;Ljava/lang/Object;)V

    .line 101
    .local v0, "onHeaderRunnable":Ljava/lang/Runnable;
    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->getHashCode()I

    move-result v1

    invoke-static {v1, v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 102
    const/4 v1, 0x0

    return v1
.end method
