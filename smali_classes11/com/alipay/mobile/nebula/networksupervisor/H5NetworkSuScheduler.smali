.class public Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;
.super Ljava/lang/Object;
.source "H5NetworkSuScheduler.java"


# static fields
.field private static volatile sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;


# instance fields
.field private entityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    .line 24
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xc8

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;

    const-string/jumbo v0, "H5_SingleThreadExecutor_for_NetworkSupervisor"

    invoke-direct {v8, v0}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->executor:Ljava/util/concurrent/Executor;

    .line 29
    return-void
.end method

.method private execInternal(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V
    .locals 3
    .param p1, "h5NetworkSupervisor"    # Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-object v2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    monitor-exit v2

    .line 79
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v0, "tmpEntityList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 64
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;-><init>(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;Ljava/util/List;Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 64
    .end local v0    # "tmpEntityList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public exec()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    .line 50
    .local v0, "h5NetworkSupervisor":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;
    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->execInternal(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V

    goto :goto_0
.end method

.method public post(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;)V
    .locals 2
    .param p1, "entity"    # Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
