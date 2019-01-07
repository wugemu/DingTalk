.class public final Lrx/internal/operators/OnSubscribeFromArray;
.super Ljava/lang/Object;
.source "OnSubscribeFromArray.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;
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
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray;, "Lrx/internal/operators/OnSubscribeFromArray<TT;>;"
    check-cast p1, Llgy;

    .line 1032
    new-instance v0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromArray;->a:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;-><init>(Llgy;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 24
    return-void
.end method
