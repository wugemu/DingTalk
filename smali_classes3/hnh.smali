.class public final Lhnh;
.super Ljava/lang/Object;
.source "H5ThreadPoolProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static declared-synchronized a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 11

    .prologue
    .line 33
    const-class v10, Lhnh;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lhnh;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 34
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x8

    const/16 v3, 0x20

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lhnh$1;

    invoke-direct {v8}, Lhnh$1;-><init>()V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lhnh;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    :cond_0
    sget-object v0, Lhnh;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method private static declared-synchronized b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    .prologue
    .line 48
    const-class v1, Lhnh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhnh;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x3

    new-instance v3, Lhnh$2;

    invoke-direct {v3}, Lhnh$2;-><init>()V

    new-instance v4, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lhnh;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 59
    :cond_0
    sget-object v0, Lhnh;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p1, "scheduleType"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lhnh;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public final getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lhnh;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public final submitOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 29
    return-void
.end method
