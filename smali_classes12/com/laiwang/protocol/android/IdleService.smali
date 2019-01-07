.class public Lcom/laiwang/protocol/android/IdleService;
.super Ljava/lang/Object;
.source "IdleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/IdleService$IdleHandler;,
        Lcom/laiwang/protocol/android/IdleService$IdleTimer;
    }
.end annotation


# static fields
.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static instance:Lcom/laiwang/protocol/android/IdleService;


# instance fields
.field private idleExecutor:Lcom/laiwang/protocol/android/bu;

.field private idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

.field private volatile isIdle:Z

.field private mHandler:Lcom/laiwang/protocol/android/IdleService$IdleHandler;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/IdleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->observers:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/IdleService;->isIdle:Z

    .line 38
    new-instance v0, Lcom/laiwang/protocol/android/bt;

    const-string/jumbo v1, "idle-serv"

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->idleExecutor:Lcom/laiwang/protocol/android/bu;

    .line 39
    new-instance v0, Lcom/laiwang/protocol/android/IdleService$IdleHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/IdleService$IdleHandler;-><init>(Lcom/laiwang/protocol/android/IdleService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->mHandler:Lcom/laiwang/protocol/android/IdleService$IdleHandler;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/laiwang/protocol/android/IdleService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/IdleService;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/IdleService;->isIdle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/laiwang/protocol/android/IdleService;)Lcom/laiwang/protocol/android/IdleService$IdleHandler;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/IdleService;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->mHandler:Lcom/laiwang/protocol/android/IdleService$IdleHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/laiwang/protocol/android/IdleService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/IdleService;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->observers:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/laiwang/protocol/android/IdleService;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/laiwang/protocol/android/IdleService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/android/IdleService;->instance:Lcom/laiwang/protocol/android/IdleService;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/laiwang/protocol/android/IdleService;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/IdleService;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/IdleService;->instance:Lcom/laiwang/protocol/android/IdleService;

    .line 34
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/IdleService;->instance:Lcom/laiwang/protocol/android/IdleService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addIdleObserver(Lcom/laiwang/protocol/android/IdleObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/laiwang/protocol/android/IdleObserver;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/IdleService;->isIdle:Z

    return v0
.end method

.method public removeIdleObserver(Lcom/laiwang/protocol/android/IdleObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/laiwang/protocol/android/IdleObserver;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized startTimer()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/IdleService$IdleTimer;->stop()V

    .line 59
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->idleExecutor:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 61
    :cond_1
    new-instance v0, Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    const-string/jumbo v1, "idle-serv-timer"

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/IdleService$IdleTimer;-><init>(Lcom/laiwang/protocol/android/IdleService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    .line 62
    iget-object v0, p0, Lcom/laiwang/protocol/android/IdleService;->idleExecutor:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTimer()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/IdleService$IdleTimer;->stop()V

    .line 70
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->idleExecutor:Lcom/laiwang/protocol/android/bu;

    iget-object v2, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->idleTimer:Lcom/laiwang/protocol/android/IdleService$IdleTimer;

    .line 73
    :cond_2
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/IdleService;->isIdle:Z

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/laiwang/protocol/android/IdleService;->isIdle:Z

    .line 75
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->mHandler:Lcom/laiwang/protocol/android/IdleService$IdleHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/IdleService$IdleHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 76
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService;->mHandler:Lcom/laiwang/protocol/android/IdleService$IdleHandler;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/IdleService$IdleHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
