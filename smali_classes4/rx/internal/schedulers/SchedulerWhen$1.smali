.class final Lrx/internal/schedulers/SchedulerWhen$1;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Llhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulerWhen;->a()Llgv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhk",
        "<",
        "Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;",
        "Llgq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llgv$a;

.field final synthetic b:Lrx/internal/schedulers/SchedulerWhen;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen;Llgv$a;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/schedulers/SchedulerWhen;

    .prologue
    .line 138
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$1;->b:Lrx/internal/schedulers/SchedulerWhen;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$1;->a:Llgv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    check-cast p1, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    .line 1141
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$1$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/schedulers/SchedulerWhen$1$1;-><init>(Lrx/internal/schedulers/SchedulerWhen$1;Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)V

    invoke-static {v0}, Llgq;->a(Llgq$a;)Llgq;

    move-result-object v0

    .line 138
    return-object v0
.end method
