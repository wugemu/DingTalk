.class final Llib$a;
.super Llgv$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Llio;

.field private final b:Llkx;

.field private final c:Llio;

.field private final d:Llib$c;


# direct methods
.method constructor <init>(Llib$c;)V
    .locals 4
    .param p1, "poolWorker"    # Llib$c;

    .prologue
    .line 145
    invoke-direct {p0}, Llgv$a;-><init>()V

    .line 140
    new-instance v0, Llio;

    invoke-direct {v0}, Llio;-><init>()V

    iput-object v0, p0, Llib$a;->a:Llio;

    .line 141
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Llib$a;->b:Llkx;

    .line 142
    new-instance v0, Llio;

    const/4 v1, 0x2

    new-array v1, v1, [Llgz;

    const/4 v2, 0x0

    iget-object v3, p0, Llib$a;->a:Llio;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Llib$a;->b:Llkx;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Llio;-><init>([Llgz;)V

    iput-object v0, p0, Llib$a;->c:Llio;

    .line 146
    iput-object p1, p0, Llib$a;->d:Llib$c;

    .line 148
    return-void
.end method


# virtual methods
.method public final a(Llhf;)Llgz;
    .locals 6
    .param p1, "action"    # Llhf;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 162
    invoke-virtual {p0}, Llib$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llib$a;->d:Llib$c;

    new-instance v1, Llib$a$1;

    invoke-direct {v1, p0, p1}, Llib$a$1;-><init>(Llib$a;Llhf;)V

    iget-object v2, p0, Llib$a;->a:Llio;

    .line 1271
    invoke-static {v1}, Llkm;->a(Llhf;)Llhf;

    move-result-object v3

    .line 1272
    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v1, v3, v2}, Lrx/internal/schedulers/ScheduledAction;-><init>(Llhf;Llio;)V

    .line 1273
    invoke-virtual {v2, v1}, Llio;->a(Llgz;)V

    .line 1276
    cmp-long v2, v4, v4

    if-gtz v2, :cond_1

    .line 1277
    iget-object v0, v0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1281
    :goto_1
    invoke-virtual {v1, v0}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    move-object v0, v1

    .line 166
    goto :goto_0

    .line 1279
    :cond_1
    iget-object v0, v0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
    .locals 4
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    invoke-virtual {p0}, Llib$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llib$a;->d:Llib$c;

    new-instance v1, Llib$a$2;

    invoke-direct {v1, p0, p1}, Llib$a$2;-><init>(Llib$a;Llhf;)V

    iget-object v2, p0, Llib$a;->b:Llkx;

    .line 2255
    invoke-static {v1}, Llkm;->a(Llhf;)Llhf;

    move-result-object v3

    .line 2256
    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v1, v3, v2}, Lrx/internal/schedulers/ScheduledAction;-><init>(Llhf;Llkx;)V

    .line 2257
    invoke-virtual {v2, v1}, Llkx;->a(Llgz;)V

    .line 2260
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 2261
    iget-object v0, v0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2265
    :goto_1
    invoke-virtual {v1, v0}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 2263
    :cond_1
    iget-object v0, v0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Llib$a;->c:Llio;

    invoke-virtual {v0}, Llio;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Llib$a;->c:Llio;

    invoke-virtual {v0}, Llio;->unsubscribe()V

    .line 153
    return-void
.end method
