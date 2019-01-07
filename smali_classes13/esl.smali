.class public final Lesl;
.super Ljava/lang/Object;
.source "SearchWukongSyn.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lesl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    .line 33
    const-class v2, Lesl;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lesl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 73
    .local v0, "isSwitchRoute":Z
    :goto_0
    monitor-exit v2

    return-void

    .line 37
    .end local v0    # "isSwitchRoute":Z
    :cond_0
    const/4 v0, 0x0

    .line 39
    .restart local v0    # "isSwitchRoute":Z
    :try_start_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v3, "f_search_rec_use_sync_a"

    .line 1083
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    if-nez v1, :cond_1

    const-string/jumbo v1, "search_rec_use_sync_a"

    const/4 v3, 0x0

    .line 40
    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    :cond_1
    new-instance v1, Lesj;

    sget-object v3, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v4, 0x1f40

    invoke-direct {v1, v3, v4}, Lesj;-><init>(Lcom/alibaba/wukong/sync/SyncType;I)V

    .line 45
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    const-class v3, Lcom/alibaba/wukong/sync/SyncService;

    invoke-virtual {v1, v3}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/sync/SyncService;

    sget-object v3, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    new-instance v4, Lesk;

    invoke-direct {v4}, Lesk;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 47
    const-string/jumbo v1, "pref_key_recommend_sync_a"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    const-string/jumbo v1, "switch sync route from sync to sync_a"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 2073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, v1, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const-string/jumbo v1, "pref_key_recommend_sync_a"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 50
    const/4 v0, 0x1

    .line 68
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 69
    invoke-static {}, Lesd;->a()Lesd;

    move-result-object v1

    invoke-virtual {v1}, Lesd;->c()V

    .line 72
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lesl;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 55
    :cond_4
    :try_start_2
    new-instance v1, Lesj;

    const/16 v3, 0x1389

    invoke-direct {v1, v3}, Lesj;-><init>(I)V

    .line 58
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    const-class v3, Lcom/alibaba/wukong/sync/SyncService;

    invoke-virtual {v1, v3}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/sync/SyncService;

    new-instance v3, Lesk;

    invoke-direct {v3}, Lesk;-><init>()V

    invoke-virtual {v1, v3}, Lcom/alibaba/wukong/sync/SyncService;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 60
    const-string/jumbo v1, "pref_key_recommend_sync_a"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string/jumbo v1, "switch sync route from sync_a to sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, v1, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string/jumbo v1, "pref_key_recommend_sync_a"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcpk;->b(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    const/4 v0, 0x1

    goto :goto_1
.end method
