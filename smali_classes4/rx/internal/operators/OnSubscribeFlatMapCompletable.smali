.class public final Lrx/internal/operators/OnSubscribeFlatMapCompletable;
.super Ljava/lang/Object;
.source "OnSubscribeFlatMapCompletable.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;
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
            "Llgq;",
            ">;"
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
    .line 34
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable<TT;>;"
    check-cast p1, Llgy;

    .line 1060
    new-instance v0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable;->b:Llhk;

    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable;->c:Z

    iget v3, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable;->d:I

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;-><init>(Llgy;Llhk;ZI)V

    .line 1061
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1062
    iget-object v1, v0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->f:Llkx;

    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 1063
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable;->a:Llgs;

    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 34
    return-void
.end method
