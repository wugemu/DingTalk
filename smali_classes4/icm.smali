.class public final Licm;
.super Ljava/lang/Object;
.source "MessagePrivateTagUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;)V
    .locals 6
    .param p0, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    .param p1, "model"    # Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 25
    .local v1, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v2, "[TAG] MsgPri"

    .line 1014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Push] Recv msg pri "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->conversationId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 29
    .local v0, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v0, :cond_1

    .line 31
    const-string/jumbo v2, "msg null"

    invoke-static {p0, v2}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    :goto_1
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 33
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->conversationId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->memberTag:Ljava/lang/Long;

    invoke-static {v4}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v0, v4, v5}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;J)Z

    .line 34
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->conversationId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->memberExtension:Ljava/util/Map;

    invoke-virtual {v2, v3, v0, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;)Z

    .line 36
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/wukong/idl/im/models/MessageTagNoticeModel;->conversationId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Liaw;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 2014
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 42
    .end local v0    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catchall_0
    move-exception v2

    .line 3030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 42
    throw v2
.end method
