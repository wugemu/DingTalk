.class public final Lrx/subscriptions/RefCountSubscription$InnerSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "RefCountSubscription.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61397aaf32b333bbL


# instance fields
.field final parent:Lrx/subscriptions/RefCountSubscription;


# direct methods
.method public constructor <init>(Lrx/subscriptions/RefCountSubscription;)V
    .locals 0
    .param p1, "parent"    # Lrx/subscriptions/RefCountSubscription;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 134
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    .line 135
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v1, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    .line 1119
    iget-object v2, v1, Lrx/subscriptions/RefCountSubscription;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1121
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/RefCountSubscription$a;

    .line 2046
    new-instance v3, Lrx/subscriptions/RefCountSubscription$a;

    iget-boolean v4, v0, Lrx/subscriptions/RefCountSubscription$a;->a:Z

    iget v5, v0, Lrx/subscriptions/RefCountSubscription$a;->b:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v5}, Lrx/subscriptions/RefCountSubscription$a;-><init>(ZI)V

    .line 1123
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v1, v3}, Lrx/subscriptions/RefCountSubscription;->a(Lrx/subscriptions/RefCountSubscription$a;)V

    .line 141
    :cond_1
    return-void
.end method
