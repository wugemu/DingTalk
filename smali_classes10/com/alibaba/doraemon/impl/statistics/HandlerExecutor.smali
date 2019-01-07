.class public Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field private isQuite:Z

.field private messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;",
            ">;"
        }
    .end annotation
.end field

.field private runnableBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->isQuite:Z

    .line 31
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$1;-><init>(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->thread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->isQuite:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public correctTaskDelay()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    :goto_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 223
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    .line 224
    .local v2, "task":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    if-eqz v2, :cond_2

    .line 229
    iget-wide v4, v2, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->executeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v5

    new-array v5, v5, [Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    .line 231
    .local v3, "tasks":[Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    .line 232
    .local v1, "t":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    if-eqz v1, :cond_0

    .line 236
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->access$200(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->access$200(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->executeTime:J

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 231
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 243
    .end local v1    # "t":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    .end local v3    # "tasks":[Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 245
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, " task has correct to run "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->executeTime:J

    .line 246
    invoke-virtual {v4, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, " now "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 248
    const-string/jumbo v4, "HandlerExecutor"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    .line 252
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->access$200(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->access$200(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/16 :goto_0

    .line 256
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "task":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    :cond_2
    return-void
.end method

.method public doExit()V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->isQuite:Z

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doPost(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :goto_0
    return-void

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public doPostDelay(Ljava/lang/Runnable;J)V
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMS"    # J

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v0, :cond_1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0xa

    new-instance v3, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$2;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$2;-><init>(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 100
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    new-instance v1, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;-><init>(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;Ljava/lang/Runnable;JLjava/lang/String;)V

    .line 104
    .local v1, "delayTask":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 118
    :goto_0
    return-void

    .line 100
    .end local v1    # "delayTask":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    .restart local v1    # "delayTask":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    :cond_2
    monitor-enter p0

    .line 110
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 118
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 113
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    if-nez v0, :cond_4

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public doShutdown()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->doExit()V

    .line 134
    return-void
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method getHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v3, :cond_0

    .line 175
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->messageQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    .line 145
    .local v0, "delayTask":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->access$200(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)Ljava/lang/Runnable;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 147
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 148
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v0    # "delayTask":Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 156
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 159
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 163
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_4
    monitor-enter p0

    .line 166
    :try_start_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 167
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    :cond_5
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    if-nez v3, :cond_6

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    .line 174
    :cond_6
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->runnableBuffer:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
