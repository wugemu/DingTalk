.class public final Lrx/internal/operators/OnSubscribeFromIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
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
            "<+TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable;, "Lrx/internal/operators/OnSubscribeFromIterable<TT;>;"
    check-cast p1, Llgy;

    .line 1051
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1053
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1059
    invoke-virtual {p1}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1060
    if-nez v1, :cond_1

    .line 1061
    invoke-virtual {p1}, Llgy;->onCompleted()V

    :cond_0
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    invoke-static {v0, p1}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    goto :goto_0

    .line 1063
    :cond_1
    new-instance v1, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    invoke-direct {v1, p1, v0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Llgy;Ljava/util/Iterator;)V

    invoke-virtual {p1, v1}, Llgy;->a(Llgu;)V

    goto :goto_0
.end method
