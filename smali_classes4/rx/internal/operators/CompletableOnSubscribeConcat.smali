.class public final Lrx/internal/operators/CompletableOnSubscribeConcat;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcat.java"

# interfaces
.implements Llgq$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
    }
.end annotation


# instance fields
.field final a:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<",
            "Llgq;",
            ">;"
        }
    .end annotation
.end field

.field final b:I


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    check-cast p1, Llgr;

    .line 1040
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    iget v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->b:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;-><init>(Llgr;I)V

    .line 1041
    invoke-interface {p1, v0}, Llgr;->onSubscribe(Llgz;)V

    .line 1042
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->a:Llgs;

    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 28
    return-void
.end method
