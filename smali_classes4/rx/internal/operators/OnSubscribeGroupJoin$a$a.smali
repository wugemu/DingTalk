.class final Lrx/internal/operators/OnSubscribeGroupJoin$a$a;
.super Llgy;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lrx/internal/operators/OnSubscribeGroupJoin$a;

.field private final c:Llgz;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$a;Llgy;Llgz;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeGroupJoin$a;
    .param p3, "ref"    # Llgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Llgz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$a$a;, "Lrx/internal/operators/OnSubscribeGroupJoin$a<TT;>.a;"
    .local p2, "subscriber":Llgy;, "Llgy<-TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->b:Lrx/internal/operators/OnSubscribeGroupJoin$a;

    .line 365
    invoke-direct {p0, p2}, Llgy;-><init>(Llgy;)V

    .line 366
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->a:Llgy;

    .line 367
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->c:Llgz;

    .line 368
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 383
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$a$a;, "Lrx/internal/operators/OnSubscribeGroupJoin$a<TT;>.a;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 384
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->c:Llgz;

    invoke-interface {v0}, Llgz;->unsubscribe()V

    .line 385
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 377
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$a$a;, "Lrx/internal/operators/OnSubscribeGroupJoin$a<TT;>.a;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 378
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->c:Llgz;

    invoke-interface {v0}, Llgz;->unsubscribe()V

    .line 379
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
    .line 372
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$a$a;, "Lrx/internal/operators/OnSubscribeGroupJoin$a<TT;>.a;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 373
    return-void
.end method
