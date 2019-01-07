.class public Lcom/alibaba/wukong/sync/SyncAInfoManager;
.super Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
.source "SyncAInfoManager.java"


# static fields
.field private static final sSyncAListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncEventListener;",
            ">;"
        }
    .end annotation
.end field

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


# instance fields
.field private final SYNC_KEY_SUFFIX:Ljava/lang/String;

.field private final SYNC_TOPIC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncAListeners:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;-><init>()V

    .line 26
    const-string/jumbo v0, "A_"

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->SYNC_KEY_SUFFIX:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "synca"

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->SYNC_TOPIC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncAListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected buildKey()Lcom/alibaba/wukong/sync/SharedPrefKey;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    .line 36
    .local v2, "openId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 37
    new-instance v0, Lcom/alibaba/wukong/sync/SharedPrefKey;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SharedPrefKey;-><init>()V

    .line 38
    .local v0, "key":Lcom/alibaba/wukong/sync/SharedPrefKey;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "MD5"

    invoke-static {v5, v6}, Ligb;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "user":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "A_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "suffix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    .line 49
    .end local v0    # "key":Lcom/alibaba/wukong/sync/SharedPrefKey;
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v4    # "user":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createTask(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
    .locals 1
    .param p1, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wukong/auth/av;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/wukong/auth/av;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/az;)V

    goto :goto_0
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
    .line 73
    sget-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncAListeners:Ljava/util/List;

    return-object v0
.end method

.method protected getSyncTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "synca"

    return-object v0
.end method

.method public isIdling()Z
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offerTask(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 87
    sget-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pollTask()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const-string/jumbo v0, "[TAG] SyncA down"

    const-string/jumbo v1, "[SYNC] synca task end"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncAListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->reset()V

    .line 101
    sget-object v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;->sSyncATaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 102
    return-void
.end method
