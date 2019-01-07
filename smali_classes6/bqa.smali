.class public final Lbqa;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "ClearReceiveHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lbpj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v2, 0x2af9

    const-class v3, Lbpj;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/reflect/Type;)V

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 28
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
            "Lbpj;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbpj;>;"
    const/4 v5, 0x0

    .line 34
    .local v5, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v6, "[SYNC] follow"

    .line 1014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v5

    .line 35
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    :cond_0
    const-string/jumbo v6, "[SYNC] models empty"

    invoke-virtual {v5, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 1030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 63
    :goto_0
    return-void

    .line 40
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v3, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpj;

    .line 42
    .local v1, "model":Lbpj;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;->fromIdl(Lbpj;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;

    move-result-object v4

    .line 43
    .local v4, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;
    if-eqz v4, :cond_2

    .line 46
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 61
    .end local v1    # "model":Lbpj;
    .end local v3    # "notices":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;>;"
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 4030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 62
    throw v6

    .line 49
    .restart local v3    # "notices":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;>;"
    :cond_3
    :try_start_2
    invoke-static {v3}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 50
    const-string/jumbo v6, "notice empty"

    .line 1076
    const/4 v7, 0x0

    invoke-static {v7, v6}, Lbqh;->a(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 2030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 54
    :cond_4
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .local v2, "noticObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "circle_on_receive_clear_notice"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "circle_on_receive_clear_notice"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v0}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 3030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method
