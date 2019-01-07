.class public final Lrx/internal/operators/OnSubscribeCombineLatest;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCombineLatest$a;,
        Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
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
.field final a:[Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Llgs",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Llgs",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Llhm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhm",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    const/4 v3, 0x0

    .line 28
    move-object v1, p1

    check-cast v1, Llgy;

    .line 1055
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->a:[Llgs;

    .line 1057
    if-nez v0, :cond_2

    .line 1058
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->b:Ljava/lang/Iterable;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->b:Ljava/lang/Iterable;

    check-cast v0, Ljava/util/List;

    .line 1061
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Llgs;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llgs;

    check-cast v0, [Llgs;

    .line 1062
    array-length v3, v0

    move-object v6, v0

    .line 1078
    :goto_0
    if-nez v3, :cond_3

    .line 1079
    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 1080
    :goto_1
    return-void

    .line 1064
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Llgs;

    .line 1065
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    move-object v4, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgs;

    .line 1066
    array-length v5, v4

    if-ne v2, v5, :cond_4

    .line 1067
    shr-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v2

    new-array v5, v5, [Llgs;

    .line 1068
    invoke-static {v4, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1071
    :goto_3
    add-int/lit8 v4, v2, 0x1

    aput-object v0, v5, v2

    move v2, v4

    move-object v4, v5

    .line 1072
    goto :goto_2

    :cond_1
    move v3, v2

    move-object v6, v4

    goto :goto_0

    .line 1075
    :cond_2
    array-length v3, v0

    move-object v6, v0

    goto :goto_0

    .line 1083
    :cond_3
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->c:Llhm;

    iget v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->d:I

    iget-boolean v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->e:Z

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;-><init>(Llgy;Llhm;IIZ)V

    .line 1084
    invoke-virtual {v0, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribe([Llgs;)V

    goto :goto_1

    :cond_4
    move-object v5, v4

    goto :goto_3
.end method
