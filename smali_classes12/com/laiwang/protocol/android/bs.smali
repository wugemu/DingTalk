.class public Lcom/laiwang/protocol/android/bs;
.super Lcom/laiwang/protocol/android/bu;
.source "DefaultExecutor.java"


# instance fields
.field a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/laiwang/protocol/android/bu;-><init>()V

    .line 19
    new-instance v0, Lcom/laiwang/protocol/android/bs$1;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/bs$1;-><init>(Lcom/laiwang/protocol/android/bs;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bs;->c:Ljava/util/concurrent/ThreadFactory;

    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/bs;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/bs;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bs;->b:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lcom/laiwang/protocol/android/bs;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bs;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/laiwang/protocol/android/bs;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 47
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/laiwang/protocol/android/bs;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 37
    return-void
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMS"    # J

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/bs;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 42
    return-void
.end method

.method protected b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bs;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    .local v1, "service":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v1    # "service":Ljava/util/concurrent/ScheduledExecutorService;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "shutdown exception"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    return-void
.end method
