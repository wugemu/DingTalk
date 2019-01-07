.class public Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "MtopSDKThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;
    }
.end annotation


# static fields
.field private static final CALLBACK_EXECUTOR_SIZE:I = 0x2

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE_TIME:I = 0x3c

.field private static final QUEENSIZE:I = 0x80

.field private static final REQUEST_CORE_POOL_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopSDKThreadPoolExecutorFactory"

.field private static volatile callbackExecutors:[Ljava/util/concurrent/ExecutorService;

.field private static priority:I

.field private static volatile requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xa

    sput v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .param p0, "coreSize"    # I
    .param p1, "maxSize"    # I
    .param p2, "keepAliveTime"    # I
    .param p3, "queenSize"    # I
    .param p4, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 163
    if-lez p3, :cond_1

    .line 164
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 168
    .local v7, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, p0

    move v3, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 169
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    if-lez p2, :cond_0

    .line 170
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 172
    :cond_0
    return-object v1

    .line 166
    .end local v1    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_1
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .restart local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    goto :goto_0
.end method

.method public static getCallbackExecutorServices()[Ljava/util/concurrent/ExecutorService;
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 91
    sget-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    .line 92
    const-class v2, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;

    monitor-enter v2

    .line 93
    :try_start_0
    sget-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/concurrent/ExecutorService;

    sput-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_0

    .line 96
    sget-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x3c

    const/4 v6, 0x0

    new-instance v7, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;

    sget v8, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "CallbackPool"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v4, v5, v6, v7}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    aput-object v3, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    sget-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    return-object v1

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .prologue
    .line 69
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x3

    const/4 v2, 0x3

    const/16 v3, 0x3c

    const/16 v4, 0x80

    new-instance v5, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;

    sget v6, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    invoke-direct {v5, v6}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;-><init>(I)V

    invoke-static {v0, v2, v3, v4, v5}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .prologue
    .line 80
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x3

    const/4 v2, 0x3

    const/16 v3, 0x3c

    const/4 v4, 0x0

    new-instance v5, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;

    sget v6, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    const-string/jumbo v7, "RequestPool"

    invoke-direct {v5, v6, v7}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2, v3, v4, v5}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setCallbackExecutorServices([Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p0, "callbackExecutors"    # [Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 116
    sput-object p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    .line 118
    :cond_0
    return-void
.end method

.method public static setDefaultThreadPoolExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 106
    if-eqz p0, :cond_0

    .line 107
    sput-object p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 109
    :cond_0
    return-void
.end method

.method public static setRequestThreadPoolExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    .line 122
    sput-object p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 124
    :cond_0
    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 130
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.MtopSDKThreadPoolExecutorFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[submit]submit runnable to Mtop Default ThreadPool error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 7
    .param p0, "id"    # I
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 141
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getCallbackExecutorServices()[Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    array-length v3, v4

    .line 142
    .local v3, "size":I
    rem-int v4, p0, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 143
    .local v2, "num":I
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getCallbackExecutorServices()[Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v4, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    .end local v2    # "num":I
    .end local v3    # "size":I
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "mtopsdk.MtopSDKThreadPoolExecutorFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[submitCallbackTask]submit runnable to Mtop Callback ThreadPool error ---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static submitRequestTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 154
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.MtopSDKThreadPoolExecutorFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[submitRequestTask]submit runnable to Mtop Request ThreadPool error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
