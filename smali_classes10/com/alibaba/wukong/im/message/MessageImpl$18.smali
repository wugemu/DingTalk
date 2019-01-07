.class final Lcom/alibaba/wukong/im/message/MessageImpl$18;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->resetEncryptStatusAndContent(Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1666
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/message/MessageImpl;>.b;"
    const/4 v4, 0x0

    .line 1675
    const-string/jumbo v5, "[TAG] Msg "

    .line 2014
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 1676
    .local v3, "trace":Lhzv;
    if-nez p1, :cond_0

    .line 1677
    const-string/jumbo v5, "resetEncryptStatusAndContent onAfterRpc result null"

    invoke-virtual {v3, v5}, Lhzv;->a(Ljava/lang/String;)V

    move-object p1, v4

    .line 1726
    .end local p1    # "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/message/MessageImpl;>.b;"
    :goto_0
    return-object p1

    .line 1681
    .restart local p1    # "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/message/MessageImpl;>.b;"
    :cond_0
    :try_start_0
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1682
    .local v2, "revMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v2, :cond_4

    .line 1683
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v4, v5, :cond_4

    iget-object v4, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-eqz v4, :cond_4

    .line 1684
    iget v4, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v5, v5, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v5, v5, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1685
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object v4, p1, Liae$b;->d:Ljava/lang/Object;

    .line 1686
    const-string/jumbo v4, "resetEncryptStatusAndContent revMsg encrypt status and content equals message"

    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    invoke-virtual {v3}, Lhzv;->a()V

    goto :goto_0

    .line 1689
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1690
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->decrypt()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1691
    const-string/jumbo v4, "resetEncryptStatusAndContent revMsg decrypt false"

    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 1692
    const/4 v4, 0x0

    iput-object v4, p1, Liae$b;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    invoke-virtual {v3}, Lhzv;->a()V

    goto :goto_0

    .line 1696
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v5, v5, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 1697
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    .line 1696
    invoke-virtual {v4, v5, v2, v6}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;)Z

    move-result v1

    .line 1698
    .local v1, "ret":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resetEncryptStatusAndContent update Encrypt Message Content And Extension ret = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 1699
    if-eqz v1, :cond_4

    .line 1700
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v5, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    iput v5, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1701
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 1702
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 1704
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1705
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1706
    invoke-virtual {v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1705
    invoke-virtual {v4, v5, v6}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1707
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v5, v5, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    iput v5, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1708
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 1709
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 1713
    :cond_3
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object v4, p1, Liae$b;->d:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1724
    invoke-virtual {v3}, Lhzv;->a()V

    goto/16 :goto_0

    .line 1719
    .end local v1    # "ret":Z
    :cond_4
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p1, Liae$b;->d:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1724
    invoke-virtual {v3}, Lhzv;->a()V

    goto/16 :goto_0

    .line 1720
    .end local v2    # "revMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resetEncryptStatusAndContent update Encrypt Message Content And Extension exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 1722
    const/4 v4, 0x0

    iput-object v4, p1, Liae$b;->d:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1724
    invoke-virtual {v3}, Lhzv;->a()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lhzv;->a()V

    throw v4
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1666
    .line 2669
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2670
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v1, v2, v3, v0, p2}, Libz;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 1666
    return-void

    .line 2669
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$18;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
