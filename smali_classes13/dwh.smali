.class public final Ldwh;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "TaskDispatchSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Ldqt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Ldwh;


# instance fields
.field private b:Lcom/alibaba/wukong/sync/SyncEventListener;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x2ee0

    const-class v2, Ldqt;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 43
    iget-object v0, p0, Ldwh;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ldwh$1;

    invoke-direct {v0, p0}, Ldwh$1;-><init>(Ldwh;)V

    iput-object v0, p0, Ldwh;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    .line 73
    const-class v0, Lcom/alibaba/wukong/sync/SyncService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    iget-object v2, p0, Ldwh;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 33
    const-class v1, Ldwh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldwh;->a:Ldwh;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ldwh;

    invoke-direct {v0}, Ldwh;-><init>()V

    sput-object v0, Ldwh;->a:Ldwh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit v1

    return-void

    .line 33
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
            "Ldqt;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ldqt;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "trace":Lhzv;
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 82
    :try_start_0
    const-string/jumbo v1, "[SYNC] CommonStripeModel"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 83
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    const-string/jumbo v1, "[SYNC] models empty"

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_1
    invoke-static {}, Leal;->a()Leal;

    move-result-object v2

    .line 1147
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "PushTaskManager"

    const-string/jumbo v4, "guide_TaskCenter_received"

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1149
    invoke-static {}, Leal;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1153
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

    .line 1156
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Leal;->d()V

    .line 1157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqt;

    .line 1158
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->fromIdlModel(Ldqt;)Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    move-result-object v1

    .line 1159
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "PushTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onTaskDispatchArrived, list:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v2, v1}, Leal;->a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 90
    throw v1
.end method
