.class public final Lrx/internal/operators/OperatorEagerConcatMap;
.super Ljava/lang/Object;
.source "OperatorEagerConcatMap.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorEagerConcatMap$a;,
        Lrx/internal/operators/OperatorEagerConcatMap$b;,
        Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+",
            "Llgs",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field private final c:I


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap;, "Lrx/internal/operators/OperatorEagerConcatMap<TT;TR;>;"
    check-cast p1, Llgy;

    .line 1043
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap$b;

    iget-object v1, p0, Lrx/internal/operators/OperatorEagerConcatMap;->a:Llhk;

    iget v2, p0, Lrx/internal/operators/OperatorEagerConcatMap;->b:I

    iget v3, p0, Lrx/internal/operators/OperatorEagerConcatMap;->c:I

    invoke-direct {v0, v1, v2, v3, p1}, Lrx/internal/operators/OperatorEagerConcatMap$b;-><init>(Llhk;IILlgy;)V

    .line 1097
    new-instance v1, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$b;)V

    iput-object v1, v0, Lrx/internal/operators/OperatorEagerConcatMap$b;->i:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    .line 1098
    new-instance v1, Lrx/internal/operators/OperatorEagerConcatMap$b$1;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorEagerConcatMap$b$1;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$b;)V

    invoke-static {v1}, Llkz;->a(Llhf;)Llgz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorEagerConcatMap$b;->a(Llgz;)V

    .line 1107
    iget-object v1, v0, Lrx/internal/operators/OperatorEagerConcatMap$b;->c:Llgy;

    invoke-virtual {v1, v0}, Llgy;->a(Llgz;)V

    .line 1108
    iget-object v1, v0, Lrx/internal/operators/OperatorEagerConcatMap$b;->c:Llgy;

    iget-object v2, v0, Lrx/internal/operators/OperatorEagerConcatMap$b;->i:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-virtual {v1, v2}, Llgy;->a(Llgu;)V

    .line 31
    return-object v0
.end method
