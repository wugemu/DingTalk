.class abstract Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;
.super Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NoOverflowBaseEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3948ba7d6479d0d1L


# direct methods
.method public constructor <init>(Llgy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;-><init>(Llgy;)V

    .line 192
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->actual:Llgy;

    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->actual:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 202
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->onOverflow()V

    goto :goto_0
.end method

.method abstract onOverflow()V
.end method
