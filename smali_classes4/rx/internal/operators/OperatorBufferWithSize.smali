.class public final Lrx/internal/operators/OperatorBufferWithSize;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;,
        Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;,
        Lrx/internal/operators/OperatorBufferWithSize$a;
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
        "Ljava/util/List",
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
            "Ljava/util/List",
            "<TT;>;>;)",
            "Llgy",
            "<-TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-Ljava/util/List<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    if-ne v3, v4, :cond_0

    .line 67
    new-instance v2, Lrx/internal/operators/OperatorBufferWithSize$a;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    invoke-direct {v2, p1, v3}, Lrx/internal/operators/OperatorBufferWithSize$a;-><init>(Llgy;I)V

    .line 69
    .local v2, "parent":Lrx/internal/operators/OperatorBufferWithSize$a;, "Lrx/internal/operators/OperatorBufferWithSize$a<TT;>;"
    invoke-virtual {p1, v2}, Llgy;->a(Llgz;)V

    .line 1134
    new-instance v3, Lrx/internal/operators/OperatorBufferWithSize$a$1;

    invoke-direct {v3, v2}, Lrx/internal/operators/OperatorBufferWithSize$a$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$a;)V

    .line 70
    invoke-virtual {p1, v3}, Llgy;->a(Llgu;)V

    .line 87
    .end local v2    # "parent":Lrx/internal/operators/OperatorBufferWithSize$a;, "Lrx/internal/operators/OperatorBufferWithSize$a<TT;>;"
    :goto_0
    return-object v2

    .line 74
    :cond_0
    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    if-le v3, v4, :cond_1

    .line 75
    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;-><init>(Llgy;II)V

    .line 77
    .local v1, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 1207
    new-instance v3, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;

    invoke-direct {v3, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;)V

    .line 78
    invoke-virtual {p1, v3}, Llgy;->a(Llgu;)V

    move-object v2, v1

    .line 80
    goto :goto_0

    .line 82
    .end local v1    # "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    invoke-direct {v0, p1, v3, v4}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;-><init>(Llgy;II)V

    .line 84
    .local v0, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1308
    new-instance v3, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;

    invoke-direct {v3, v0}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;)V

    .line 85
    invoke-virtual {p1, v3}, Llgy;->a(Llgu;)V

    move-object v2, v0

    .line 87
    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    check-cast p1, Llgy;

    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorBufferWithSize;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
