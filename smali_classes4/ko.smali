.class final Lko;
.super Ljava/lang/Object;
.source "DispatcherTask.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lko;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Future;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:J

.field volatile d:Z

.field volatile e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "rawTask"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lko;->a:Ljava/lang/Runnable;

    .line 14
    iput v0, p0, Lko;->b:I

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lko;->c:J

    .line 16
    iput-boolean v0, p0, Lko;->d:Z

    .line 17
    iput-object v1, p0, Lko;->e:Ljava/util/concurrent/Future;

    .line 20
    iput-object p1, p0, Lko;->a:Ljava/lang/Runnable;

    .line 21
    if-gez p2, :cond_0

    move p2, v0

    .end local p2    # "priority":I
    :cond_0
    iput p2, p0, Lko;->b:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lko;->c:J

    .line 23
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lko;->d:Z

    .line 50
    iget-object v1, p0, Lko;->e:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lko;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    .line 53
    :cond_0
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 12
    check-cast p1, Lko;

    .line 1027
    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p0, Lko;->b:I

    iget v1, p1, Lko;->b:I

    if-eq v0, v1, :cond_0

    .line 1028
    iget v0, p0, Lko;->b:I

    iget v1, p1, Lko;->b:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 1030
    :cond_0
    iget-wide v0, p1, Lko;->c:J

    iget-wide v2, p0, Lko;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 12
    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lko;->d:Z

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    :try_start_0
    iget-boolean v0, p0, Lko;->d:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lkq;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lko;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lko;->e:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    iget v0, p0, Lko;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lko;->b:I

    .line 43
    iget v0, p0, Lko;->b:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1f4

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lkq;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
