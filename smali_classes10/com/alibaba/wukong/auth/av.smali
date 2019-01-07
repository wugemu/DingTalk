.class public Lcom/alibaba/wukong/auth/av;
.super Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
.source "SyncADownTask.java"


# static fields
.field private static aY:Ljava/util/concurrent/Executor;

.field private static final aZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/wukong/sync/SyncDataHandler",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/av;->aZ:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/az;)V
    .locals 0
    .param p1, "syncInfoManager"    # Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
    .param p2, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/az;)V

    .line 26
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/sync/SyncDataHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/sync/SyncDataHandler",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "handler":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<Ljava/lang/Object;>;"
    if-nez p0, :cond_1

    .line 40
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/SyncDataHandler;->getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getObjectTypes()Ljava/util/Collection;

    move-result-object v0

    .line 37
    .local v0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 38
    .local v1, "objectType":Ljava/lang/Integer;
    sget-object v3, Lcom/alibaba/wukong/auth/av;->aZ:Ljava/util/Map;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    const-class v1, Lcom/alibaba/wukong/auth/av;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/av;->aY:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Liab;

    const-string/jumbo v2, "synca-down-task"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/auth/av;->aY:Ljava/util/concurrent/Executor;

    .line 48
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/av;->aY:Ljava/util/concurrent/Executor;

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/wukong/sync/SyncDataHandler",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/wukong/auth/av;->aZ:Ljava/util/Map;

    return-object v0
.end method
