.class public Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;
.super Ljava/lang/Object;
.source "SyncMinCreateTimeManager.java"


# static fields
.field private static final MIN_CREATE_TIME_STEP:J = 0xdbba0L

.field private static final PREF_KEY_MIN_CREATE_TIME:Ljava/lang/String; = "pref_min_create_time_"

.field private static volatile mInstance:Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;


# instance fields
.field private mLastSaveTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->mInstance:Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->mInstance:Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->mInstance:Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->mInstance:Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getMinCreateTime()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v4

    .line 81
    .local v4, "openId":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pref_min_create_time_"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Liga;->a()Liga;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Liga;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 84
    .local v2, "minCreateTime":J
    const-string/jumbo v1, "SyncMin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Sync getMinCreateTime:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "base"

    invoke-static {v1, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "minCreateTime":J
    :cond_0
    return-wide v2
.end method

.method public saveMinCreateTime(Lcom/alibaba/wukong/auth/ag;)V
    .locals 6
    .param p1, "pushPackageModel"    # Lcom/alibaba/wukong/auth/ag;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/wukong/auth/ag;->aE:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/wukong/auth/ag;->aE:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 47
    :cond_0
    const-string/jumbo v2, "SyncMin"

    const-string/jumbo v3, "Sync MinCreateTime is invalid"

    const-string/jumbo v4, "base"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 52
    .local v0, "currentTime":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    :cond_3
    iget-wide v2, p0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->mLastSaveTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 59
    iput-wide v0, p0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->mLastSaveTime:J

    .line 61
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager$1;-><init>(Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;Lcom/alibaba/wukong/auth/ag;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
