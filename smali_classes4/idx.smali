.class public final Lidx;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "UserTagReceiverHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/UserTagListModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x3fd

    const-class v1, Lcom/alibaba/wukong/idl/im/models/UserTagListModel;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 4
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/UserTagListModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/UserTagListModel;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v2, "[SYNC] UserTag"

    .line 1014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 31
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    const-string/jumbo v2, "[PUSH] models empty"

    invoke-virtual {v0, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/wukong/im/UserTagListObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 37
    .local v1, "userTagListObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/UserTagListObject;>;"
    invoke-static {v1}, Lidw;->a(Ljava/util/List;)V

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[SYNC] update size="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " models size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 38
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_1

    .line 40
    .end local v1    # "userTagListObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/UserTagListObject;>;"
    :catchall_0
    move-exception v2

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 40
    throw v2
.end method
