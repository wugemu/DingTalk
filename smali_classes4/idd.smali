.class public final Lidd;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "FollowReceiveHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/idl/relation/models/FollowModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0x9c7

    const-class v1, Lcom/alibaba/wukong/idl/relation/models/FollowModel;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 8
    .param p2, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/relation/models/FollowModel;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 30
    const/4 v4, 0x0

    .line 32
    .local v4, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v6, "[SYNC] follow"

    .line 1014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 33
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 34
    :cond_0
    const-string/jumbo v6, "[SYNC] models empty"

    invoke-virtual {v4, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 54
    :goto_0
    return-void

    .line 38
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v2, "follows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/idl/relation/models/FollowModel;

    .line 40
    .local v3, "model":Lcom/alibaba/wukong/idl/relation/models/FollowModel;
    invoke-static {v3}, Lcom/alibaba/wukong/im/relation/FollowImpl;->fromModel(Lcom/alibaba/wukong/idl/relation/models/FollowModel;)Lcom/alibaba/wukong/im/relation/FollowImpl;

    move-result-object v0

    .line 41
    .local v0, "follow":Lcom/alibaba/wukong/im/relation/FollowImpl;
    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 53
    .end local v0    # "follow":Lcom/alibaba/wukong/im/relation/FollowImpl;
    .end local v2    # "follows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    .end local v3    # "model":Lcom/alibaba/wukong/idl/relation/models/FollowModel;
    :catchall_0
    move-exception v6

    .line 3030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 53
    throw v6

    .line 47
    .restart local v2    # "follows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getFollowCache()Lida;

    move-result-object v6

    invoke-virtual {v6, v2}, Lida;->a(Ljava/util/List;)I

    move-result v5

    .line 48
    .local v5, "updateSize":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[SYNC] follows update size="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " models size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lhzv;->a(Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .local v1, "followList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Follow;>;"
    invoke-static {v1}, Lidc;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method
