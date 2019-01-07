.class public final Lrx/internal/operators/OnSubscribeAutoConnect;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OnSubscribeAutoConnect.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final connection:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<-",
            "Llgz;",
            ">;"
        }
    .end annotation
.end field

.field final numberOfSubscribers:I

.field final source:Llkc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llkc",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llkc;ILlhg;)V
    .locals 2
    .param p2, "numberOfSubscribers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llkc",
            "<+TT;>;I",
            "Llhg",
            "<-",
            "Llgz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeAutoConnect;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    .local p1, "source":Llkc;, "Llkc<+TT;>;"
    .local p3, "connection":Llhg;, "Llhg<-Llgz;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 43
    if-gtz p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "numberOfSubscribers > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->source:Llkc;

    .line 47
    iput p2, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->numberOfSubscribers:I

    .line 48
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->connection:Llhg;

    .line 49
    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeAutoConnect;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeAutoConnect;->call(Llgy;)V

    return-void
.end method

.method public final call(Llgy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeAutoConnect;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->source:Llkc;

    invoke-static {p1}, Llkj;->a(Llgy;)Llgy;

    move-result-object v1

    invoke-virtual {v0, v1}, Llkc;->a(Llgy;)Llgz;

    .line 54
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeAutoConnect;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->numberOfSubscribers:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->source:Llkc;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->connection:Llhg;

    invoke-virtual {v0, v1}, Llkc;->a(Llhg;)V

    .line 57
    :cond_0
    return-void
.end method
