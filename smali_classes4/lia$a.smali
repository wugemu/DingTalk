.class final Llia$a;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Llia$c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Llkx;

.field private final d:Ljava/util/concurrent/ThreadFactory;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Llia$a;->d:Ljava/util/concurrent/ThreadFactory;

    .line 58
    if-eqz p4, :cond_1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Llia$a;->a:J

    .line 59
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Llia$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    new-instance v1, Llkx;

    invoke-direct {v1}, Llkx;-><init>()V

    iput-object v1, p0, Llia$a;->c:Llkx;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v7, 0x0

    .line 64
    .local v7, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p4, :cond_0

    .line 65
    const/4 v1, 0x1

    new-instance v2, Llia$a$1;

    invoke-direct {v2, p0, p1}, Llia$a$1;-><init>(Llia$a;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 72
    invoke-static {v0}, Llie;->a(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 73
    new-instance v1, Llia$a$2;

    invoke-direct {v1, p0}, Llia$a$2;-><init>(Llia$a;)V

    iget-wide v2, p0, Llia$a;->a:J

    iget-wide v4, p0, Llia$a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 82
    :cond_0
    iput-object v0, p0, Llia$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    iput-object v7, p0, Llia$a;->f:Ljava/util/concurrent/Future;

    .line 84
    return-void

    .line 58
    .end local v0    # "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v7    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Llia$c;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    iget-object v2, p0, Llia$a;->c:Llkx;

    invoke-virtual {v2}, Llkx;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v0, Llia;->a:Llia$c;

    .line 100
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v2, p0, Llia$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    iget-object v2, p0, Llia$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llia$c;

    .line 92
    .local v0, "threadWorker":Llia$c;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    .end local v0    # "threadWorker":Llia$c;
    :cond_1
    new-instance v1, Llia$c;

    iget-object v2, p0, Llia$a;->d:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v1, v2}, Llia$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 99
    .local v1, "w":Llia$c;
    iget-object v2, p0, Llia$a;->c:Llkx;

    invoke-virtual {v2, v1}, Llkx;->a(Llgz;)V

    move-object v0, v1

    .line 100
    goto :goto_0
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Llia$a;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Llia$a;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    :cond_0
    iget-object v0, p0, Llia$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Llia$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    iget-object v0, p0, Llia$a;->c:Llkx;

    invoke-virtual {v0}, Llkx;->unsubscribe()V

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    iget-object v1, p0, Llia$a;->c:Llkx;

    invoke-virtual {v1}, Llkx;->unsubscribe()V

    throw v0
.end method
