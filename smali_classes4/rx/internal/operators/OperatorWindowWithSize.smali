.class public final Lrx/internal/operators/OperatorWindowWithSize;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;,
        Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;,
        Lrx/internal/operators/OperatorWindowWithSize$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<",
        "Llgs",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method private a(Llgy;)Llgy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Llgs",
            "<TT;>;>;)",
            "Llgy",
            "<-TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-Llgs<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->b:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->a:I

    if-ne v3, v4, :cond_0

    .line 53
    new-instance v2, Lrx/internal/operators/OperatorWindowWithSize$a;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->a:I

    invoke-direct {v2, p1, v3}, Lrx/internal/operators/OperatorWindowWithSize$a;-><init>(Llgy;I)V

    .line 55
    .local v2, "parent":Lrx/internal/operators/OperatorWindowWithSize$a;, "Lrx/internal/operators/OperatorWindowWithSize$a<TT;>;"
    iget-object v3, v2, Lrx/internal/operators/OperatorWindowWithSize$a;->d:Llgz;

    invoke-virtual {p1, v3}, Llgy;->a(Llgz;)V

    .line 1149
    new-instance v3, Lrx/internal/operators/OperatorWindowWithSize$a$1;

    invoke-direct {v3, v2}, Lrx/internal/operators/OperatorWindowWithSize$a$1;-><init>(Lrx/internal/operators/OperatorWindowWithSize$a;)V

    .line 56
    invoke-virtual {p1, v3}, Llgy;->a(Llgu;)V

    .line 74
    .end local v2    # "parent":Lrx/internal/operators/OperatorWindowWithSize$a;, "Lrx/internal/operators/OperatorWindowWithSize$a<TT;>;"
    :goto_0
    return-object v2

    .line 60
    :cond_0
    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->b:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->a:I

    if-le v3, v4, :cond_1

    .line 61
    new-instance v1, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->a:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->b:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;-><init>(Llgy;II)V

    .line 63
    .local v1, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v3, v1, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->e:Llgz;

    invoke-virtual {p1, v3}, Llgy;->a(Llgz;)V

    .line 1251
    new-instance v3, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;

    invoke-direct {v3, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;)V

    .line 64
    invoke-virtual {p1, v3}, Llgy;->a(Llgu;)V

    move-object v2, v1

    .line 66
    goto :goto_0

    .line 69
    .end local v1    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->a:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->b:I

    invoke-direct {v0, p1, v3, v4}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;-><init>(Llgy;II)V

    .line 71
    .local v0, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->e:Llgz;

    invoke-virtual {p1, v3}, Llgy;->a(Llgz;)V

    .line 1393
    new-instance v3, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;

    invoke-direct {v3, v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;)V

    .line 72
    invoke-virtual {p1, v3}, Llgy;->a(Llgu;)V

    move-object v2, v0

    .line 74
    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    check-cast p1, Llgy;

    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorWindowWithSize;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
