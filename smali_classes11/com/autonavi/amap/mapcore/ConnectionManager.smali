.class public Lcom/autonavi/amap/mapcore/ConnectionManager;
.super Lcom/autonavi/amap/mapcore/SingalThread;
.source "ConnectionManager.java"


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x1


# instance fields
.field private connPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/BaseMapLoader;",
            ">;"
        }
    .end annotation
.end field

.field threadFlag:Z

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private threadPoolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/AsMapRequestor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/SingalThread;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 19
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    return-void
.end method

.method private checkListPool()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 77
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/AsMapRequestor;

    .line 78
    iget-object v4, v0, Lcom/autonavi/amap/mapcore/AsMapRequestor;->mMapLoader:Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 79
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->hasFinished()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isRequestValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    .line 76
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private doAsyncRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_4

    .line 110
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    monitor-enter v3

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->checkListPool()V

    .line 113
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    .line 132
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v0, :cond_3

    .line 135
    const-wide/16 v4, 0x1e

    :try_start_1
    invoke-static {v4, v5}, Lcom/autonavi/amap/mapcore/ConnectionManager;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0

    .line 119
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 120
    new-instance v4, Lcom/autonavi/amap/mapcore/AsMapRequestor;

    invoke-direct {v4, v0}, Lcom/autonavi/amap/mapcore/AsMapRequestor;-><init>(Lcom/autonavi/amap/mapcore/BaseMapLoader;)V

    .line 124
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 148
    :cond_3
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_0

    .line 150
    :try_start_3
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->doWait()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 156
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method checkListPoolOld()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/AsMapRequestor;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/AsMapRequestor;->mMapLoader:Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 57
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isRequestValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->hasFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method public insertConntionTask(Lcom/autonavi/amap/mapcore/BaseMapLoader;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->doAwake()V

    .line 47
    return-void

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/fh;->a()V

    .line 98
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->doAsyncRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public shutDown()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/BaseMapLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 33
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 37
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
