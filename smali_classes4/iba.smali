.class public final Liba;
.super Ljava/lang/Object;
.source "EntranceConversationOperator.java"

# interfaces
.implements Liaz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 20
    .local p1, "absentEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .local v1, "entranceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 24
    invoke-static {v0}, Libb;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 25
    .local v2, "entranceId":J
    invoke-static {v2, v3}, Libb;->a(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "entranceId":J
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 31
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v4

    new-instance v5, Liay;

    invoke-direct {v5}, Liay;-><init>()V

    .line 2630
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2632
    const-string/jumbo v4, "101002"

    const-string/jumbo v6, "101002 conversationIds is empty"

    invoke-interface {v5, v4, v6}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    .end local v1    # "entranceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    return-void

    .line 2636
    .restart local v1    # "entranceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    new-instance v6, Liav$51;

    invoke-direct {v6, v4, v5}, Liav$51;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 2658
    const/4 v4, 0x0

    .line 2660
    :try_start_0
    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2664
    :goto_2
    const-string/jumbo v5, "[TAG] ConvRpc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[RPC] getEntranceConversations,entranceIds:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3018
    const-string/jumbo v7, "im"

    invoke-static {v5, v4, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    const-class v4, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v4, v1, v6}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->getEntranceConversations(Ljava/util/List;Liyv;)V

    goto :goto_1

    .line 2661
    :catch_0
    move-exception v5

    .line 2662
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
