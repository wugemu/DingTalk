.class final Lrx/internal/schedulers/SchedulerWhen$2;
.super Llgv$a;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulerWhen;->a()Llgv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llgv$a;

.field final synthetic b:Llgt;

.field final synthetic c:Lrx/internal/schedulers/SchedulerWhen;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen;Llgv$a;Llgt;)V
    .locals 1
    .param p1, "this$0"    # Lrx/internal/schedulers/SchedulerWhen;

    .prologue
    .line 152
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->c:Lrx/internal/schedulers/SchedulerWhen;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$2;->a:Llgv$a;

    iput-object p3, p0, Lrx/internal/schedulers/SchedulerWhen$2;->b:Llgt;

    invoke-direct {p0}, Llgv$a;-><init>()V

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Llhf;)Llgz;
    .locals 2
    .param p1, "action"    # Llhf;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 181
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;-><init>(Llhf;)V

    .line 182
    .local v0, "immediateAction":Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->b:Llgt;

    invoke-interface {v1, v0}, Llgt;->onNext(Ljava/lang/Object;)V

    .line 183
    return-object v0
.end method

.method public final a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
    .locals 2
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 173
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;-><init>(Llhf;JLjava/util/concurrent/TimeUnit;)V

    .line 174
    .local v0, "delayedAction":Lrx/internal/schedulers/SchedulerWhen$DelayedAction;
    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->b:Llgt;

    invoke-interface {v1, v0}, Llgt;->onNext(Ljava/lang/Object;)V

    .line 175
    return-object v0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->a:Llgv$a;

    invoke-virtual {v0}, Llgv$a;->unsubscribe()V

    .line 161
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->b:Llgt;

    invoke-interface {v0}, Llgt;->onCompleted()V

    .line 163
    :cond_0
    return-void
.end method
