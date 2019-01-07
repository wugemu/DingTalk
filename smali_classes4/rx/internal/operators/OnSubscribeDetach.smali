.class public final Lrx/internal/operators/OnSubscribeDetach;
.super Ljava/lang/Object;
.source "OnSubscribeDetach.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;,
        Lrx/internal/operators/OnSubscribeDetach$a;,
        Lrx/internal/operators/OnSubscribeDetach$b;
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


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach;, "Lrx/internal/operators/OnSubscribeDetach<TT;>;"
    check-cast p1, Llgy;

    .line 1039
    new-instance v0, Lrx/internal/operators/OnSubscribeDetach$b;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeDetach$b;-><init>(Llgy;)V

    .line 1040
    new-instance v1, Lrx/internal/operators/OnSubscribeDetach$a;

    invoke-direct {v1, v0}, Lrx/internal/operators/OnSubscribeDetach$a;-><init>(Lrx/internal/operators/OnSubscribeDetach$b;)V

    .line 1042
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 1043
    invoke-virtual {p1, v1}, Llgy;->a(Llgu;)V

    .line 1045
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach;->a:Llgs;

    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 29
    return-void
.end method
