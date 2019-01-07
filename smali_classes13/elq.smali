.class public final Lelq;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "OAUndoSyncaHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Leka;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lelq;


# instance fields
.field private b:Lcom/alibaba/wukong/sync/SyncEventListener;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x32c8

    const-class v2, Leka;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 36
    iget-object v0, p0, Lelq;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lelq$1;

    invoke-direct {v0, p0}, Lelq$1;-><init>(Lelq;)V

    iput-object v0, p0, Lelq;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    .line 48
    const-class v0, Lcom/alibaba/wukong/sync/SyncService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    iget-object v2, p0, Lelq;->b:Lcom/alibaba/wukong/sync/SyncEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 26
    const-class v1, Lelq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lelq;->a:Lelq;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lelq;

    invoke-direct {v0}, Lelq;-><init>()V

    sput-object v0, Lelq;->a:Lelq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit v1

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 5
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leka;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Leka;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "trace":Lhzv;
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 61
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[SYNC] UndoModel"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 62
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    :cond_1
    const-string/jumbo v1, "[SYNC] models empty"

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_2
    :try_start_1
    const-string/jumbo v1, "oa"

    const-string/jumbo v2, "onReceived"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UndoModel list, size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v2

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leka;

    invoke-static {v1}, Lejy;->a(Leka;)Lejy;

    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Lelp;->b(Lejy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 70
    throw v1
.end method
