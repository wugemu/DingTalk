.class public final Lrx/subscriptions/RefCountSubscription;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/RefCountSubscription$InnerSubscription;,
        Lrx/subscriptions/RefCountSubscription$a;
    }
.end annotation


# static fields
.field static final a:Lrx/subscriptions/RefCountSubscription$a;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subscriptions/RefCountSubscription$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Llgz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lrx/subscriptions/RefCountSubscription$a;

    invoke-direct {v0, v1, v1}, Lrx/subscriptions/RefCountSubscription$a;-><init>(ZI)V

    sput-object v0, Lrx/subscriptions/RefCountSubscription;->a:Lrx/subscriptions/RefCountSubscription$a;

    return-void
.end method

.method public constructor <init>(Llgz;)V
    .locals 2
    .param p1, "s"    # Llgz;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/subscriptions/RefCountSubscription;->a:Lrx/subscriptions/RefCountSubscription$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/RefCountSubscription;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription;->c:Llgz;

    .line 68
    return-void
.end method


# virtual methods
.method a(Lrx/subscriptions/RefCountSubscription$a;)V
    .locals 1
    .param p1, "state"    # Lrx/subscriptions/RefCountSubscription$a;

    .prologue
    .line 112
    iget-boolean v0, p1, Lrx/subscriptions/RefCountSubscription$a;->a:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lrx/subscriptions/RefCountSubscription$a;->b:I

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->c:Llgz;

    invoke-interface {v0}, Llgz;->unsubscribe()V

    .line 115
    :cond_0
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/RefCountSubscription$a;

    iget-boolean v0, v0, Lrx/subscriptions/RefCountSubscription$a;->a:Z

    return v0
.end method

.method public final unsubscribe()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/RefCountSubscription$a;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/RefCountSubscription$a;

    .line 103
    .local v2, "oldState":Lrx/subscriptions/RefCountSubscription$a;
    iget-boolean v3, v2, Lrx/subscriptions/RefCountSubscription$a;->a:Z

    if-eqz v3, :cond_1

    .line 109
    :goto_0
    return-void

    .line 1050
    :cond_1
    new-instance v1, Lrx/subscriptions/RefCountSubscription$a;

    const/4 v3, 0x1

    iget v4, v2, Lrx/subscriptions/RefCountSubscription$a;->b:I

    invoke-direct {v1, v3, v4}, Lrx/subscriptions/RefCountSubscription$a;-><init>(ZI)V

    .line 107
    .local v1, "newState":Lrx/subscriptions/RefCountSubscription$a;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lrx/subscriptions/RefCountSubscription;->a(Lrx/subscriptions/RefCountSubscription$a;)V

    goto :goto_0
.end method
