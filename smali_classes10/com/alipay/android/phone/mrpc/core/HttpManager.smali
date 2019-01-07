.class public Lcom/alipay/android/phone/mrpc/core/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/Transport;


# static fields
.field private static final CORE_SIZE:I = 0xa

.field private static HTTP_MANAGER:Lcom/alipay/android/phone/mrpc/core/HttpManager; = null

.field private static final KEEP_ALIVE_TIME:I = 0x3

.field private static final POOL_SIZE:I = 0xb

.field private static final QUEUE_SIZE:I = 0x14

.field public static final TAG:Ljava/lang/String; = "HttpManager"

.field private static final THREADFACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mAllConnectTimes:J

.field private mAllDataSize:J

.field private mAllSocketTimes:J

.field mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

.field private mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mRequestTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->HTTP_MANAGER:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    .line 196
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpManager$2;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/HttpManager$2;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->THREADFACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->init()V

    .line 59
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/HttpManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->HTTP_MANAGER:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->HTTP_MANAGER:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->syncCreateInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/HttpManager;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 88
    const-string/jumbo v0, "android"

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mHttpClient:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    .line 91
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v8, Lcom/alipay/android/phone/mrpc/core/HttpManager;->THREADFACTORY:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 99
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 100
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private makeTask(Lcom/alipay/android/phone/mrpc/core/HttpWorker;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p1, "httpWorker"    # Lcom/alipay/android/phone/mrpc/core/HttpWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/HttpWorker;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/alipay/android/phone/mrpc/core/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;-><init>(Lcom/alipay/android/phone/mrpc/core/HttpManager;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/HttpWorker;)V

    .line 172
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/alipay/android/phone/mrpc/core/Response;>;"
    return-object v0
.end method

.method private static final declared-synchronized syncCreateInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/HttpManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-class v1, Lcom/alipay/android/phone/mrpc/core/HttpManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->HTTP_MANAGER:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->HTTP_MANAGER:Lcom/alipay/android/phone/mrpc/core/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit v1

    return-object v0

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;-><init>(Landroid/content/Context;)V

    .line 80
    sput-object v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->HTTP_MANAGER:Lcom/alipay/android/phone/mrpc/core/HttpManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllConnectTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllConnectTimes:J

    .line 228
    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mRequestTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mRequestTimes:I

    .line 229
    return-void
.end method

.method public addDataSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllDataSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllDataSize:J

    .line 218
    return-void
.end method

.method public addSocketTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllSocketTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllSocketTimes:J

    .line 239
    return-void
.end method

.method public close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 286
    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mHttpClient:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mHttpClient:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->close()V

    .line 291
    :cond_1
    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mHttpClient:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    .line 292
    return-void
.end method

.method public dumpPerf()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HttpManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->getAverageSpeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->getAverageConnectTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllDataSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllConnectTimes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllSocketTimes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mRequestTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/alipay/android/phone/mrpc/core/Request;)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "request"    # Lcom/alipay/android/phone/mrpc/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/android/phone/mrpc/core/Response;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    instance-of v3, p1, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    if-nez v3, :cond_0

    .line 104
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "request send error."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/mrpc/core/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->dumpPerf()Ljava/lang/String;

    :cond_1
    move-object v2, p1

    .line 111
    check-cast v2, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    .line 114
    .local v2, "urlHttpRequest":Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->generateWorker(Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/android/phone/mrpc/core/HttpWorker;

    move-result-object v0

    .line 115
    .local v0, "httpWorker":Lcom/alipay/android/phone/mrpc/core/HttpWorker;
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->makeTask(Lcom/alipay/android/phone/mrpc/core/HttpWorker;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    .line 117
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/alipay/android/phone/mrpc/core/Response;>;"
    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mParallelExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-object v1
.end method

.method protected generateWorker(Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/android/phone/mrpc/core/HttpWorker;
    .locals 1
    .param p1, "rpcHttpRequest"    # Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    .prologue
    .line 183
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;-><init>(Lcom/alipay/android/phone/mrpc/core/HttpManager;Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)V

    return-object v0
.end method

.method public getAverageConnectTime()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mRequestTimes:I

    if-nez v2, :cond_0

    .line 260
    const-wide/16 v0, 0x0

    .line 262
    :goto_0
    return-wide v0

    .line 261
    :cond_0
    iget-wide v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllConnectTimes:J

    iget v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mRequestTimes:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 262
    .local v0, "time":J
    goto :goto_0
.end method

.method public getAverageSpeed()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 247
    iget-wide v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllSocketTimes:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 250
    :goto_0
    return-wide v2

    .line 249
    :cond_0
    iget-wide v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllDataSize:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mAllSocketTimes:J

    div-long v0, v2, v4

    .line 250
    .local v0, "speed":J
    const/16 v2, 0xa

    shr-long v2, v0, v2

    goto :goto_0
.end method

.method public getHttpClient()Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mHttpClient:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    return-object v0
.end method
