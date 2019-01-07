.class public Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;
.super Ljava/lang/Object;
.source "ThreadImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/threadpool/Thread;


# static fields
.field private static final TRACE:Ljava/lang/String; = "Trace"


# instance fields
.field private mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mPriority:Lcom/alibaba/doraemon/Priority;

.field private mStarted:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    .line 13
    sget-object v0, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private getName(Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    const-string/jumbo v0, ""

    .line 150
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    return-object v0
.end method

.method private getName(Ljava/util/concurrent/Callable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    const-string/jumbo v0, ""

    .line 159
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 163
    :cond_0
    return-object v0
.end method

.method private warnReuseThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Doraemon thread is reused error !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public addThread2Group(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 89
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    .line 90
    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->cancelTask(Ljava/util/concurrent/Callable;Z)V

    .line 79
    return-void
.end method

.method public cancelGroupThread(Z)V
    .locals 2
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->cancelGroup(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public dumpThreadStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->dumpThreadInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/alibaba/doraemon/Priority;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    return-object v0
.end method

.method public groupWaitingSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->groupWaitingSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->isTaskCancelled(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public pauseGroupThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->pauseGroup(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public removeThreadFromGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method public resumeGroupThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->resumeGroup(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setGroupConcurrents(I)V
    .locals 2
    .param p1, "concurrents"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->setGroupConcurrents(Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method public setPriority(Lcom/alibaba/doraemon/Priority;)V
    .locals 0
    .param p1, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    .line 84
    return-void
.end method

.method public start(Lcom/alibaba/doraemon/threadpool/ProgressCallable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/threadpool/ProgressCallable",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    .local p1, "task":Lcom/alibaba/doraemon/threadpool/ProgressCallable;, "Lcom/alibaba/doraemon/threadpool/ProgressCallable<*>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    .line 69
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    move-object v2, p1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->runTask(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/doraemon/Priority;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->warnReuseThread()V

    goto :goto_0
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 23
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;

    invoke-direct {v0, p1, v3}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    .line 25
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->getName(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->runTask(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/doraemon/Priority;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->warnReuseThread()V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;

    invoke-direct {v0, p2, v3}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    .line 36
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->runTask(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/doraemon/Priority;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->warnReuseThread()V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/Handler$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p2, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 57
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    .line 58
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->runTask(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/doraemon/Priority;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->warnReuseThread()V

    goto :goto_0
.end method

.method public start(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V
    .locals 6
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 46
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mCallable:Ljava/util/concurrent/Callable;

    .line 47
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->getName(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mPriority:Lcom/alibaba/doraemon/Priority;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->runTask(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/doraemon/Priority;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->mStarted:Z

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;->warnReuseThread()V

    goto :goto_0
.end method
