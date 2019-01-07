.class public Lcom/alibaba/wukong/auth/au;
.super Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
.source "SyncDeviceInfoManager.java"


# static fields
.field private static final bb:Ljava/lang/Object;

.field private static sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alibaba/wukong/sync/AbstractSyncDownTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "DEVICE_"

    sput-object v0, Lcom/alibaba/wukong/auth/au;->bb:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/wukong/auth/au;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 56
    return-void
.end method

.method protected buildKey()Lcom/alibaba/wukong/sync/SharedPrefKey;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    new-instance v0, Lcom/alibaba/wukong/sync/SharedPrefKey;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SharedPrefKey;-><init>()V

    .line 72
    .local v0, "key":Lcom/alibaba/wukong/sync/SharedPrefKey;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/wukong/auth/au;->bb:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/wukong/auth/AuthService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/wukong/auth/bk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "suffix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method public createTask(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
    .locals 1
    .param p1, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/alibaba/wukong/auth/az;

    .end local p1    # "syncInfo":Lcom/alibaba/wukong/auth/az;
    invoke-direct {p1}, Lcom/alibaba/wukong/auth/az;-><init>()V

    .line 40
    .restart local p1    # "syncInfo":Lcom/alibaba/wukong/auth/az;
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/auth/as;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/wukong/auth/as;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/az;)V

    return-object v0
.end method

.method public getSyncEventListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncEventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSyncTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "syncDev"

    return-object v0
.end method

.method public isIdling()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/wukong/auth/au;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offerTask(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 45
    sget-object v0, Lcom/alibaba/wukong/auth/au;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pollTask()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/wukong/auth/au;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 66
    return-void
.end method
