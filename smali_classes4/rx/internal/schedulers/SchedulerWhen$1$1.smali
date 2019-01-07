.class final Lrx/internal/schedulers/SchedulerWhen$1$1;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Llgq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

.field final synthetic b:Lrx/internal/schedulers/SchedulerWhen$1;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen$1;Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)V
    .locals 0
    .param p1, "this$1"    # Lrx/internal/schedulers/SchedulerWhen$1;

    .prologue
    .line 141
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->b:Lrx/internal/schedulers/SchedulerWhen$1;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->a:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    check-cast p1, Llgr;

    .line 1144
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->a:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-interface {p1, v0}, Llgr;->onSubscribe(Llgz;)V

    .line 1145
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->a:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->b:Lrx/internal/schedulers/SchedulerWhen$1;

    iget-object v1, v1, Lrx/internal/schedulers/SchedulerWhen$1;->a:Llgv$a;

    invoke-static {v0, v1, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Llgv$a;Llgr;)V

    .line 141
    return-void
.end method
