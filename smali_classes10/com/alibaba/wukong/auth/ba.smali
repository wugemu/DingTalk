.class public Lcom/alibaba/wukong/auth/ba;
.super Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
.source "SyncInfoManager.java"


# static fields
.field private static final bi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private static bj:Ljava/util/concurrent/BlockingQueue;
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
    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/ba;->bi:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/wukong/auth/ba;->bj:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/ba;->bi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected buildKey()Lcom/alibaba/wukong/sync/SharedPrefKey;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    .line 88
    .local v2, "openId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 89
    new-instance v0, Lcom/alibaba/wukong/sync/SharedPrefKey;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SharedPrefKey;-><init>()V

    .line 90
    .local v0, "key":Lcom/alibaba/wukong/sync/SharedPrefKey;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string/jumbo v5, "MD5"

    invoke-static {v4, v5}, Ligb;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "user":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    .line 98
    .end local v0    # "key":Lcom/alibaba/wukong/sync/SharedPrefKey;
    .end local v1    # "user":Ljava/lang/String;
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
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wukong/auth/ax;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/wukong/auth/ax;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/az;)V

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
    .line 47
    sget-object v0, Lcom/alibaba/wukong/auth/ba;->bi:Ljava/util/List;

    return-object v0
.end method

.method protected getSyncTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "sync"

    return-object v0
.end method

.method public isIdling()Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/alibaba/wukong/auth/ba;->bj:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offerTask(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/wukong/auth/ba;->bj:Ljava/util/concurrent/BlockingQueue;

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
    .line 68
    const-string/jumbo v0, "[TAG] Sync down"

    const-string/jumbo v1, "[SYNC] sync task end"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/alibaba/wukong/auth/ba;->bj:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/ba;->bi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->reset()V

    .line 82
    sget-object v0, Lcom/alibaba/wukong/auth/ba;->bj:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 83
    return-void
.end method
