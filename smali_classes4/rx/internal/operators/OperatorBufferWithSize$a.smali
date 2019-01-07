.class final Lrx/internal/operators/OperatorBufferWithSize$a;
.super Llgy;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;I)V
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$a;, "Lrx/internal/operators/OperatorBufferWithSize$a<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 97
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->a:Llgy;

    .line 98
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->b:I

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$a;->a(J)V

    .line 100
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorBufferWithSize$a;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$a;
    .param p1, "x1"    # J

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$a;->a(J)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$a;, "Lrx/internal/operators/OperatorBufferWithSize$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->c:Ljava/util/List;

    .line 127
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->a:Llgy;

    invoke-virtual {v1, v0}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->a:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 131
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$a;, "Lrx/internal/operators/OperatorBufferWithSize$a<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->c:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$a;, "Lrx/internal/operators/OperatorBufferWithSize$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->c:Ljava/util/List;

    .line 105
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->c:Ljava/util/List;

    .line 110
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->b:I

    if-ne v1, v2, :cond_1

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->c:Ljava/util/List;

    .line 114
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$a;->a:Llgy;

    invoke-virtual {v1, v0}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 116
    :cond_1
    return-void
.end method
