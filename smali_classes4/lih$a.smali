.class final Llih$a;
.super Llgv$a;
.source "TrampolineScheduler.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Llih$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Llkw;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Llgv$a;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Llih$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Llih$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Llkw;

    invoke-direct {v0}, Llkw;-><init>()V

    iput-object v0, p0, Llih$a;->c:Llkw;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Llih$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Llhf;J)Llgz;
    .locals 4
    .param p1, "action"    # Llhf;
    .param p2, "execTime"    # J

    .prologue
    .line 63
    iget-object v2, p0, Llih$a;->c:Llkw;

    invoke-virtual {v2}, Llkw;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v2

    .line 79
    :goto_0
    return-object v2

    .line 66
    :cond_0
    new-instance v1, Llih$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Llih$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Llih$b;-><init>(Llhf;Ljava/lang/Long;I)V

    .line 67
    .local v1, "timedAction":Llih$b;
    iget-object v2, p0, Llih$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Llih$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_3

    .line 71
    :cond_1
    iget-object v2, p0, Llih$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llih$b;

    .line 72
    .local v0, "polled":Llih$b;
    if-eqz v0, :cond_2

    .line 73
    iget-object v2, v0, Llih$b;->a:Llhf;

    invoke-interface {v2}, Llhf;->call()V

    .line 75
    :cond_2
    iget-object v2, p0, Llih$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_1

    .line 76
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v2

    goto :goto_0

    .line 79
    .end local v0    # "polled":Llih$b;
    :cond_3
    new-instance v2, Llih$a$1;

    invoke-direct {v2, p0, v1}, Llih$a$1;-><init>(Llih$a;Llih$b;)V

    invoke-static {v2}, Llkz;->a(Llhf;)Llgz;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Llhf;)Llgz;
    .locals 2
    .param p1, "action"    # Llhf;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    invoke-direct {p0, p1, v0, v1}, Llih$a;->a(Llhf;J)Llgz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
    .locals 6
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 2120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 59
    .local v0, "execTime":J
    new-instance v2, Llig;

    invoke-direct {v2, p1, p0, v0, v1}, Llig;-><init>(Llhf;Llgv$a;J)V

    invoke-direct {p0, v2, v0, v1}, Llih$a;->a(Llhf;J)Llgz;

    move-result-object v2

    return-object v2
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Llih$a;->c:Llkw;

    invoke-virtual {v0}, Llkw;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Llih$a;->c:Llkw;

    invoke-virtual {v0}, Llkw;->unsubscribe()V

    .line 93
    return-void
.end method
