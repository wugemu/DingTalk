.class final Lrx/internal/operators/OnSubscribePublishMulticast$a;
.super Llgy;
.source "OnSubscribePublishMulticast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/OnSubscribePublishMulticast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribePublishMulticast",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribePublishMulticast;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribePublishMulticast",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$a;, "Lrx/internal/operators/OnSubscribePublishMulticast$a<TT;>;"
    .local p1, "state":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 388
    iput-object p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast$a;->a:Lrx/internal/operators/OnSubscribePublishMulticast;

    .line 389
    return-void
.end method


# virtual methods
.method public final a(Llgu;)V
    .locals 1
    .param p1, "p"    # Llgu;

    .prologue
    .line 408
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$a;, "Lrx/internal/operators/OnSubscribePublishMulticast$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$a;->a:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->setProducer(Llgu;)V

    .line 409
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$a;, "Lrx/internal/operators/OnSubscribePublishMulticast$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$a;->a:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->onCompleted()V

    .line 404
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 398
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$a;, "Lrx/internal/operators/OnSubscribePublishMulticast$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$a;->a:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->onError(Ljava/lang/Throwable;)V

    .line 399
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$a;, "Lrx/internal/operators/OnSubscribePublishMulticast$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$a;->a:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->onNext(Ljava/lang/Object;)V

    .line 394
    return-void
.end method
