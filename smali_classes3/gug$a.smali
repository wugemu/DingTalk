.class public final Lgug$a;
.super Ljava/lang/Object;
.source "RecruitmentDataProvider.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lgug$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 95
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "thread_group_recruitment"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 97
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 98
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
