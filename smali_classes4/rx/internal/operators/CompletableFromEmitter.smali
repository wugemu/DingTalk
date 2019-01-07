.class public final Lrx/internal/operators/CompletableFromEmitter;
.super Ljava/lang/Object;
.source "CompletableFromEmitter.java"

# interfaces
.implements Llgq$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableFromEmitter$FromEmitter;
    }
.end annotation


# instance fields
.field final a:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Ljava/lang/Object;",
            ">;"
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
    check-cast p1, Llgr;

    .line 1039
    new-instance v1, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;

    invoke-direct {v1, p1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;-><init>(Llgr;)V

    .line 1040
    invoke-interface {p1, v1}, Llgr;->onSubscribe(Llgz;)V

    .line 1043
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter;->a:Llhg;

    invoke-interface {v0, v1}, Llhg;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1046
    invoke-virtual {v1, v0}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
