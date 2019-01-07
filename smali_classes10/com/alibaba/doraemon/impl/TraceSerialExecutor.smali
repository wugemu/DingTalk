.class public Lcom/alibaba/doraemon/impl/TraceSerialExecutor;
.super Ljava/lang/Object;
.source "TraceSerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private mGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "threadGroup"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/TraceSerialExecutor;->mGroup:Ljava/lang/String;

    .line 17
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 18
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/TraceSerialExecutor;->mGroup:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 25
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/TraceSerialExecutor;->mGroup:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 26
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 27
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method

.method public execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "priority"    # Lcom/alibaba/doraemon/Priority;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 32
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/TraceSerialExecutor;->mGroup:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, p2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 34
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method public groupWaitingSize()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 39
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/TraceSerialExecutor;->mGroup:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->groupWaitingSize(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
