.class public final Ldxc;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/alibaba/doraemon/Priority;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "concurrentCount"    # I
    .param p3, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ldxc;->a:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Ldxc;->b:I

    .line 21
    iput-object p3, p0, Ldxc;->c:Lcom/alibaba/doraemon/Priority;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldxc;->d:Z

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Ldxc;->d:Z

    .line 33
    invoke-virtual {p0}, Ldxc;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancelGroupThread(Z)V

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 26
    iget-boolean v0, p0, Ldxc;->d:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Ldxc;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final b()Lcom/alibaba/doraemon/threadpool/Thread;
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
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Ldxc;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 40
    iget v1, p0, Ldxc;->b:I

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 41
    iget-object v1, p0, Ldxc;->c:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 42
    return-object v0
.end method
