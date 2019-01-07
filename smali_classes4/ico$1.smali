.class final Lico$1;
.super Liaa;
.source "MessageReceiverStatusUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lico;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liaa",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Ljava/util/List;ZLcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 2
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/alibaba/wukong/WKExecutor;
    .param p4, "x3"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 42
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p5, p0, Lico$1;->b:Ljava/util/List;

    iput-boolean p6, p0, Lico$1;->c:Z

    iput-object p7, p0, Lico$1;->d:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p3, p4}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lico$1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liaa$b;)Liaa$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liaa",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;)",
            "Liaa",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    .local p1, "rpcResult":Liaa$b;, "Liaa<Ljava/lang/Void;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>.b;"
    iget-boolean v4, p1, Liaa$b;->a:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Liaa$b;->d:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 102
    iget-object v4, p1, Liaa$b;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 103
    .local v1, "co":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "cid":Ljava/lang/String;
    iget-boolean v5, p0, Lico$1;->c:Z

    if-eqz v5, :cond_0

    .line 105
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v5

    invoke-virtual {v5, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 106
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 109
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    iget-object v5, p0, Lico$1;->a:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 110
    .local v3, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Libs;->b(Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0

    .line 113
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/Conversation;
    .end local v3    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    .line 1048
    const/4 v1, 0x0

    .line 1050
    :try_start_0
    const-string/jumbo v0, "[TAG] MsgRecverStatus"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 1051
    :try_start_1
    iget-object v0, p0, Lico$1;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lico$1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1052
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1053
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1054
    iget-object v0, p0, Lico$1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageReadStatusModel;

    .line 1055
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageReadStatusModel;->conversationId:Ljava/lang/String;

    .line 1056
    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageReadStatusModel;->messageId:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    .line 1057
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {v0, v5}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1058
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lico$1;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1060
    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    iget-object v8, p0, Lico$1;->a:Ljava/util/Map;

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1094
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 3030
    :goto_1
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1094
    throw v0

    .line 1066
    :cond_1
    :try_start_2
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1067
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1068
    if-nez v0, :cond_2

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1077
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1078
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1079
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1080
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1081
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Libs;->b(Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_2

    .line 1083
    :cond_4
    iget-boolean v0, p0, Lico$1;->c:Z

    if-eqz v0, :cond_5

    .line 1085
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Liar;->c([Ljava/lang/String;)Z

    .line 1090
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lico$1;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1091
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Liaw;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    :cond_6
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 1096
    iget-object v0, p0, Lico$1;->d:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .line 4014
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 42
    return-void

    .line 1094
    :catchall_1
    move-exception v0

    goto/16 :goto_1
.end method
