.class final Lrx/internal/operators/OperatorEagerConcatMap$b$1;
.super Ljava/lang/Object;
.source "OperatorEagerConcatMap.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorEagerConcatMap$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorEagerConcatMap$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorEagerConcatMap$b;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorEagerConcatMap$b;

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$b$1;, "Lrx/internal/operators/OperatorEagerConcatMap$b$1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$b$1;->a:Lrx/internal/operators/OperatorEagerConcatMap$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$b$1;, "Lrx/internal/operators/OperatorEagerConcatMap$b$1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$b$1;->a:Lrx/internal/operators/OperatorEagerConcatMap$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorEagerConcatMap$b;->g:Z

    .line 102
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$b$1;->a:Lrx/internal/operators/OperatorEagerConcatMap$b;

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$b$1;->a:Lrx/internal/operators/OperatorEagerConcatMap$b;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$b;->b()V

    .line 105
    :cond_0
    return-void
.end method
