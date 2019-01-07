.class public final Lrx/internal/operators/OnSubscribeAmb;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeAmb$Selection;,
        Lrx/internal/operators/OnSubscribeAmb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Llgs",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/OnSubscribeAmb$a",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "ambSubscribers":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/internal/operators/OnSubscribeAmb$a<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$a;

    .line 442
    .local v0, "other":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$a;->unsubscribe()V

    goto :goto_0

    .line 444
    .end local v0    # "other":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 446
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb;, "Lrx/internal/operators/OnSubscribeAmb<TT;>;"
    check-cast p1, Llgy;

    .line 1366
    new-instance v2, Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-direct {v2}, Lrx/internal/operators/OnSubscribeAmb$Selection;-><init>()V

    .line 1369
    new-instance v0, Lrx/internal/operators/OnSubscribeAmb$1;

    invoke-direct {v0, p0, v2}, Lrx/internal/operators/OnSubscribeAmb$1;-><init>(Lrx/internal/operators/OnSubscribeAmb;Lrx/internal/operators/OnSubscribeAmb$Selection;)V

    invoke-static {v0}, Llkz;->a(Llhf;)Llgz;

    move-result-object v0

    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1388
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgs;

    .line 1389
    invoke-virtual {p1}, Llgy;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1392
    new-instance v4, Lrx/internal/operators/OnSubscribeAmb$a;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7, p1, v2}, Lrx/internal/operators/OnSubscribeAmb$a;-><init>(JLlgy;Lrx/internal/operators/OnSubscribeAmb$Selection;)V

    .line 1393
    iget-object v1, v2, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1398
    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$a;

    if-eqz v1, :cond_0

    .line 1400
    invoke-virtual {v2, v1}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$a;)V

    .line 1401
    :goto_1
    return-void

    .line 1403
    :cond_0
    invoke-virtual {v0, v4}, Llgs;->a(Llgy;)Llgz;

    goto :goto_0

    .line 1406
    :cond_1
    invoke-virtual {p1}, Llgy;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, v2, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->a(Ljava/util/Collection;)V

    .line 1410
    :cond_2
    new-instance v0, Lrx/internal/operators/OnSubscribeAmb$2;

    invoke-direct {v0, p0, v2}, Lrx/internal/operators/OnSubscribeAmb$2;-><init>(Lrx/internal/operators/OnSubscribeAmb;Lrx/internal/operators/OnSubscribeAmb$Selection;)V

    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    goto :goto_1
.end method
