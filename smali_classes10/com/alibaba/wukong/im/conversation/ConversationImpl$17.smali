.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fetchMessages(Lcom/alibaba/wukong/im/Message;ZZZILcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Z

.field final synthetic i:Lhzs$a;

.field final synthetic j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

.field private k:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;IZZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ZLhzs$a;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1152
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    iput p7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    iput-boolean p8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    iput-boolean p9, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->e:Z

    iput-object p10, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p11, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    iput-boolean p12, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->h:Z

    iput-object p13, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->i:Lhzs$a;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1153
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1242
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>.b;"
    const/4 v14, 0x0

    .line 1244
    .local v14, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Conv"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v14

    .line 1245
    move-object/from16 v0, p1

    iget-boolean v1, v0, Liae$b;->a:Z

    if-eqz v1, :cond_7

    .line 1246
    move-object/from16 v0, p1

    iget-boolean v1, v0, Liae$b;->e:Z

    if-eqz v1, :cond_1

    .line 1247
    const-string/jumbo v1, "rpc getMsgs timeout"

    invoke-virtual {v14, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    move-object/from16 v0, p1

    iget-object v4, v0, Liae$b;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-boolean v5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->h:Z

    invoke-virtual/range {v1 .. v6}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/List;ZZ)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3030
    :cond_0
    :goto_0
    invoke-static {v14}, Lhzt;->a(Lhzv;)V

    .line 1315
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1316
    .local v9, "dim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "dataSource"

    const-string/jumbo v2, "rpc"

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->i:Lhzs$a;

    invoke-virtual {v1, v9}, Lhzs$a;->a(Ljava/util/Map;)V

    .line 1318
    :goto_1
    return-object p1

    .line 1251
    .end local v9    # "dim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p1

    iget-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1252
    :cond_2
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iput-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    .line 1253
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v12, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1254
    .local v12, "oldestMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v12, v3}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;I)Z

    .line 1255
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .restart local v9    # "dim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "dataSource"

    const-string/jumbo v2, "rpc"

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->i:Lhzs$a;

    invoke-virtual {v1, v9}, Lhzs$a;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    invoke-static {v14}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 1253
    .end local v9    # "dim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "oldestMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    move-object v12, v1

    goto :goto_2

    .line 1260
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 1262
    .local v13, "retSize":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Rpc sz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    move-object/from16 v0, p1

    iget-object v4, v0, Liae$b;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-boolean v5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->h:Z

    invoke-virtual/range {v1 .. v6}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 1265
    .local v7, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    if-nez v1, :cond_5

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1266
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1267
    .local v11, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1268
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1269
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v2, :cond_5

    .line 1270
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1271
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1272
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z

    .line 1275
    .end local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_5
    if-eqz v7, :cond_6

    .line 1277
    move-object/from16 v0, p1

    iput-object v7, v0, Liae$b;->d:Ljava/lang/Object;

    .line 1278
    move-object/from16 v0, p1

    iget-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1283
    :goto_3
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v13, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1284
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1313
    .end local v7    # "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v13    # "retSize":I
    :catchall_0
    move-exception v1

    .line 4030
    invoke-static {v14}, Lhzt;->a(Lhzv;)V

    .line 1313
    throw v1

    .line 1280
    .restart local v7    # "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v13    # "retSize":I
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iput-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    goto :goto_3

    .line 1289
    .end local v7    # "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v13    # "retSize":I
    :cond_7
    move-object/from16 v0, p1

    iget-boolean v1, v0, Liae$b;->e:Z

    if-nez v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1291
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Liae$b;->a:Z

    .line 1292
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iput-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1293
    :cond_8
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    if-nez v1, :cond_0

    .line 1294
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v8

    .line 1295
    .local v8, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v8, :cond_a

    const/4 v10, 0x0

    .line 1296
    .local v10, "lastmsg":Lcom/alibaba/wukong/im/Message;
    :goto_4
    if-eqz v10, :cond_0

    .line 1297
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Liae$b;->a:Z

    .line 1298
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1299
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync()Z

    .line 1301
    :cond_9
    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    move-object v0, v10

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iput-object v1, v0, Liae$b;->d:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1304
    :try_start_4
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    check-cast v10, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v10    # "lastmsg":Lcom/alibaba/wukong/im/Message;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v10, v3}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z
    :try_end_4
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1306
    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v1, "[API] fill msg err"

    invoke-virtual {v14, v1}, Lhzv;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1295
    :cond_a
    iget-object v10, v8, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1152
    .line 4157
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->isEarliest(Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4158
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 4216
    :cond_0
    :goto_0
    return-void

    .line 4162
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    iget-boolean v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    invoke-virtual {v1, v2, v0, v3, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;IZ)Ljava/util/List;

    move-result-object v6

    .line 4164
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->e:Z

    if-nez v0, :cond_8

    .line 4165
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->a:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4166
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 4167
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 4168
    :goto_1
    if-eqz v0, :cond_5

    .line 4169
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4170
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync()Z

    .line 4172
    :cond_3
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/wukong/im/Message;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 4174
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4176
    :catch_0
    move-exception v0

    const-string/jumbo v0, "[TAG] Conv"

    const-string/jumbo v1, "[API] fill msg err"

    .line 5022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4167
    :cond_4
    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    goto :goto_1

    .line 4179
    :cond_5
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4183
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4184
    if-eqz v6, :cond_7

    .line 4185
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4187
    :cond_7
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4192
    :cond_8
    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4193
    :cond_9
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-boolean v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    iget v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Libz;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ZILcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 4195
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 4197
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 4198
    if-nez v0, :cond_b

    const-wide/16 v2, 0x0

    .line 4199
    :goto_2
    add-int/lit8 v1, v7, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 4200
    if-nez v1, :cond_c

    const-wide/16 v4, 0x0

    .line 4201
    :goto_3
    const-string/jumbo v8, "[TAG] Conv"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[API] Get msgs from local, sz="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " 1st="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6018
    const-string/jumbo v3, "im"

    invoke-static {v8, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    iget-boolean v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    if-ge v7, v2, :cond_e

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4203
    invoke-static {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->isEarliest(Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4204
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4198
    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v2

    goto :goto_2

    .line 4200
    :cond_c
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    goto :goto_3

    .line 4207
    :cond_d
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v7

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 4208
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4209
    iput-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 4210
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    sub-int/2addr v4, v7

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Libz;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ZILcom/alibaba/wukong/Callback;)V

    .line 4227
    :goto_4
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->a:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    if-ne v7, v0, :cond_0

    .line 4228
    invoke-static {}, Lido;->a()Lido;

    .line 6209
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v0

    const-string/jumbo v1, "SYNC_LOG_NUM"

    .line 7052
    invoke-virtual {v0}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7053
    if-nez v0, :cond_11

    .line 7054
    const/4 v0, 0x0

    .line 6210
    :goto_5
    const/16 v1, 0x32

    if-ge v0, v1, :cond_12

    .line 6211
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v1

    const-string/jumbo v2, "SYNC_TOOLONG2_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Liga;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6212
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 6213
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_12

    const-wide/32 v4, 0xf731400

    cmp-long v1, v2, v4

    if-gez v1, :cond_12

    .line 6214
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v1

    const-string/jumbo v2, "SYNC_LOG_NUM"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Liga;->a(Ljava/lang/String;I)V

    .line 6215
    const/4 v0, 0x1

    .line 4228
    :goto_6
    if-eqz v0, :cond_0

    .line 4229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 4231
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4211
    :cond_e
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->d:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    if-ge v7, v0, :cond_10

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4212
    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4214
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4215
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4218
    :cond_f
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4219
    iput-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 4220
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->j:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->k:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->c:I

    sub-int/2addr v4, v7

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Libz;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ZILcom/alibaba/wukong/Callback;)V

    goto/16 :goto_4

    .line 4222
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4223
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4224
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$17;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 7056
    :cond_11
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_5

    .line 6218
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 4234
    :cond_13
    invoke-static {}, Lido;->a()Lido;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lido;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
