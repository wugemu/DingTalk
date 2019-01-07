.class abstract Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeCreate.java"

# interfaces
.implements Llgu;
.implements Llgz;
.implements Lrx/Emitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgu;",
        "Llgz;",
        "Lrx/Emitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final actual:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final serial:Llky;


# direct methods
.method public constructor <init>(Llgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 87
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Llgy;

    .line 88
    new-instance v0, Llky;

    invoke-direct {v0}, Llky;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    .line 89
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    invoke-virtual {v0}, Llky;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Llgy;

    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    invoke-virtual {v0}, Llky;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    invoke-virtual {v1}, Llky;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Llgy;

    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    invoke-virtual {v0}, Llky;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    invoke-virtual {v1}, Llky;->unsubscribe()V

    throw v0
.end method

.method onRequested()V
    .locals 0

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method onUnsubscribed()V
    .locals 0

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method public final request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    invoke-static {p1, p2}, Llhn;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 134
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onRequested()V

    .line 136
    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setCancellation(Llhi;)V
    .locals 1
    .param p1, "c"    # Llhi;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    new-instance v0, Lrx/internal/subscriptions/CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/subscriptions/CancellableSubscription;-><init>(Llhi;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->setSubscription(Llgz;)V

    .line 150
    return-void
.end method

.method public final setSubscription(Llgz;)V
    .locals 1
    .param p1, "s"    # Llgz;

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    invoke-virtual {v0, p1}, Llky;->a(Llgz;)V

    .line 145
    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Llky;

    invoke-virtual {v0}, Llky;->unsubscribe()V

    .line 118
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onUnsubscribed()V

    .line 119
    return-void
.end method
