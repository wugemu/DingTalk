.class public final Lrx/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMerge$a;,
        Lrx/internal/operators/OperatorMerge$b;,
        Lrx/internal/operators/OperatorMerge$MergeProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<TT;",
        "Llgs",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method private a(Llgy;)Llgy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)",
            "Llgy",
            "<",
            "Llgs",
            "<+TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorMerge$b;

    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge;->a:Z

    iget v3, p0, Lrx/internal/operators/OperatorMerge;->b:I

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/operators/OperatorMerge$b;-><init>(Llgy;ZI)V

    .line 107
    .local v1, "subscriber":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lrx/internal/operators/OperatorMerge$b;)V

    .line 108
    .local v0, "producer":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iput-object v0, v1, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 110
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 111
    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 113
    return-object v1
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    check-cast p1, Llgy;

    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
