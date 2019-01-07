.class public final Lrx/internal/operators/OnSubscribeGroupJoin;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$a;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "D1:",
        "Ljava/lang/Object;",
        "D2:",
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
            "<TT1;>;"
        }
    .end annotation
.end field

.field final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT2;>;"
        }
    .end annotation
.end field

.field final c:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT1;+",
            "Llgs",
            "<TD1;>;>;"
        }
    .end annotation
.end field

.field final d:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT2;+",
            "Llgs",
            "<TD2;>;>;"
        }
    .end annotation
.end field

.field final e:Llhl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhl",
            "<-TT1;-",
            "Llgs",
            "<TT2;>;+TR;>;"
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
    .line 40
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    check-cast p1, Llgy;

    .line 1062
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    new-instance v1, Llki;

    invoke-direct {v1, p1}, Llki;-><init>(Llgy;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin;Llgy;)V

    .line 1063
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1064
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->init()V

    .line 40
    return-void
.end method
