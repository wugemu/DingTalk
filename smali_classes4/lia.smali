.class public final Llia;
.super Llgv;
.source "CachedThreadScheduler.java"

# interfaces
.implements Llif;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llia$c;,
        Llia$b;,
        Llia$a;
    }
.end annotation


# static fields
.field static final a:Llia$c;

.field static final b:Llia$a;

.field private static final e:J

.field private static final f:Ljava/util/concurrent/TimeUnit;


# instance fields
.field final c:Ljava/util/concurrent/ThreadFactory;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Llia$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Llia;->f:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v0, Llia$c;

    sget-object v1, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Llia$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    sput-object v0, Llia;->a:Llia$c;

    invoke-virtual {v0}, Llia$c;->unsubscribe()V

    .line 42
    new-instance v0, Llia$a;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3, v4}, Llia$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 43
    sput-object v0, Llia;->b:Llia$a;

    invoke-virtual {v0}, Llia$a;->b()V

    .line 45
    const-string/jumbo v0, "rx.io-scheduler.keepalive"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Llia;->e:J

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 5
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 146
    invoke-direct {p0}, Llgv;-><init>()V

    .line 147
    iput-object p1, p0, Llia;->c:Ljava/util/concurrent/ThreadFactory;

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Llia;->b:Llia$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llia;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1154
    new-instance v0, Llia$a;

    iget-object v1, p0, Llia;->c:Ljava/util/concurrent/ThreadFactory;

    sget-wide v2, Llia;->e:J

    sget-object v4, Llia;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Llia$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 1156
    iget-object v1, p0, Llia;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Llia;->b:Llia$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    invoke-virtual {v0}, Llia$a;->b()V

    .line 150
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
    .line 176
    new-instance v1, Llia$b;

    iget-object v0, p0, Llia;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llia$a;

    invoke-direct {v1, v0}, Llia$b;-><init>(Llia$a;)V

    return-object v1
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 163
    :cond_0
    iget-object v1, p0, Llia;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llia$a;

    .line 164
    .local v0, "curr":Llia$a;
    sget-object v1, Llia;->b:Llia$a;

    if-ne v0, v1, :cond_1

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Llia;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Llia;->b:Llia$a;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Llia$a;->b()V

    goto :goto_0
.end method
