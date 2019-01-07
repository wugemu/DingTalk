.class public Lcom/alibaba/wukong/sync/SyncParaService;
.super Ljava/lang/Object;
.source "SyncParaService.java"


# static fields
.field private static final SYNC_RUNNING_CONCURRENT:I = 0x1

.field private static final SYNC_WAITING_CONCURRENT:I = 0xa

.field private static mRunningTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alibaba/wukong/auth/bd;",
            ">;"
        }
    .end annotation
.end field

.field private static mWaitingTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alibaba/wukong/auth/bd;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/alibaba/wukong/sync/SyncParaService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->mWaitingTasks:Ljava/util/concurrent/BlockingQueue;

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->mRunningTasks:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/wukong/sync/SyncParaService;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/alibaba/wukong/sync/SyncParaService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->sInstance:Lcom/alibaba/wukong/sync/SyncParaService;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alibaba/wukong/sync/SyncParaService;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SyncParaService;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->sInstance:Lcom/alibaba/wukong/sync/SyncParaService;

    .line 33
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->sInstance:Lcom/alibaba/wukong/sync/SyncParaService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized select()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "[TAG] Sync para down"

    const-string/jumbo v3, "base"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 62
    .local v1, "trace":Lhzv;
    :try_start_1
    sget-object v2, Lcom/alibaba/wukong/sync/SyncParaService;->mRunningTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[SYNC] sync para task is running, remain "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alibaba/wukong/sync/SyncParaService;->mWaitingTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :try_start_2
    invoke-static {v1}, Lhzt;->a(Lhzv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_3
    sget-object v2, Lcom/alibaba/wukong/sync/SyncParaService;->mWaitingTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/auth/bd;

    .line 67
    .local v0, "task":Lcom/alibaba/wukong/auth/bd;
    if-nez v0, :cond_1

    .line 68
    const-string/jumbo v2, "[SYNC] sync para task queue is empty"

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :try_start_4
    invoke-static {v1}, Lhzt;->a(Lhzv;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 60
    .end local v0    # "task":Lcom/alibaba/wukong/auth/bd;
    .end local v1    # "trace":Lhzv;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 71
    .restart local v0    # "task":Lcom/alibaba/wukong/auth/bd;
    .restart local v1    # "trace":Lhzv;
    :cond_1
    :try_start_5
    sget-object v2, Lcom/alibaba/wukong/sync/SyncParaService;->mRunningTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/bd;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :goto_1
    :try_start_6
    invoke-static {v1}, Lhzt;->a(Lhzv;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 74
    :cond_2
    :try_start_7
    const-string/jumbo v2, "[SYNC] sync para task add to run fail"

    invoke-virtual {v1, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 76
    .end local v0    # "task":Lcom/alibaba/wukong/auth/bd;
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method


# virtual methods
.method public declared-synchronized endTask()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[TAG] Sync down"

    const-string/jumbo v1, "[SYNC] sync task end"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->mRunningTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lcom/alibaba/wukong/sync/SyncParaService;->select()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdling()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->mRunningTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->mWaitingTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 88
    sget-object v0, Lcom/alibaba/wukong/sync/SyncParaService;->mRunningTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startTask(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/wukong/auth/af;
    .param p2, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "[TAG] Sync para down"

    const-string/jumbo v4, "base"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 39
    .local v2, "trace":Lhzv;
    if-nez p1, :cond_0

    .line 40
    :try_start_1
    const-string/jumbo v3, "[SYNC] SyncPushModel para null"

    invoke-virtual {v2, v3}, Lhzv;->b(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v3, "model is null"

    invoke-static {p2, v3}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    invoke-static {v2}, Lhzt;->a(Lhzv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_3
    new-instance v0, Lcom/alibaba/wukong/auth/bd;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/wukong/auth/bd;-><init>(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 46
    .local v0, "newTask":Lcom/alibaba/wukong/auth/bd;
    sget-object v3, Lcom/alibaba/wukong/sync/SyncParaService;->mWaitingTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 47
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 48
    const-string/jumbo v3, "[SYNC] sync para task is busy"

    invoke-virtual {v2, v3}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    invoke-static {v2}, Lhzt;->a(Lhzv;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "newTask":Lcom/alibaba/wukong/auth/bd;
    .end local v1    # "ret":Z
    .end local v2    # "trace":Lhzv;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 53
    .restart local v0    # "newTask":Lcom/alibaba/wukong/auth/bd;
    .restart local v1    # "ret":Z
    .restart local v2    # "trace":Lhzv;
    :cond_1
    :try_start_5
    invoke-direct {p0}, Lcom/alibaba/wukong/sync/SyncParaService;->select()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    :try_start_6
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .end local v0    # "newTask":Lcom/alibaba/wukong/auth/bd;
    .end local v1    # "ret":Z
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
