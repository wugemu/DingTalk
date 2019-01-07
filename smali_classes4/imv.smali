.class public final Limv;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"


# static fields
.field public static e:Limv;

.field private static final f:I

.field private static final g:I

.field private static final h:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final a:Ling;

.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field final c:Limy;

.field final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 35
    sput v0, Limv;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Limv;->g:I

    .line 41
    new-instance v0, Limw;

    invoke-direct {v0}, Limw;-><init>()V

    sput-object v0, Limv;->h:Ljava/util/concurrent/ThreadFactory;

    .line 83
    new-instance v0, Limv;

    invoke-direct {v0}, Limv;-><init>()V

    sput-object v0, Limv;->e:Limv;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ling;

    invoke-direct {v0}, Ling;-><init>()V

    iput-object v0, p0, Limv;->a:Ling;

    .line 66
    sget-object v0, Limv;->h:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Limv;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 72
    new-instance v0, Limy;

    iget-object v1, p0, Limv;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1}, Limy;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Limv;->c:Limy;

    .line 77
    sget v0, Limv;->g:I

    sget-object v1, Limv;->h:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Limv;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 90
    iget-object v0, p0, Limv;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 91
    iget-object v0, p0, Limv;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 92
    iget-object v0, p0, Limv;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 94
    iget-object v0, p0, Limv;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 95
    return-void
.end method

.method public static a()Limv;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Limv;->e:Limv;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    const-string/jumbo v0, ""

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AsyncTaskExecutor.executeSerially(Runnable, threadName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    iget-object v1, p0, Limv;->c:Limy;

    sget-object v2, Limz;->a:Lina;

    invoke-virtual {v2, p1, v0}, Lina;->a(Ljava/lang/Runnable;Ljava/lang/String;)Limz;

    move-result-object v0

    .line 2035
    invoke-virtual {v1, v0}, Limy;->a(Limz;)V

    .line 2036
    invoke-virtual {v1}, Limy;->a()V

    .line 119
    return-void
.end method
