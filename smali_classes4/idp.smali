.class public final Lidp;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "AliasReceiveHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x9c5

    const-class v1, Lcom/alibaba/wukong/idl/user/models/AliasModel;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 7
    .param p2, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/user/models/AliasModel;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 43
    const/4 v2, 0x0

    .line 45
    .local v2, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "[SYNC] Alias"

    .line 1014
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 46
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    :cond_0
    const-string/jumbo v5, "[PUSH] models empty"

    invoke-virtual {v2, v5}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 63
    :goto_0
    return-void

    .line 51
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/user/models/AliasModel;

    .line 53
    .local v0, "model":Lcom/alibaba/wukong/idl/user/models/AliasModel;
    invoke-static {v0}, Lcom/alibaba/wukong/im/user/UserImpl;->fromAliasModel(Lcom/alibaba/wukong/idl/user/models/AliasModel;)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v3

    .line 54
    .local v3, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 62
    .end local v0    # "model":Lcom/alibaba/wukong/idl/user/models/AliasModel;
    .end local v3    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    :catchall_0
    move-exception v5

    .line 3030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 62
    throw v5

    .line 59
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v5

    invoke-virtual {v5, v4}, Lidq;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 60
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] update size="

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " models size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 60
    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    goto :goto_2
.end method
