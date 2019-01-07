.class final Lcom/alibaba/wukong/im/message/MessageImpl$12;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->sendMsg(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/wukong/im/SendNameAppender;

.field final synthetic e:Lcom/alibaba/wukong/im/VideoCompress;

.field final synthetic f:Lcom/alibaba/wukong/im/Uploader;

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:Lhzs$a;

.field final synthetic j:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;JJLhzs$a;)V
    .locals 5
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 384
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-boolean p7, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->c:Z

    iput-object p8, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->d:Lcom/alibaba/wukong/im/SendNameAppender;

    iput-object p9, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->e:Lcom/alibaba/wukong/im/VideoCompress;

    iput-object p10, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->f:Lcom/alibaba/wukong/im/Uploader;

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->g:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->h:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->i:Lhzs$a;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 439
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/message/MessageImpl;>.b;"
    const/4 v9, 0x0

    .line 441
    .local v9, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] Msg"

    .line 1014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 443
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->senderName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_2

    const/4 v8, 0x0

    .line 445
    .local v8, "cid":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8, v1, v3}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;)Z

    .line 447
    .end local v8    # "cid":Ljava/lang/String;
    :cond_0
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_4

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[API] Rpc send msg "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " suc, t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 450
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {v9, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 453
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v0, v1, :cond_1

    .line 455
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->g:J

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1, v3, v4, v5, v0}, Libs;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->h:J

    invoke-static {v0, v1, v4, v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$100(Lcom/alibaba/wukong/im/message/MessageImpl;IJ)V

    .line 459
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1, v3, v0}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    .line 461
    invoke-static {}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->getInstance()Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->receiver(Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :cond_1
    :goto_1
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->i:Lhzs$a;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$300(Lcom/alibaba/wukong/im/message/MessageImpl;Lhzs$a;I)V

    .line 486
    return-object p1

    .line 444
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const-string/jumbo v2, "101007"

    const-string/jumbo v3, "DATABASE_ERR"

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v4, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iget-wide v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->h:J

    invoke-static/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$200(Lcom/alibaba/wukong/im/message/MessageImpl;ILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 483
    :catchall_0
    move-exception v0

    .line 2030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 483
    throw v0

    .line 468
    :cond_4
    :try_start_2
    iget-object v2, p1, Liae$b;->b:Ljava/lang/String;

    .line 469
    .local v2, "errCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    iget-object v3, p1, Liae$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v4, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iget-wide v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->h:J

    invoke-static/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$200(Lcom/alibaba/wukong/im/message/MessageImpl;ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 471
    const/16 v0, 0x5e25

    invoke-static {v0}, Lhzs;->a(I)V

    .line 476
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 477
    const-string/jumbo v0, "101010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v0}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 479
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v0}, Liau;->f(Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_1

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 473
    const/16 v0, 0x5e26

    invoke-static {v0}, Lhzs;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 384
    .line 2387
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2388
    if-nez v0, :cond_1

    .line 2389
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->b:Lcom/alibaba/wukong/im/Conversation;

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2392
    :goto_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 2393
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 2394
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 2395
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 2396
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-boolean v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->c:Z

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPassMode:Z

    .line 2398
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2399
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x4b2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2400
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x4b4

    if-eq v0, v1, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mController:Libq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mController:Libq;

    .line 3100
    iget v0, v0, Libq;->b:I

    .line 2404
    if-eq v0, v4, :cond_2

    .line 2405
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->d:Lcom/alibaba/wukong/im/SendNameAppender;

    invoke-static {v0, v1, p2}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 2409
    :goto_1
    return-void

    .line 2391
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    goto :goto_0

    .line 2407
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->checkAndSave(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;)V

    .line 2408
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->d:Lcom/alibaba/wukong/im/SendNameAppender;

    if-nez v0, :cond_3

    .line 2409
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->e:Lcom/alibaba/wukong/im/VideoCompress;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->f:Lcom/alibaba/wukong/im/Uploader;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$000(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    goto :goto_1

    .line 2411
    :cond_3
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->d:Lcom/alibaba/wukong/im/SendNameAppender;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->b:Lcom/alibaba/wukong/im/Conversation;

    new-instance v2, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl$12;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/SendNameAppender;->getSendName(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method
