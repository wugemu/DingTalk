.class public final Lcpw;
.super Ljava/lang/Object;
.source "UUidGenerator.java"


# static fields
.field private static a:Lcpw;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcpw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    return-void
.end method

.method public static declared-synchronized a()Lcpw;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcpw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcpw;->a:Lcpw;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcpw;

    invoke-direct {v0}, Lcpw;-><init>()V

    sput-object v0, Lcpw;->a:Lcpw;

    .line 26
    :cond_0
    sget-object v0, Lcpw;->a:Lcpw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    monitor-enter p0

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcpw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 1036
    iget-object v0, p0, Lcpw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0x9184e72a000L

    mul-long/2addr v0, v2

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 31
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
