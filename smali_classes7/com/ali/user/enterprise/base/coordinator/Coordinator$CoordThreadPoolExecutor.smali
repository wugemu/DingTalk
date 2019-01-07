.class public Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "Coordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/enterprise/base/coordinator/Coordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoordThreadPoolExecutor"
.end annotation


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 168
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 190
    instance-of v1, p2, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 191
    check-cast v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    .line 192
    .local v0, "standaloneTask":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 196
    .end local v0    # "standaloneTask":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "queuePriority"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 175
    instance-of v1, p1, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    if-eqz v1, :cond_0

    .line 176
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    invoke-direct {v0, p1}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;-><init>(Ljava/lang/Runnable;)V

    .line 179
    .local v0, "s1":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    if-gtz p2, :cond_1

    .line 180
    const/4 p2, 0x1

    .line 182
    :cond_1
    iput p2, v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mPriorityQueue:I

    .line 183
    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
