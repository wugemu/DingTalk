.class public final Ldwi;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "TaskListSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Ldqu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Ldwi;


# instance fields
.field private b:Lcom/alibaba/wukong/sync/SyncEventListener;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x2fda

    const-class v2, Ldqu;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 42
    iget-object v0, p0, Ldwi;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ldwi$1;

    invoke-direct {v0, p0}, Ldwi$1;-><init>(Ldwi;)V

    iput-object v0, p0, Ldwi;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    .line 69
    const-class v0, Lcom/alibaba/wukong/sync/SyncService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    iget-object v2, p0, Ldwi;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 32
    const-class v1, Ldwi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldwi;->a:Ldwi;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ldwi;

    invoke-direct {v0}, Ldwi;-><init>()V

    sput-object v0, Ldwi;->a:Ldwi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit v1

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 7
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqu;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ldqu;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, "trace":Lhzv;
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 78
    :try_start_0
    const-string/jumbo v1, "[SYNC] CommonStripeModel"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 79
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v1, "[SYNC] models empty"

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_1
    invoke-static {}, Leal;->a()Leal;

    move-result-object v4

    .line 1336
    invoke-static {}, Leal;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1340
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 2030
    :cond_2
    :goto_1
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1344
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Leal;->c()V

    .line 1345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqu;

    .line 1346
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->fromIdlModel(Ldqu;)Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    move-result-object v5

    .line 1347
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "PushTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onTaskListArrived, list:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1350
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "2"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const-string/jumbo v1, "title"

    iget-object v2, v5, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->title:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v1, v5, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    invoke-static {v1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1353
    iget-object v1, v5, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    const-wide/16 v2, -0x1

    .line 1354
    :goto_2
    const-string/jumbo v1, "groupId"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "PushTaskManager"

    const-string/jumbo v3, "guide_TaskCenter_received"

    invoke-interface {v1, v2, v3, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1358
    invoke-virtual {v4, v5}, Leal;->a(Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 86
    throw v1

    .line 1353
    :cond_5
    :try_start_3
    iget-object v1, v5, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->groupId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
