.class final Lrx/internal/operators/OnSubscribeGroupJoin$a;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/subscriptions/RefCountSubscription;

.field final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgs;Lrx/subscriptions/RefCountSubscription;)V
    .locals 0
    .param p2, "refCount"    # Lrx/subscriptions/RefCountSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;",
            "Lrx/subscriptions/RefCountSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$a;, "Lrx/internal/operators/OnSubscribeGroupJoin$a<TT;>;"
    .local p1, "underlying":Llgs;, "Llgs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a;->a:Lrx/subscriptions/RefCountSubscription;

    .line 347
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a;->b:Llgs;

    .line 348
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 341
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$a;, "Lrx/internal/operators/OnSubscribeGroupJoin$a<TT;>;"
    check-cast p1, Llgy;

    .line 1352
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a;->a:Lrx/subscriptions/RefCountSubscription;

    .line 2078
    iget-object v2, v1, Lrx/subscriptions/RefCountSubscription;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2080
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/RefCountSubscription$a;

    .line 2081
    iget-boolean v3, v0, Lrx/subscriptions/RefCountSubscription$a;->a:Z

    if-eqz v3, :cond_1

    .line 2082
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    .line 1353
    :goto_0
    new-instance v1, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$a;Llgy;Llgz;)V

    .line 1354
    invoke-virtual {v1, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$a$a;->a(Llgz;)V

    .line 1356
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$a;->b:Llgs;

    invoke-virtual {v0, v1}, Llgs;->a(Llgy;)Llgz;

    .line 341
    return-void

    .line 3042
    :cond_1
    new-instance v3, Lrx/subscriptions/RefCountSubscription$a;

    iget-boolean v4, v0, Lrx/subscriptions/RefCountSubscription$a;->a:Z

    iget v5, v0, Lrx/subscriptions/RefCountSubscription$a;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v4, v5}, Lrx/subscriptions/RefCountSubscription$a;-><init>(ZI)V

    .line 2086
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    new-instance v0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;

    invoke-direct {v0, v1}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;-><init>(Lrx/subscriptions/RefCountSubscription;)V

    goto :goto_0
.end method
