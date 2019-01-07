.class final Llhd$a;
.super Llgv$a;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Llkx;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 52
    invoke-direct {p0}, Llgv$a;-><init>()V

    .line 50
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Llhd$a;->b:Llkx;

    .line 53
    iput-object p1, p0, Llhd$a;->a:Landroid/os/Handler;

    .line 54
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
    .line 92
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Llhd$a;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
    .locals 4
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 68
    iget-object v1, p0, Llhd$a;->b:Llkx;

    invoke-virtual {v1}, Llkx;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Llha;->a()Llha;

    move-result-object v1

    invoke-virtual {v1}, Llha;->b()Llhb;

    invoke-static {p1}, Llhb;->a(Llhf;)Llhf;

    move-result-object p1

    .line 74
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Llhf;)V

    .line 75
    .local v0, "scheduledAction":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Llhd$a;->b:Llkx;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Llkx;)V

    .line 76
    iget-object v1, p0, Llhd$a;->b:Llkx;

    invoke-virtual {v1, v0}, Llkx;->a(Llgz;)V

    .line 78
    iget-object v1, p0, Llhd$a;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    new-instance v1, Llhd$a$1;

    invoke-direct {v1, p0, v0}, Llhd$a$1;-><init>(Llhd$a;Lrx/internal/schedulers/ScheduledAction;)V

    invoke-static {v1}, Llkz;->a(Llhf;)Llgz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Llgz;)V

    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Llhd$a;->b:Llkx;

    invoke-virtual {v0}, Llkx;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Llhd$a;->b:Llkx;

    invoke-virtual {v0}, Llkx;->unsubscribe()V

    .line 59
    return-void
.end method
