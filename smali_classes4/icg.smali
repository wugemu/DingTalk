.class public final Licg;
.super Ljava/lang/Object;
.source "ConversationPrivateUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;)V
    .locals 9
    .param p0, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    .param p1, "t"    # Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 25
    .local v3, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v7, "[TAG] ConvPri"

    .line 1014
    const-string/jumbo v8, "im"

    invoke-static {v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[Push] Recv conv pri cid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lhzv;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;->conversationId:Ljava/lang/String;

    .line 29
    .local v0, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v7

    invoke-virtual {v7, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 30
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 32
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Liaw;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 2014
    :cond_1
    :goto_1
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 34
    :cond_2
    :try_start_1
    iget-object v7, p1, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;->sort:Ljava/lang/Long;

    invoke-static {v7}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 35
    .local v4, "sort":J
    iget-object v7, p1, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;->notificationOff:Ljava/lang/Integer;

    invoke-static {v7}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v7

    if-eq v7, v2, :cond_5

    .line 36
    .local v2, "notificationEnable":Z
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getTop()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 37
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v6

    invoke-virtual {v6, v0, v4, v5}, Liar;->c(Ljava/lang/String;J)Z

    .line 39
    :cond_3
    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;->hide:Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;->hide:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v6, v7, :cond_4

    .line 40
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Liar;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 41
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v6

    invoke-virtual {v6, v0}, Libs;->a(Ljava/lang/String;)V

    .line 44
    :cond_4
    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/ConversationPrivateModel;->notificationOff:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isNotificationEnabled()Z

    move-result v6

    if-eq v2, v6, :cond_1

    .line 45
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Liar;->a(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 50
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "notificationEnable":Z
    .end local v4    # "sort":J
    :catchall_0
    move-exception v6

    .line 3030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 50
    throw v6

    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v4    # "sort":J
    :cond_5
    move v2, v6

    .line 35
    goto :goto_2
.end method
