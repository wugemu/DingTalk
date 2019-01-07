.class public final Lcbr;
.super Ljava/lang/Object;
.source "UUidGenerator.java"


# static fields
.field private static a:Lcbr;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcbr;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcbr;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcbr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcbr;->a:Lcbr;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcbr;

    invoke-direct {v0}, Lcbr;-><init>()V

    sput-object v0, Lcbr;->a:Lcbr;

    .line 37
    :cond_0
    sget-object v0, Lcbr;->a:Lcbr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized c()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbr;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 47
    iget-object v0, p0, Lcbr;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0x9184e72a000L

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcbr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lidy;->a(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
