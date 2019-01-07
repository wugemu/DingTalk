.class public abstract Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
.super Ljava/lang/Object;
.source "AbstractSyncInfoManager.java"


# instance fields
.field private volatile mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

.field private volatile mSyncInfo:Lcom/alibaba/wukong/auth/az;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
.end method

.method public abstract buildKey()Lcom/alibaba/wukong/sync/SharedPrefKey;
.end method

.method public abstract createTask(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
.end method

.method public abstract getSyncEventListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncEventListener;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized getSyncInfo()Lcom/alibaba/wukong/auth/az;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;

    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/az;->q()Lcom/alibaba/wukong/auth/az;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 59
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 38
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    if-nez v2, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->buildKey()Lcom/alibaba/wukong/sync/SharedPrefKey;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    .line 41
    :cond_2
    invoke-static {}, Liga;->a()Liga;

    move-result-object v2

    invoke-virtual {v2}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    .line 43
    :cond_3
    const-string/jumbo v2, "[TAG] Sync info"

    const-string/jumbo v3, "[SYNC] syncInfo invalid"

    const-string/jumbo v4, "base"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    goto :goto_0

    .line 47
    :cond_4
    new-instance v1, Lcom/alibaba/wukong/auth/az;

    invoke-direct {v1}, Lcom/alibaba/wukong/auth/az;-><init>()V

    .line 48
    .local v1, "syncInfo":Lcom/alibaba/wukong/auth/az;
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/auth/az;->bc:J

    .line 49
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/auth/az;->bd:J

    .line 50
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/auth/az;->be:J

    .line 51
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/auth/az;->bf:J

    .line 52
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->getSyncTopic()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;

    .line 56
    iget-wide v2, v1, Lcom/alibaba/wukong/auth/az;->bc:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    iget-wide v2, v1, Lcom/alibaba/wukong/auth/az;->bf:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 57
    const-string/jumbo v2, "[TAG] Sync info"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] get syncInfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "base"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 35
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "syncInfo":Lcom/alibaba/wukong/auth/az;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract getSyncTopic()Ljava/lang/String;
.end method

.method public abstract isIdling()Z
.end method

.method public abstract offerTask(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)Z
.end method

.method public abstract pollTask()V
.end method

.method public abstract removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSyncInfo(Lcom/alibaba/wukong/auth/az;)Z
    .locals 6
    .param p1, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->buildKey()Lcom/alibaba/wukong/sync/SharedPrefKey;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    .line 67
    :cond_0
    invoke-static {}, Liga;->a()Liga;

    move-result-object v2

    invoke-virtual {v2}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 69
    :cond_1
    const-string/jumbo v2, "[TAG] Sync info"

    const-string/jumbo v3, "[SYNC] syncInfo invalid in update"

    const-string/jumbo v4, "base"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/4 v2, 0x0

    .line 87
    :goto_0
    monitor-exit p0

    return v2

    .line 73
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    iget-wide v4, p1, Lcom/alibaba/wukong/auth/az;->bc:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    iget-wide v4, p1, Lcom/alibaba/wukong/auth/az;->bd:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    iget-wide v4, p1, Lcom/alibaba/wukong/auth/az;->be:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    iget-wide v4, p1, Lcom/alibaba/wukong/auth/az;->bf:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v2, p1, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 79
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v2, v2, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    :cond_3
    :goto_1
    invoke-static {}, Liga;->a()Liga;

    .line 1118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->getSyncTopic()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;

    .line 86
    const-string/jumbo v2, "[TAG] Sync info"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] update syncInfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mPrefKey:Lcom/alibaba/wukong/sync/SharedPrefKey;

    iget-object v4, v4, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "base"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;

    iget-object v2, v2, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->mSyncInfo:Lcom/alibaba/wukong/auth/az;

    iget-object v2, v2, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    iput-object v2, p1, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 63
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
