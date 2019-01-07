.class public Laih;
.super Ljava/lang/Object;
.source "ThreadImpl.java"

# interfaces
.implements Laie;


# instance fields
.field protected a:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Laih;->b:Z

    .line 15
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    iput-object v0, p0, Laih;->a:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Laih;->c:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 25
    iget-boolean v0, p0, Laih;->b:Z

    if-nez v0, :cond_0

    .line 26
    invoke-static {p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Laih;->d:Ljava/util/concurrent/Callable;

    .line 27
    invoke-static {}, Laik;->a()Laij;

    move-result-object v0

    iget-object v1, p0, Laih;->d:Ljava/util/concurrent/Callable;

    const/4 v2, 0x0

    iget-object v3, p0, Laih;->c:Ljava/lang/String;

    iget-object v4, p0, Laih;->a:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-interface {v0, v1, v2, v3, v4}, Laij;->a(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Laih;->b:Z

    .line 30
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-boolean v0, p0, Laih;->b:Z

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Laih;->c:Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 34
    iget-boolean v0, p0, Laih;->b:Z

    if-nez v0, :cond_0

    .line 35
    invoke-static {p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Laih;->d:Ljava/util/concurrent/Callable;

    .line 36
    invoke-static {}, Laik;->a()Laij;

    move-result-object v0

    iget-object v2, p0, Laih;->d:Ljava/util/concurrent/Callable;

    const/4 v3, 0x0

    iget-object v4, p0, Laih;->c:Ljava/lang/String;

    iget-object v5, p0, Laih;->a:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Laij;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V

    .line 38
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 60
    invoke-static {}, Laik;->a()Laij;

    move-result-object v0

    iget-object v1, p0, Laih;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1, p1}, Laij;->a(Ljava/util/concurrent/Callable;Z)V

    .line 61
    return-void
.end method
