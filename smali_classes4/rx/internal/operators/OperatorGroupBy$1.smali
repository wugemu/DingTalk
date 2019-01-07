.class final Lrx/internal/operators/OperatorGroupBy$1;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy;->a(Llgy;)Llgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorGroupBy$b;

.field final synthetic b:Lrx/internal/operators/OperatorGroupBy;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy;Lrx/internal/operators/OperatorGroupBy$b;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorGroupBy;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$1;, "Lrx/internal/operators/OperatorGroupBy$1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$1;->b:Lrx/internal/operators/OperatorGroupBy;

    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$1;->a:Lrx/internal/operators/OperatorGroupBy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$1;, "Lrx/internal/operators/OperatorGroupBy$1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$1;->a:Lrx/internal/operators/OperatorGroupBy$b;

    .line 1293
    iget-object v1, v0, Lrx/internal/operators/OperatorGroupBy$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    iget-object v1, v0, Lrx/internal/operators/OperatorGroupBy$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 1295
    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$b;->unsubscribe()V

    .line 91
    :cond_0
    return-void
.end method
