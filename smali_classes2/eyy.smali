.class public Leyy;
.super Ljava/lang/Object;
.source "TimerTool.java"


# static fields
.field private static volatile a:Leyy;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    return-void
.end method

.method public static a()Leyy;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Leyy;->a:Leyy;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Leyy;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Leyy;->a:Leyy;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Leyy;

    invoke-direct {v0}, Leyy;-><init>()V

    sput-object v0, Leyy;->a:Leyy;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Leyy;->a:Leyy;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/TimerTask;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .prologue
    .line 61
    monitor-enter p0

    if-nez p1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 67
    :goto_0
    monitor-exit p0

    return-object v0

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    :cond_1
    iget-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/TimerTask;JJ)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    .line 51
    monitor-enter p0

    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 57
    :goto_0
    monitor-exit p0

    return-object v0

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 55
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    :cond_1
    iget-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Leyy;->b:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
