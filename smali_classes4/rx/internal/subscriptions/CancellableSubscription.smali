.class public final Lrx/internal/subscriptions/CancellableSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CancellableSubscription.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Llhi;",
        ">;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Llhi;)V
    .locals 0
    .param p1, "cancellable"    # Llhi;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lrx/internal/subscriptions/CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    invoke-virtual {p0}, Lrx/internal/subscriptions/CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lrx/internal/subscriptions/CancellableSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llhi;

    .line 49
    .local v0, "c":Llhi;
    if-eqz v0, :cond_0

    .line 58
    .end local v0    # "c":Llhi;
    :cond_0
    return-void
.end method
