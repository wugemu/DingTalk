.class public final Lrx/internal/operators/OnSubscribeJoin;
.super Ljava/lang/Object;
.source "OnSubscribeJoin.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftDuration:Ljava/lang/Object;",
        "TRightDuration:",
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
            "<TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TTRight;>;"
        }
    .end annotation
.end field

.field final c:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<TT",
            "Left;",
            "Llgs",
            "<TT",
            "LeftDuration;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<TTRight;",
            "Llgs",
            "<TTRightDuration;>;>;"
        }
    .end annotation
.end field

.field final e:Llhl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhl",
            "<TT",
            "Left;",
            "TTRight;TR;>;"
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
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    check-cast p1, Llgy;

    .line 1059
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    new-instance v1, Llki;

    invoke-direct {v1, p1}, Llki;-><init>(Llgy;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;-><init>(Lrx/internal/operators/OnSubscribeJoin;Llgy;)V

    .line 1060
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->run()V

    .line 37
    return-void
.end method
