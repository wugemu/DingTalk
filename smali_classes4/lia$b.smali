.class final Llia$b;
.super Llgv$a;
.source "CachedThreadScheduler.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Llkx;

.field private final c:Llia$a;

.field private final d:Llia$c;


# direct methods
.method constructor <init>(Llia$a;)V
    .locals 1
    .param p1, "pool"    # Llia$a;

    .prologue
    .line 185
    invoke-direct {p0}, Llgv$a;-><init>()V

    .line 180
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Llia$b;->b:Llkx;

    .line 186
    iput-object p1, p0, Llia$b;->c:Llia$a;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Llia$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    invoke-virtual {p1}, Llia$a;->a()Llia$c;

    move-result-object v0

    iput-object v0, p0, Llia$b;->d:Llia$c;

    .line 189
    return-void
.end method


# virtual methods
.method public final a(Llhf;)Llgz;
    .locals 3
    .param p1, "action"    # Llhf;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Llia$b;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
    .locals 4
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 219
    iget-object v1, p0, Llia$b;->b:Llkx;

    invoke-virtual {v1}, Llkx;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Llia$b;->d:Llia$c;

    new-instance v2, Llia$b$1;

    invoke-direct {v2, p0, p1}, Llia$b$1;-><init>(Llia$b;Llhf;)V

    invoke-virtual {v1, v2, p2, p3, p4}, Llia$c;->b(Llhf;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 233
    .local v0, "s":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Llia$b;->b:Llkx;

    invoke-virtual {v1, v0}, Llkx;->a(Llgz;)V

    .line 234
    iget-object v1, p0, Llia$b;->b:Llkx;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Llkx;)V

    goto :goto_0
.end method

.method public final call()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Llia$b;->c:Llia$a;

    iget-object v1, p0, Llia$b;->d:Llia$c;

    .line 2129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 2105
    iget-wide v4, v0, Llia$a;->a:J

    add-long/2addr v2, v4

    .line 2252
    iput-wide v2, v1, Llia$c;->a:J

    .line 2107
    iget-object v0, v0, Llia$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Llia$b;->b:Llkx;

    invoke-virtual {v0}, Llkx;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Llia$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Llia$b;->d:Llia$c;

    .line 1222
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Llie;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;

    .line 199
    :cond_0
    iget-object v0, p0, Llia$b;->b:Llkx;

    invoke-virtual {v0}, Llkx;->unsubscribe()V

    .line 200
    return-void
.end method
