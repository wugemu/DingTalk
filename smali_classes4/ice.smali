.class public final Lice;
.super Ljava/lang/Object;
.source "ConversationInfoUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;)V
    .locals 14
    .param p0, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    .param p1, "t"    # Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 24
    :cond_0
    const/4 v7, 0x0

    .line 26
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v10, "[TAG] ConvInfo"

    .line 1014
    const-string/jumbo v11, "im"

    invoke-static {v10, v11}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 27
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[Push] Recv conv info cid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lhzv;->a(Ljava/lang/String;)V

    .line 29
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->conversationId:Ljava/lang/String;

    .line 30
    .local v0, "cid":Ljava/lang/String;
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->isKicked:Ljava/lang/Boolean;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v4

    .line 31
    .local v4, "isKicked":Z
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->isQuit:Ljava/lang/Boolean;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v5

    .line 32
    .local v5, "isQuit":Z
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->isDisband:Ljava/lang/Boolean;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    .line 33
    .local v3, "isDisband":Z
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v10

    invoke-virtual {v10, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 34
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 35
    const-string/jumbo v8, "[Push] Conv null"

    invoke-virtual {v7, v8}, Lhzv;->b(Ljava/lang/String;)V

    .line 37
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    .line 38
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Liaw;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 2014
    :cond_1
    :goto_1
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 40
    :cond_2
    if-eqz v3, :cond_3

    .line 41
    :try_start_1
    const-string/jumbo v8, "[Push] disband"

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    sget-object v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v8, v0, v9}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 44
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v8

    invoke-virtual {v8, v0}, Libs;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 86
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "isDisband":Z
    .end local v4    # "isKicked":Z
    .end local v5    # "isQuit":Z
    :catchall_0
    move-exception v8

    .line 3030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 86
    throw v8

    .line 46
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "isDisband":Z
    .restart local v4    # "isKicked":Z
    .restart local v5    # "isQuit":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 47
    :try_start_2
    const-string/jumbo v8, "[Push] kick out"

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    sget-object v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v8, v0, v9}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    goto :goto_1

    .line 49
    :cond_4
    if-eqz v5, :cond_5

    .line 50
    const-string/jumbo v8, "[Push] is quit"

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    invoke-virtual {v8, v0}, Liar;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 53
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v8

    invoke-virtual {v8, v0}, Libs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_5
    const-string/jumbo v10, "[Push] Conv change"

    invoke-virtual {v7, v10}, Lhzv;->a(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    .line 59
    .local v2, "conversationCache":Liar;
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v10}, Liar;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->icon:Ljava/lang/String;

    invoke-virtual {v2, v0, v10}, Liar;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->memberCount:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Liar;->a(Ljava/lang/String;I)Z

    .line 62
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->tag:Ljava/lang/Long;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    invoke-virtual {v2, v0, v10, v11}, Liar;->b(Ljava/lang/String;J)Z

    .line 63
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->extension:Ljava/util/Map;

    invoke-virtual {v2, v0, v10}, Liar;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 64
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->authority:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Liar;->d(Ljava/lang/String;I)Z

    .line 65
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->memberLimit:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Liar;->e(Ljava/lang/String;I)Z

    .line 66
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->superGroup:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Liar;->f(Ljava/lang/String;I)Z

    .line 67
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    iget-object v11, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->ownerId:Ljava/lang/Long;

    invoke-static {v11}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v12

    invoke-virtual {v2, v10, v12, v13}, Liar;->a([Ljava/lang/String;J)Z

    .line 68
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    if-eqz v10, :cond_7

    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    iget-object v10, v10, Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;->type:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    :goto_2
    invoke-virtual {v2, v0, v10}, Liar;->g(Ljava/lang/String;I)Z

    .line 69
    iget-object v10, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->banWordsType:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    if-ne v10, v8, :cond_8

    :goto_3
    invoke-virtual {v2, v0, v8}, Liar;->b(Ljava/lang/String;Z)Z

    .line 70
    iget-object v8, p1, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    invoke-virtual {v2, v0, v1, v8}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/idl/im/models/SearchableModel;)V

    .line 71
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v6

    .line 78
    .local v6, "oldStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v6, v8, :cond_6

    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v6, v8, :cond_6

    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v6, v8, :cond_1

    .line 80
    :cond_6
    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v2, v0, v8}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v6    # "oldStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :cond_7
    move v10, v9

    .line 68
    goto :goto_2

    :cond_8
    move v8, v9

    .line 69
    goto :goto_3
.end method
