.class final Lrx/internal/operators/OnSubscribeAmb$Selection;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Selection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OnSubscribeAmb$a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final ambSubscribers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/OnSubscribeAmb$a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 340
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final unsubscribeLosers()V
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$a;

    .line 344
    .local v0, "winner":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$a;)V

    .line 347
    :cond_0
    return-void
.end method

.method public final unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeAmb$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 350
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    .local p1, "notThis":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$a;

    .line 351
    .local v0, "other":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    if-eq v0, p1, :cond_0

    .line 352
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$a;->unsubscribe()V

    goto :goto_0

    .line 355
    .end local v0    # "other":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 356
    return-void
.end method
