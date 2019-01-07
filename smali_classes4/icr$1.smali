.class final Licr$1;
.super Liae;
.source "ReconnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Licr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
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
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

.field final synthetic c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

.field final synthetic d:Licr;


# direct methods
.method constructor <init>(Licr;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;)V
    .locals 2
    .param p1, "this$0"    # Licr;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 62
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p1, p0, Licr$1;->d:Licr;

    iput-object p5, p0, Licr$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    iput-object p6, p0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Licr$1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>.b;"
    const/4 v5, 0x0

    .line 226
    .local v5, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v6, "[TAG] Reconnect"

    .line 1014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v5

    .line 227
    iget-boolean v6, p1, Liae$b;->a:Z

    if-eqz v6, :cond_2

    iget-object v6, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 228
    const-string/jumbo v6, "[Push] Rpc get conv suc"

    invoke-virtual {v5, v6}, Lhzv;->a(Ljava/lang/String;)V

    .line 229
    iget-object v6, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 230
    .local v1, "co":Lcom/alibaba/wukong/im/Conversation;
    iget-object v6, p0, Licr$1;->a:Ljava/util/Map;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 231
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 232
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 233
    .local v4, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    move-object v0, v1

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-object v6, v0

    invoke-static {v4, v6}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 241
    .end local v1    # "co":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v4    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catchall_0
    move-exception v6

    .line 2030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 241
    throw v6

    .line 235
    .restart local v1    # "co":Lcom/alibaba/wukong/im/Conversation;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    sget-object v6, Lcom/alibaba/wukong/im/MessageListener$DataType;->RECONNECT:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-static {v3, v6}, Libv;->a(Ljava/util/ArrayList;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1030
    .end local v1    # "co":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v3    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    :cond_2
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 243
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 16

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    .line 2068
    const/4 v3, 0x0

    .line 2070
    :try_start_0
    const-string/jumbo v2, "[TAG] Reconnect"

    .line 3014
    const-string/jumbo v4, "im"

    invoke-static {v2, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 2071
    :try_start_1
    const-string/jumbo v3, "[Push] Recv reconn"

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-interface {v2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->b()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v3, v2}, Lhzv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->messageList:Ljava/util/List;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->messageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2076
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2078
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2079
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2081
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Push] Recv msgs sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v3, v3, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->messageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->messageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    .line 2083
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[Push] reconn msg "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v10, v10, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lhzv;->a(Ljava/lang/String;)V

    .line 2084
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v10, v3, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    .line 2085
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {v3, v10}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 2088
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v12

    .line 2087
    invoke-static {v2, v12, v13, v3}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v11

    .line 2089
    if-eqz v11, :cond_0

    .line 2090
    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2091
    move-object/from16 v0, p0

    iget-object v3, v0, Licr$1;->a:Ljava/util/Map;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2092
    if-nez v3, :cond_1

    .line 2093
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2094
    move-object/from16 v0, p0

    iget-object v12, v0, Licr$1;->a:Ljava/util/Map;

    invoke-interface {v12, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    :cond_1
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    :cond_2
    :goto_2
    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .line 2115
    if-eqz v2, :cond_0

    .line 2117
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2218
    :catchall_0
    move-exception v2

    move-object v3, v4

    .line 7030
    :goto_3
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 2218
    throw v2

    .line 2071
    :cond_3
    :try_start_2
    const-string/jumbo v2, ""

    goto/16 :goto_0

    .line 2098
    :cond_4
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2099
    if-nez v3, :cond_5

    .line 2100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    invoke-interface {v6, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    :cond_5
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2104
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2105
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {v11}, Libs;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[Push] reconn msg not show last msg id "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lhzv;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2109
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v14

    cmp-long v3, v12, v14

    if-lez v3, :cond_2

    .line 2110
    :cond_7
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2123
    :cond_8
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2124
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2125
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2126
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-nez v9, :cond_9

    if-eqz v2, :cond_9

    .line 2131
    :try_start_3
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v9

    .line 3319
    const/4 v10, 0x0

    invoke-virtual {v9, v3, v2, v10}, Libs;->a(Ljava/lang/String;Ljava/util/Collection;Z)Ljava/util/ArrayList;
    :try_end_3
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 2137
    if-eqz v9, :cond_c

    :try_start_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 2138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[Push] Save msgs succ cid="

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, " sz="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 2139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v10, Lcom/alibaba/wukong/im/MessageListener$DataType;->RECONNECT:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-static {v2, v10}, Libv;->a(Ljava/util/ArrayList;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 2141
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2142
    invoke-static {v2}, Libt;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2143
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2144
    if-nez v2, :cond_b

    .line 2145
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2133
    :catch_0
    move-exception v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Push] bulk save msg err cid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sz="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lhzv;->b(Ljava/lang/String;)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bulk save msg fail, cid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 2219
    :goto_6
    return-void

    .line 2147
    :cond_b
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2152
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[Push] Save msgs err or exist cid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " sz="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lhzv;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2156
    :cond_d
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, v7}, Liar;->a(Ljava/util/Map;)V

    .line 2158
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Liar;->a(Ljava/util/Map;Ljava/util/Map;)Z

    .line 2161
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lidr;->a(Ljava/util/Collection;)V

    .line 2165
    :cond_e
    const/4 v2, 0x0

    .line 2166
    move-object/from16 v0, p0

    iget-object v3, v0, Licr$1;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Push] Conv not exist, sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Licr$1;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lhzv;->b(Ljava/lang/String;)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2169
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2171
    :try_start_6
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Licr$1;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v2, v3, v8, v9}, Libs;->a(Ljava/lang/String;Ljava/util/Collection;ZI)Ljava/util/ArrayList;
    :try_end_6
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 2173
    :catch_1
    move-exception v3

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Push] bulk save msg err, absent cid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lhzv;->b(Ljava/lang/String;)V

    .line 2174
    move-object/from16 v0, p0

    iget-object v3, v0, Licr$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bulk save msg fail, absent cid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_6

    :cond_f
    move-object v2, v5

    .line 2180
    :cond_10
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Licr$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .line 6014
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 2181
    if-eqz v2, :cond_11

    .line 2182
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Liaw;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 2186
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->readList:Ljava/util/List;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->readList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->readList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;

    .line 2188
    const/4 v5, 0x0

    invoke-static {v5, v2}, Licq;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;)V

    goto :goto_8

    .line 2192
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->conversationList:Ljava/util/List;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->conversationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2193
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->conversationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;

    .line 2194
    const/4 v5, 0x0

    invoke-static {v5, v2}, Lice;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;)V

    goto :goto_9

    .line 2198
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->messageTagList:Ljava/util/List;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->messageTagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2199
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->messageTagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;

    .line 2200
    const/4 v5, 0x0

    invoke-static {v5, v2}, Licm;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;)V

    goto :goto_a

    .line 2204
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->conversationPrivateList:Ljava/util/List;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->conversationPrivateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->conversationPrivateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;

    .line 2206
    const/4 v5, 0x0

    invoke-static {v5, v2}, Licg;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;)V

    goto :goto_b

    .line 2211
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->msgNoticeList:Ljava/util/List;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->msgNoticeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2212
    move-object/from16 v0, p0

    iget-object v2, v0, Licr$1;->c:Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;->msgNoticeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/MessageNoticeModel;

    .line 2213
    const/4 v5, 0x0

    invoke-static {v5, v2}, Lick;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/MessageNoticeModel;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_c

    .line 6030
    :cond_16
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_6

    .line 2218
    :catchall_1
    move-exception v2

    goto/16 :goto_3
.end method
