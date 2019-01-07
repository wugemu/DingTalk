.class Lrx/internal/schedulers/SchedulerWhen$DelayedAction;
.super Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedAction"
.end annotation


# instance fields
.field private final action:Llhf;

.field private final delayTime:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Llhf;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 285
    invoke-direct {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    .line 286
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->action:Llhf;

    .line 287
    iput-wide p2, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->delayTime:J

    .line 288
    iput-object p4, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->unit:Ljava/util/concurrent/TimeUnit;

    .line 289
    return-void
.end method


# virtual methods
.method protected callActual(Llgv$a;Llgr;)Llgz;
    .locals 4
    .param p1, "actualWorker"    # Llgv$a;
    .param p2, "actionCompletable"    # Llgr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 293
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$a;

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->action:Llhf;

    invoke-direct {v0, v1, p2}, Lrx/internal/schedulers/SchedulerWhen$a;-><init>(Llhf;Llgr;)V

    iget-wide v2, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->delayTime:J

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v2, v3, v1}, Llgv$a;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;

    move-result-object v0

    return-object v0
.end method
