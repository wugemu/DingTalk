.class public final Lrx/internal/operators/CompletableOnSubscribeConcatIterable;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Llgq$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Llgq;",
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
    .line 26
    check-cast p1, Llgr;

    .line 1039
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1046
    if-nez v0, :cond_0

    .line 1047
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    invoke-interface {p1, v0}, Llgr;->onSubscribe(Llgz;)V

    .line 1048
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llgr;->onError(Ljava/lang/Throwable;)V

    .line 1049
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v1

    invoke-interface {p1, v1}, Llgr;->onSubscribe(Llgz;)V

    .line 1042
    invoke-interface {p1, v0}, Llgr;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1052
    :cond_0
    new-instance v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;

    invoke-direct {v1, p1, v0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;-><init>(Llgr;Ljava/util/Iterator;)V

    .line 1053
    iget-object v0, v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Llky;

    invoke-interface {p1, v0}, Llgr;->onSubscribe(Llgz;)V

    .line 1054
    invoke-virtual {v1}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    goto :goto_0
.end method
