.class final Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;
.super Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoneEmitter"
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
.field private static final serialVersionUID:J = 0x34699b00190316f1L


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
    .line 164
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;, "Lrx/internal/operators/OnSubscribeCreate$NoneEmitter<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;-><init>(Llgy;)V

    .line 165
    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
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
    .line 169
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;, "Lrx/internal/operators/OnSubscribeCreate$NoneEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;->actual:Llgy;

    invoke-virtual {v2}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;->actual:Llgy;

    invoke-virtual {v2, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;->get()J

    move-result-wide v0

    .line 177
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method
