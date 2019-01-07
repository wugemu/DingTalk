.class public final Libk;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "GroupNickSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    const/16 v0, 0x3f9

    const-class v1, Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 37
    return-void
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
            "Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;>;"
    const/4 v3, 0x0

    .line 42
    .local v3, "trace":Lhzv;
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 44
    :try_start_0
    const-string/jumbo v4, "[SYNC] groupNick"

    .line 1014
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 45
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    :cond_0
    const-string/jumbo v4, "[SYNC] models empty"

    invoke-virtual {v3, v4}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 66
    :goto_0
    return-void

    .line 49
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v2, "groupNickObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;

    .line 51
    .local v0, "groupNickChangeModel":Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;
    if-eqz v0, :cond_2

    .line 54
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    if-eqz v5, :cond_2

    .line 55
    new-instance v1, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 56
    .local v1, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 57
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;->openId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 58
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->groupNick:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNick(Ljava/lang/String;)V

    .line 59
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->tag:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/GroupNickObject;->setTag(I)V

    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 65
    .end local v0    # "groupNickChangeModel":Lcom/alibaba/wukong/idl/im/models/GroupNickChangeModel;
    .end local v1    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    .end local v2    # "groupNickObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    :catchall_0
    move-exception v4

    .line 3030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 65
    throw v4

    .line 63
    .restart local v2    # "groupNickObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Libj;->a()Lcom/alibaba/wukong/im/GroupNickService;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v4, v2, v5, v6}, Lcom/alibaba/wukong/im/GroupNickService;->updateLocalGroupNicks(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method
