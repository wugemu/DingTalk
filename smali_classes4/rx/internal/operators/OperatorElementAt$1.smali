.class final Lrx/internal/operators/OperatorElementAt$1;
.super Llgy;
.source "OperatorElementAt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorElementAt;->a(Llgy;)Llgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llgy;

.field final synthetic b:Lrx/internal/operators/OperatorElementAt;

.field private c:I


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorElementAt;Llgy;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorElementAt;

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt$1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorElementAt$1;->b:Lrx/internal/operators/OperatorElementAt;

    iput-object p2, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    invoke-direct {p0}, Llgy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llgu;)V
    .locals 2
    .param p1, "p"    # Llgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt$1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    new-instance v1, Lrx/internal/operators/OperatorElementAt$InnerProducer;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorElementAt$InnerProducer;-><init>(Llgu;)V

    invoke-virtual {v0, v1}, Llgy;->a(Llgu;)V

    .line 86
    return-void
.end method

.method public final onCompleted()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt$1;"
    iget v0, p0, Lrx/internal/operators/OperatorElementAt$1;->c:I

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->b:Lrx/internal/operators/OperatorElementAt;

    iget v1, v1, Lrx/internal/operators/OperatorElementAt;->a:I

    if-gt v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->b:Lrx/internal/operators/OperatorElementAt;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorElementAt;->b:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->b:Lrx/internal/operators/OperatorElementAt;

    iget-object v1, v1, Lrx/internal/operators/OperatorElementAt;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lrx/internal/operators/OperatorElementAt$1;->b:Lrx/internal/operators/OperatorElementAt;

    iget v3, v3, Lrx/internal/operators/OperatorElementAt;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt$1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt$1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorElementAt$1;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/internal/operators/OperatorElementAt$1;->c:I

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->b:Lrx/internal/operators/OperatorElementAt;

    iget v1, v1, Lrx/internal/operators/OperatorElementAt;->a:I

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 61
    invoke-virtual {p0}, Lrx/internal/operators/OperatorElementAt$1;->unsubscribe()V

    .line 63
    :cond_0
    return-void
.end method
