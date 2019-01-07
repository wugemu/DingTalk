.class public final Lrx/internal/operators/SingleFromEmitter;
.super Ljava/lang/Object;
.source "SingleFromEmitter.java"

# interfaces
.implements Llgw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgw$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Ljava/lang/Object",
            "<TT;>;>;"
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
    .line 34
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter;, "Lrx/internal/operators/SingleFromEmitter<TT;>;"
    check-cast p1, Llgx;

    .line 1044
    new-instance v1, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;

    invoke-direct {v1, p1}, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;-><init>(Llgx;)V

    .line 1045
    invoke-virtual {p1, v1}, Llgx;->a(Llgz;)V

    .line 1048
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/SingleFromEmitter;->a:Llhg;

    invoke-interface {v0, v1}, Llhg;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1051
    invoke-virtual {v1, v0}, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
