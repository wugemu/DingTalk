.class public final Lrx/internal/schedulers/SchedulerWhen;
.super Llgv;
.source "SchedulerWhen.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/SchedulerWhen$a;,
        Lrx/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation


# static fields
.field static final a:Llgz;

.field static final b:Llgz;


# instance fields
.field private final c:Llgv;

.field private final d:Llgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgt",
            "<",
            "Llgs",
            "<",
            "Llgq;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Llgz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$3;

    invoke-direct {v0}, Lrx/internal/schedulers/SchedulerWhen$3;-><init>()V

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->a:Llgz;

    .line 205
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->b:Llgz;

    return-void
.end method


# virtual methods
.method public final a()Llgv$a;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    iget-object v5, p0, Lrx/internal/schedulers/SchedulerWhen;->c:Llgv;

    invoke-virtual {v5}, Llgv;->a()Llgv$a;

    move-result-object v3

    .line 135
    .local v3, "actualWorker":Llgv$a;
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->a()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v1

    .line 136
    .local v1, "actionSubject":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v0, Llkh;

    invoke-direct {v0, v1}, Llkh;-><init>(Llgt;)V

    .line 138
    .local v0, "actionObserver":Llgt;, "Llgt<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v5, Lrx/internal/schedulers/SchedulerWhen$1;

    invoke-direct {v5, p0, v3}, Lrx/internal/schedulers/SchedulerWhen$1;-><init>(Lrx/internal/schedulers/SchedulerWhen;Llgv$a;)V

    invoke-virtual {v1, v5}, Lrx/internal/operators/BufferUntilSubscriber;->a(Llhk;)Llgs;

    move-result-object v2

    .line 152
    .local v2, "actions":Llgs;, "Llgs<Llgq;>;"
    new-instance v4, Lrx/internal/schedulers/SchedulerWhen$2;

    invoke-direct {v4, p0, v3, v0}, Lrx/internal/schedulers/SchedulerWhen$2;-><init>(Lrx/internal/schedulers/SchedulerWhen;Llgv$a;Llgt;)V

    .line 188
    .local v4, "worker":Llgv$a;
    iget-object v5, p0, Lrx/internal/schedulers/SchedulerWhen;->d:Llgt;

    invoke-interface {v5, v2}, Llgt;->onNext(Ljava/lang/Object;)V

    .line 191
    return-object v4
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->e:Llgz;

    invoke-interface {v0}, Llgz;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->e:Llgz;

    invoke-interface {v0}, Llgz;->unsubscribe()V

    .line 123
    return-void
.end method
