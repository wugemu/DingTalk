.class public Lcom/alibaba/wukong/auth/as;
.super Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
.source "SyncDeviceDownTask.java"


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
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/as;->aZ:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/az;)V
    .locals 0
    .param p1, "syncInfoManager"    # Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
    .param p2, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/az;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/as;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/as;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/wukong/auth/as;->finish()V

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
    .line 42
    .local p0, "handler":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/SyncDataHandler;->getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/SyncDataHandler;->getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getObjectTypes()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_1

    .line 50
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/SyncDataHandler;->getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getObjectTypes()Ljava/util/Collection;

    move-result-object v0

    .line 47
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

    .line 48
    .local v1, "objectType":Ljava/lang/Integer;
    sget-object v3, Lcom/alibaba/wukong/auth/as;->aZ:Ljava/util/Map;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/wukong/auth/as;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/as;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/wukong/auth/as;->finish()V

    return-void
.end method


# virtual methods
.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    const-class v1, Lcom/alibaba/wukong/auth/av;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/as;->aY:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Liab;

    const-string/jumbo v2, "syncdevice-down-task"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/auth/as;->aY:Ljava/util/concurrent/Executor;

    .line 58
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/as;->aY:Ljava/util/concurrent/Executor;

    monitor-exit v1

    return-object v0

    .line 59
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
    .line 38
    sget-object v0, Lcom/alibaba/wukong/auth/as;->aZ:Ljava/util/Map;

    return-object v0
.end method

.method public process(Lcom/alibaba/wukong/auth/af;Lcom/alibaba/wukong/auth/bb;)V
    .locals 5
    .param p1, "syncPushModel"    # Lcom/alibaba/wukong/auth/af;
    .param p2, "mergeAck"    # Lcom/alibaba/wukong/auth/bb;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    const-string/jumbo v3, "[TAG] SyncDevice task"

    const-string/jumbo v4, "base"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 67
    .local v2, "trace":Lhzv;
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/alibaba/wukong/auth/af;->av:Lcom/alibaba/wukong/auth/ag;

    if-nez v3, :cond_1

    .line 68
    :cond_0
    const-string/jumbo v3, "[SYNCDEVICE] syncdevice pkg model is null"

    invoke-virtual {v2, v3}, Lhzv;->b(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/alibaba/wukong/auth/as;->endProcessor:Lcom/alibaba/wukong/auth/bb$b;

    invoke-virtual {p2, v3}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/auth/bb$b;)V

    .line 70
    const-string/jumbo v3, "model is null"

    invoke-virtual {p2, v3}, Lcom/alibaba/wukong/auth/bb;->failed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 95
    :goto_0
    return-void

    .line 74
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/alibaba/wukong/auth/af;->av:Lcom/alibaba/wukong/auth/ag;

    .line 75
    .local v0, "model":Lcom/alibaba/wukong/auth/ag;
    iget-object v3, p1, Lcom/alibaba/wukong/auth/af;->ax:Lcom/alibaba/wukong/auth/ac;

    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 78
    .local v1, "reconnectType":I
    :goto_1
    new-instance v3, Lcom/alibaba/wukong/auth/as$1;

    invoke-direct {v3, p0}, Lcom/alibaba/wukong/auth/as$1;-><init>(Lcom/alibaba/wukong/auth/as;)V

    invoke-virtual {p2, v3}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/auth/bb$b;)V

    .line 91
    invoke-virtual {p0, v0, p2, v1}, Lcom/alibaba/wukong/auth/as;->parseData(Lcom/alibaba/wukong/auth/ag;Lcom/alibaba/wukong/auth/bb;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 75
    .end local v1    # "reconnectType":I
    :cond_2
    :try_start_2
    iget-object v3, p1, Lcom/alibaba/wukong/auth/af;->ax:Lcom/alibaba/wukong/auth/ac;

    iget-object v3, v3, Lcom/alibaba/wukong/auth/ac;->ap:Ljava/lang/Integer;

    invoke-static {v3}, Ligb;->a(Ljava/lang/Integer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    .line 94
    .end local v0    # "model":Lcom/alibaba/wukong/auth/ag;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    throw v3
.end method
