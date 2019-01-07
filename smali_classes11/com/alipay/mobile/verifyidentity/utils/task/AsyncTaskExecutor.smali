.class public Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"


# static fields
.field public static d:Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

.field private static final e:I

.field private static final f:I

.field private static final g:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final a:Lcom/alipay/mobile/verifyidentity/utils/task/transaction/TransactionExecutor;

.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 40
    sput v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->f:I

    .line 45
    new-instance v0, Lcom/alipay/mobile/verifyidentity/utils/task/a;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/utils/task/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ThreadFactory;

    .line 89
    new-instance v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->d:Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/alipay/mobile/verifyidentity/utils/task/transaction/TransactionExecutor;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/utils/task/transaction/TransactionExecutor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a:Lcom/alipay/mobile/verifyidentity/utils/task/transaction/TransactionExecutor;

    .line 76
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ThreadFactory;

    .line 77
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 82
    sget v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->f:I

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ThreadFactory;

    .line 83
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 101
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->d:Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AsyncTaskExecutor.execute(Runnable, threadName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
