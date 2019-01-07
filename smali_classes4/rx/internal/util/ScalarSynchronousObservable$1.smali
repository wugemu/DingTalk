.class final Lrx/internal/util/ScalarSynchronousObservable$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Llhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->b(Llgv;)Llgs;
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
        "Llhf;",
        "Llgz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llib;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Llib;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/util/ScalarSynchronousObservable;

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable$1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->a:Llib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable$1;"
    check-cast p1, Llhf;

    .line 1102
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->a:Llib;

    .line 1135
    iget-object v0, v0, Llib;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llib$b;

    invoke-virtual {v0}, Llib$b;->a()Llib$c;

    move-result-object v0

    .line 1136
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Llib$c;->b(Llhf;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 99
    return-object v0
.end method
