.class public final Lrx/internal/operators/OnSubscribeFlatMapSingle;
.super Ljava/lang/Object;
.source "OnSubscribeFlatMapSingle.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;
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
        "Llgs$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+",
            "Llgw",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle;, "Lrx/internal/operators/OnSubscribeFlatMapSingle<TT;TR;>;"
    check-cast p1, Llgy;

    .line 1065
    new-instance v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle;->b:Llhk;

    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle;->c:Z

    iget v3, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle;->d:I

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;-><init>(Llgy;Llhk;ZI)V

    .line 1066
    iget-object v1, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->g:Llkx;

    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 1067
    iget-object v1, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->j:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;

    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 1068
    iget-object v1, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->j:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;

    invoke-virtual {p1, v1}, Llgy;->a(Llgu;)V

    .line 1069
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle;->a:Llgs;

    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 39
    return-void
.end method
