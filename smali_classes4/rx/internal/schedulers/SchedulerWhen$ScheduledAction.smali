.class abstract Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SchedulerWhen.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Llgz;",
        ">;",
        "Llgz;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->a:Llgz;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Llgv$a;Llgr;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    .param p1, "x1"    # Llgv$a;
    .param p2, "x2"    # Llgr;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Llgv$a;Llgr;)V

    return-void
.end method

.method private call(Llgv$a;Llgr;)V
    .locals 3
    .param p1, "actualWorker"    # Llgv$a;
    .param p2, "actionCompletable"    # Llgr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 214
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgz;

    .line 216
    .local v1, "oldState":Llgz;
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->b:Llgz;

    if-ne v1, v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->a:Llgz;

    if-ne v1, v2, :cond_0

    .line 227
    invoke-virtual {p0, p1, p2}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Llgv$a;Llgr;)Llgz;

    move-result-object v0

    .line 229
    .local v0, "newState":Llgz;
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->a:Llgz;

    invoke-virtual {p0, v2, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-interface {v0}, Llgz;->unsubscribe()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract callActual(Llgv$a;Llgr;)Llgz;
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgz;

    invoke-interface {v0}, Llgz;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 249
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->b:Llgz;

    .line 251
    .local v0, "newState":Llgz;
    :cond_0
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgz;

    .line 252
    .local v1, "oldState":Llgz;
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->b:Llgz;

    if-ne v1, v2, :cond_2

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    invoke-virtual {p0, v1, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->a:Llgz;

    if-eq v1, v2, :cond_1

    .line 260
    invoke-interface {v1}, Llgz;->unsubscribe()V

    goto :goto_0
.end method
