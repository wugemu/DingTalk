.class public final Licx;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "BlacklistReceiveHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x9c8

    const-class v1, Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 23
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
            "Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 28
    const/4 v4, 0x0

    .line 30
    .local v4, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "[SYNC] blacklist"

    .line 1014
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 31
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    :cond_0
    const-string/jumbo v5, "[SYNC] models empty"

    invoke-virtual {v4, v5}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 48
    :goto_0
    return-void

    .line 35
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .local v3, "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;

    .line 37
    .local v2, "blacklistModel":Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;
    invoke-static {v2}, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->fromModel(Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;)Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    move-result-object v0

    .line 38
    .local v0, "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    if-eqz v0, :cond_2

    .line 40
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 47
    .end local v0    # "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    .end local v2    # "blacklistModel":Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;
    .end local v3    # "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    :catchall_0
    move-exception v5

    .line 3030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 47
    throw v5

    .line 42
    .restart local v3    # "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getBlacklistCache()Licu;

    move-result-object v5

    invoke-virtual {v5, v3}, Licu;->a(Ljava/util/List;)Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .local v1, "blacklist2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Blacklist;>;"
    invoke-static {v1}, Licw;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method
