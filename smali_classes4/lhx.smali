.class public final Llhx;
.super Ljava/lang/Object;
.source "SingleLiftObservableOperator.java"

# interfaces
.implements Llgw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llhx$a;
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
        "Llgw$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Llgw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgw$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Llgs$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs$b",
            "<+TR;-TT;>;"
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
    .line 32
    .local p0, "this":Llhx;, "Llhx<TT;TR;>;"
    check-cast p1, Llgx;

    .line 1045
    new-instance v0, Llhw$a;

    invoke-direct {v0, p1}, Llhw$a;-><init>(Llgx;)V

    .line 1046
    invoke-virtual {p1, v0}, Llgx;->a(Llgz;)V

    .line 1049
    :try_start_0
    iget-object v1, p0, Llhx;->b:Llgs$b;

    invoke-static {v1}, Llkm;->b(Llgs$b;)Llgs$b;

    move-result-object v1

    invoke-interface {v1, v0}, Llgs$b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgy;

    .line 1062
    new-instance v1, Llhx$a;

    invoke-direct {v1, v0}, Llhx$a;-><init>(Llgy;)V

    .line 1063
    invoke-virtual {v0, v1}, Llgy;->a(Llgz;)V

    .line 1053
    invoke-virtual {v0}, Llgy;->a()V

    .line 1055
    iget-object v0, p0, Llhx;->a:Llgw$a;

    invoke-interface {v0, v1}, Llgw$a;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1223
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1224
    invoke-virtual {p1, v0}, Llgx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
