.class public final Lrx/internal/subscriptions/SequentialSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SequentialSubscription.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Llgz;",
        ">;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xdcfadb4b3205d9dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Llgz;)V
    .locals 0
    .param p1, "initial"    # Llgz;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->lazySet(Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final current()Llgz;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgz;

    .line 56
    .local v0, "current":Llgz;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_0

    .line 57
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    .line 59
    .end local v0    # "current":Llgz;
    :cond_0
    return-object v0
.end method

.method public final isUnsubscribed()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final replace(Llgz;)Z
    .locals 2
    .param p1, "next"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 98
    :cond_0
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgz;

    .line 100
    .local v0, "current":Llgz;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_2

    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-interface {p1}, Llgz;->unsubscribe()V

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    .line 107
    :cond_2
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final replaceWeak(Llgz;)Z
    .locals 4
    .param p1, "next"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgz;

    .line 154
    .local v0, "current":Llgz;
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v3, :cond_1

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Llgz;->unsubscribe()V

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Llgz;
    check-cast v0, Llgz;

    .line 165
    .restart local v0    # "current":Llgz;
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v3, :cond_3

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1}, Llgz;->unsubscribe()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 171
    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 176
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgz;

    .line 177
    .local v0, "current":Llgz;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-eq v0, v1, :cond_0

    .line 178
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    invoke-virtual {p0, v1}, Lrx/internal/subscriptions/SequentialSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Llgz;
    check-cast v0, Llgz;

    .line 179
    .restart local v0    # "current":Llgz;
    if-eqz v0, :cond_0

    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-eq v0, v1, :cond_0

    .line 180
    invoke-interface {v0}, Llgz;->unsubscribe()V

    .line 183
    :cond_0
    return-void
.end method

.method public final update(Llgz;)Z
    .locals 2
    .param p1, "next"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    :cond_0
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgz;

    .line 73
    .local v0, "current":Llgz;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_2

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Llgz;->unsubscribe()V

    .line 77
    :cond_1
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    .line 80
    :cond_2
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    invoke-interface {v0}, Llgz;->unsubscribe()V

    .line 84
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final updateWeak(Llgz;)Z
    .locals 4
    .param p1, "next"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgz;

    .line 124
    .local v0, "current":Llgz;
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v3, :cond_1

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1}, Llgz;->unsubscribe()V

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Llgz;
    check-cast v0, Llgz;

    .line 136
    .restart local v0    # "current":Llgz;
    if-eqz p1, :cond_3

    .line 137
    invoke-interface {p1}, Llgz;->unsubscribe()V

    .line 139
    :cond_3
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
