.class public final Licq;
.super Ljava/lang/Object;
.source "MessageSenderStatusUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;)V
    .locals 10
    .param p0, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    .param p1, "t"    # Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;

    .prologue
    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 28
    .local v3, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "[TAG] MsgSendStatus"

    .line 1014
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 29
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->conversationId:Ljava/lang/String;

    iget-object v7, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 30
    .local v0, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->status:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    if-nez v5, :cond_1

    move v4, v2

    .line 31
    .local v4, "unreadCount":I
    :goto_1
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->status:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    if-nez v5, :cond_2

    .line 32
    .local v2, "totalCount":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Push] Recv msg send status "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " unread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 33
    if-nez v0, :cond_4

    .line 34
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->uuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 35
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->conversationId:Ljava/lang/String;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v8

    iget-object v7, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6, v8, v9, v7}, Libs;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    const-string/jumbo v5, "[Push] msg null, local exist"

    invoke-virtual {v3, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v4, v2}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z

    .line 2014
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3030
    :goto_3
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 30
    .end local v2    # "totalCount":I
    .end local v4    # "unreadCount":I
    :cond_1
    :try_start_1
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->status:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->unReadCount:Ljava/lang/Integer;

    invoke-static {v5}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v4

    goto/16 :goto_1

    .line 31
    .restart local v4    # "unreadCount":I
    :cond_2
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->status:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->totalCount:Ljava/lang/Integer;

    invoke-static {v5}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    goto/16 :goto_2

    .line 41
    .restart local v2    # "totalCount":I
    :cond_3
    const-string/jumbo v5, "[Push] msg not exist"

    invoke-virtual {v3, v5}, Lhzv;->b(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v5, "msg null"

    invoke-static {p0, v5}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 55
    .end local v0    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "totalCount":I
    .end local v4    # "unreadCount":I
    :catchall_0
    move-exception v5

    .line 4030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 55
    throw v5

    .line 45
    .restart local v0    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v2    # "totalCount":I
    .restart local v4    # "unreadCount":I
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 46
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v4, v2}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z

    move-result v1

    .line 47
    .local v1, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Push] msg exist, update "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 49
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/idl/im/models/DeliveryMessageStatusModel;->conversationId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Liaw;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 3014
    .end local v1    # "ret":Z
    :cond_5
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
