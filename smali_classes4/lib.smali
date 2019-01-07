.class public final Llib;
.super Llgv;
.source "EventLoopsScheduler.java"

# interfaces
.implements Llif;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llib$c;,
        Llib$a;,
        Llib$b;
    }
.end annotation


# static fields
.field static final a:I

.field static final b:Llib$c;

.field static final c:Llib$b;


# instance fields
.field final d:Ljava/util/concurrent/ThreadFactory;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Llib$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    const-string/jumbo v3, "rx.scheduler.max-computation-threads"

    invoke-static {v3, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    .local v2, "maxThreads":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 38
    .local v0, "cpuCount":I
    if-lez v2, :cond_0

    if-le v2, v0, :cond_1

    .line 39
    :cond_0
    move v1, v0

    .line 43
    .local v1, "max":I
    :goto_0
    sput v1, Llib;->a:I

    .line 48
    new-instance v3, Llib$c;

    sget-object v4, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v3, v4}, Llib$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    sput-object v3, Llib;->b:Llib$c;

    invoke-virtual {v3}, Llib$c;->unsubscribe()V

    .line 53
    new-instance v3, Llib$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Llib$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v3, Llib;->c:Llib$b;

    return-void

    .line 41
    .end local v1    # "max":I
    :cond_1
    move v1, v2

    .restart local v1    # "max":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 95
    invoke-direct {p0}, Llgv;-><init>()V

    .line 96
    iput-object p1, p0, Llib;->d:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Llib;->c:Llib$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llib;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1108
    new-instance v0, Llib$b;

    iget-object v1, p0, Llib;->d:Ljava/util/concurrent/ThreadFactory;

    sget v2, Llib;->a:I

    invoke-direct {v0, v1, v2}, Llib$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 1109
    iget-object v1, p0, Llib;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Llib;->c:Llib$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1110
    invoke-virtual {v0}, Llib$b;->b()V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Llgv$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    new-instance v1, Llib$a;

    iget-object v0, p0, Llib;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llib$b;

    invoke-virtual {v0}, Llib$b;->a()Llib$c;

    move-result-object v0

    invoke-direct {v1, v0}, Llib$a;-><init>(Llib$c;)V

    return-object v1
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    :cond_0
    iget-object v1, p0, Llib;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llib$b;

    .line 118
    .local v0, "curr":Llib$b;
    sget-object v1, Llib;->c:Llib$b;

    if-ne v0, v1, :cond_1

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Llib;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Llib;->c:Llib$b;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Llib$b;->b()V

    goto :goto_0
.end method
