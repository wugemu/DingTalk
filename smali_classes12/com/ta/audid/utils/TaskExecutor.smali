.class public Lcom/ta/audid/utils/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/audid/utils/TaskExecutor$TBThreadFactory;
    }
.end annotation


# static fields
.field private static instance:Lcom/ta/audid/utils/TaskExecutor;

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/ta/audid/utils/TaskExecutor;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/ta/audid/utils/TaskExecutor;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static declared-synchronized getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .prologue
    .line 33
    const-class v1, Lcom/ta/audid/utils/TaskExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/audid/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x3

    new-instance v2, Lcom/ta/audid/utils/TaskExecutor$TBThreadFactory;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/ta/audid/utils/TaskExecutor$TBThreadFactory;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ta/audid/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    :cond_0
    sget-object v0, Lcom/ta/audid/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/ta/audid/utils/TaskExecutor;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/ta/audid/utils/TaskExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/audid/utils/TaskExecutor;->instance:Lcom/ta/audid/utils/TaskExecutor;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/ta/audid/utils/TaskExecutor;

    invoke-direct {v0}, Lcom/ta/audid/utils/TaskExecutor;-><init>()V

    sput-object v0, Lcom/ta/audid/utils/TaskExecutor;->instance:Lcom/ta/audid/utils/TaskExecutor;

    .line 43
    :cond_0
    sget-object v0, Lcom/ta/audid/utils/TaskExecutor;->instance:Lcom/ta/audid/utils/TaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .param p1, "future"    # Ljava/util/concurrent/ScheduledFuture;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 51
    :cond_0
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 52
    return-object p1
.end method

.method public final scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;JJ)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p1, "future"    # Ljava/util/concurrent/ScheduledFuture;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J
    .param p5, "period"    # J

    .prologue
    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 59
    :cond_0
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 60
    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
