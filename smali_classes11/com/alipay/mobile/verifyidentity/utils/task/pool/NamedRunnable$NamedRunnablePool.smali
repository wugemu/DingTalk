.class public final Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;
.super Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;
.source "NamedRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedRunnablePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool",
        "<",
        "Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AsyncTaskExecutor"

    const-string/jumbo v2, "NamedRunnablePool.obtain(): create a new NamedRunnable obj."

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NamedRunable_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1065
    :goto_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_1
    monitor-exit p0

    return-object v0

    .line 1063
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NamedRunable_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AsyncTaskExecutor"

    const-string/jumbo v2, "NamedRunnablePool.obtain(): hit a cache NamedRunnable obj."

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    .line 1103
    iput-object p1, v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    .line 2099
    iput-object p2, v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    .line 2107
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->b(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
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

.method public final declared-synchronized a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    return-void
.end method
