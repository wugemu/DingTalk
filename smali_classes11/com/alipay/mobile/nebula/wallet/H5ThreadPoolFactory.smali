.class public Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;
.super Ljava/lang/Object;
.source "H5ThreadPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;,
        Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ThreadPoolFactory"

.field private static orderedExecutor:Ljava/util/concurrent/Executor;

.field private static scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 11

    .prologue
    .line 41
    const-class v10, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x8

    const/16 v3, 0x20

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$1;

    invoke-direct {v8}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$1;-><init>()V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized getDefaultScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    .prologue
    .line 70
    const-class v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x3

    new-instance v3, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$2;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$2;-><init>()V

    new-instance v4, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 82
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 30
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 32
    sput-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 33
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getDefaultExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    goto :goto_0
.end method

.method static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 60
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    .line 62
    sput-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 66
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getDefaultScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getSingleThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 11

    .prologue
    .line 86
    const-class v10, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->orderedExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 87
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x28

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;

    const-string/jumbo v0, "H5_SingleThreadExecutor_for_log"

    invoke-direct {v8, v0}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->orderedExecutor:Ljava/util/concurrent/Executor;

    .line 93
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->orderedExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method
