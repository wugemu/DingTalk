.class public final Llkw;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Llgz;


# static fields
.field static final b:Llhf;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Llhf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Llkw$1;

    invoke-direct {v0}, Llkw$1;-><init>()V

    sput-object v0, Llkw;->b:Llhf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Llkw;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
.end method

.method private constructor <init>(Llhf;)V
    .locals 1
    .param p1, "action"    # Llhf;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llkw;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static a()Llkw;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Llkw;

    invoke-direct {v0}, Llkw;-><init>()V

    return-object v0
.end method

.method public static a(Llhf;)Llkw;
    .locals 1
    .param p0, "onUnsubscribe"    # Llhf;

    .prologue
    .line 57
    new-instance v0, Llkw;

    invoke-direct {v0, p0}, Llkw;-><init>(Llhf;)V

    return-object v0
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Llkw;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Llkw;->b:Llhf;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Llkw;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llhf;

    .line 68
    .local v0, "action":Llhf;
    sget-object v1, Llkw;->b:Llhf;

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Llkw;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Llkw;->b:Llhf;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "action":Llhf;
    check-cast v0, Llhf;

    .line 70
    .restart local v0    # "action":Llhf;
    if-eqz v0, :cond_0

    sget-object v1, Llkw;->b:Llhf;

    if-eq v0, v1, :cond_0

    .line 71
    invoke-interface {v0}, Llhf;->call()V

    .line 74
    :cond_0
    return-void
.end method
