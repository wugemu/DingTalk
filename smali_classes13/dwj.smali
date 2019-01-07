.class public final Ldwj;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "TaskRemindSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Ldqs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Ldwj;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0x2ee1

    const-class v1, Ldqs;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 33
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 23
    const-class v1, Ldwj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldwj;->a:Ldwj;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ldwj;

    invoke-direct {v0}, Ldwj;-><init>()V

    sput-object v0, Ldwj;->a:Ldwj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit v1

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 8
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqs;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ldqs;>;"
    const/4 v0, 0x0

    .line 38
    .local v0, "trace":Lhzv;
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 40
    :try_start_0
    const-string/jumbo v1, "[SYNC] CommonRemindModel"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 41
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    const-string/jumbo v1, "[SYNC] models empty"

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_1
    invoke-static {}, Leal;->a()Leal;

    move-result-object v2

    .line 1249
    invoke-static {}, Leal;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1253
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1254
    :cond_2
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "PushTaskManager"

    const-string/jumbo v3, "onTaskRemindArrived,list is empty:"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    :cond_3
    :goto_1
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1259
    :cond_4
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqs;

    .line 1260
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "PushTaskManager"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "onTaskRemindArrived,list:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1260
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    if-eqz v1, :cond_3

    .line 1270
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Leal$1;

    invoke-direct {v4, v2, v1}, Leal$1;-><init>(Leal;Ldqs;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 47
    throw v1
.end method
