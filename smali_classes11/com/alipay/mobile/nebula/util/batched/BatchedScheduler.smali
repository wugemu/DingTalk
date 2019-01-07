.class public abstract Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
.super Ljava/lang/Object;
.source "BatchedScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final batchedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private scheduleHandler:Landroid/os/Handler;

.field private scheduleHandlerThread:Landroid/os/HandlerThread;

.field private scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler",
            "<TT;>.ScheduleRunnable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 36
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;-><init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Batched@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->cloneAndExecute()V

    return-void
.end method

.method private cloneAndExecute()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "cloneAndExecute"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    monitor-exit v2

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 139
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->doExecute(Ljava/util/List;)V

    goto :goto_0

    .line 139
    .end local v0    # "tasks":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doExecute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;-><init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method


# virtual methods
.method public abstract onSchedule(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public pause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    .local p1, "task":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cannot post task because BatchedScheduler is shut down!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->access$100(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->cancel()V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v2

    if-le v0, v2, :cond_6

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "schedule now! size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->access$100(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->cancel()V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->cloneAndExecute()V

    .line 104
    monitor-exit v1

    goto :goto_0

    .line 106
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->access$100(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->start()V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public resume()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    .line 52
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "not resume because not paused"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "resume!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    monitor-enter v7

    .line 58
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "=== resume schedule batched tasks begin===="

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 60
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v6

    div-int v0, v3, v6

    .line 62
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v6

    mul-int v4, v2, v6

    .line 64
    .local v4, "start":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v8

    mul-int v1, v6, v8

    .line 65
    .local v1, "end":I
    if-le v1, v3, :cond_1

    .line 66
    move v1, v3

    .line 68
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v6, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->doExecute(Ljava/util/List;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "end":I
    .end local v4    # "start":I
    .end local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 72
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "=== resume schedule batched tasks over===="

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    monitor-exit v7

    goto :goto_0

    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public shutdown()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shutdown"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iput-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    .line 121
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->cloneAndExecute()V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 124
    iput-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    goto :goto_0
.end method

.method protected thresholdInterval()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method protected thresholdSize()I
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>;"
    const/16 v0, 0x10

    return v0
.end method
