.class public final Liab;
.super Ljava/lang/Object;
.source "WKThreadExecutor.java"

# interfaces
.implements Lcom/alibaba/wukong/WKExecutor;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Liab;-><init>(Ljava/lang/String;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v1, "wk_thread_group"

    iput-object v1, p0, Liab;->a:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    iput-object p1, p0, Liab;->a:Ljava/lang/String;

    .line 26
    :cond_0
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 27
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Liab;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, p2}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-virtual {p0, p1, v0}, Liab;->execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V

    .line 35
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "priority"    # Lcom/alibaba/doraemon/Priority;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 42
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v1, p0, Liab;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 43
    if-nez p2, :cond_1

    .line 44
    sget-object v1, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 48
    :goto_1
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v0, p2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    goto :goto_1
.end method
