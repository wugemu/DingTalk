.class Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
.super Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateAction"
.end annotation


# instance fields
.field private final action:Llhf;


# direct methods
.method public constructor <init>(Llhf;)V
    .locals 0
    .param p1, "action"    # Llhf;

    .prologue
    .line 269
    invoke-direct {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    .line 270
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Llhf;

    .line 271
    return-void
.end method


# virtual methods
.method protected callActual(Llgv$a;Llgr;)Llgz;
    .locals 2
    .param p1, "actualWorker"    # Llgv$a;
    .param p2, "actionCompletable"    # Llgr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 275
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$a;

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Llhf;

    invoke-direct {v0, v1, p2}, Lrx/internal/schedulers/SchedulerWhen$a;-><init>(Llhf;Llgr;)V

    invoke-virtual {p1, v0}, Llgv$a;->a(Llhf;)Llgz;

    move-result-object v0

    return-object v0
.end method
