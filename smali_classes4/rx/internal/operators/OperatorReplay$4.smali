.class final Lrx/internal/operators/OperatorReplay$4;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->a(Llgs;Llhj;)Llkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Llhj;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Llhj;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$4;->b:Llhj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 202
    check-cast p1, Llgy;

    .line 1209
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$b;

    .line 1211
    if-nez v0, :cond_1

    .line 1213
    new-instance v2, Lrx/internal/operators/OperatorReplay$b;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$4;->b:Llhj;

    invoke-interface {v1}, Llhj;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$a;

    invoke-direct {v2, v1}, Lrx/internal/operators/OperatorReplay$b;-><init>(Lrx/internal/operators/OperatorReplay$a;)V

    .line 1215
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$b;->b()V

    .line 1217
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 1227
    :cond_1
    new-instance v1, Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;-><init>(Lrx/internal/operators/OperatorReplay$b;Llgy;)V

    .line 1231
    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorReplay$b;->a(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z

    .line 1234
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 1237
    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$b;->a:Lrx/internal/operators/OperatorReplay$a;

    invoke-interface {v0, v1}, Lrx/internal/operators/OperatorReplay$a;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 1241
    invoke-virtual {p1, v1}, Llgy;->a(Llgu;)V

    .line 202
    return-void
.end method
