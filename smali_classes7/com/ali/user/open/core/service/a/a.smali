.class public final Lcom/ali/user/open/core/service/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/core/service/MemberExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/open/core/service/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/HandlerThread;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/open/core/service/a/a;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/ali/user/open/core/service/a/a;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SDK Looper Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/open/core/service/a/a;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/ali/user/open/core/service/a/a;->d:Landroid/os/HandlerThread;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/open/core/service/a/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/open/core/service/a/a;->e:Landroid/os/Handler;

    new-instance v8, Lcom/ali/user/open/core/service/a/a$1;

    invoke-direct {v8, p0}, Lcom/ali/user/open/core/service/a/a$1;-><init>(Lcom/ali/user/open/core/service/a/a;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0x8

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/ali/user/open/core/service/a/a;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v9, Lcom/ali/user/open/core/service/a/a$a;

    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v9, v0}, Lcom/ali/user/open/core/service/a/a$a;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/ali/user/open/core/service/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getDefaultLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final postHandlerTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postUITask(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/core/service/a/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/open/core/service/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/open/core/service/a/a$2;-><init>(Lcom/ali/user/open/core/service/a/a;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
