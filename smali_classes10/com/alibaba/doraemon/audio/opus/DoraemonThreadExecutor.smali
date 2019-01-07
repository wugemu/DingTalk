.class public Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;
.super Ljava/lang/Object;
.source "DoraemonThreadExecutor.java"


# instance fields
.field private concurrentCount:I

.field private groupName:Ljava/lang/String;

.field private priority:Lcom/alibaba/doraemon/Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "concurrentCount"    # I
    .param p3, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->groupName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->concurrentCount:I

    .line 19
    iput-object p3, p0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->priority:Lcom/alibaba/doraemon/Priority;

    .line 20
    return-void
.end method

.method private createThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

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
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->groupName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 33
    iget v1, p0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->concurrentCount:I

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 34
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->priority:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 28
    :cond_0
    return-void
.end method
