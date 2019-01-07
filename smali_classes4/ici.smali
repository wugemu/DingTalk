.class public final Lici;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "msg"

    const-class v1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 1050
    if-eqz p1, :cond_4

    .line 1052
    const/4 v1, 0x0

    .line 1054
    :try_start_0
    const-string/jumbo v0, "[TAG] MsgPush"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 1055
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Push] Recv msg "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v1, v0}, Lhzv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/MessageModel;-><init>()V

    .line 1057
    iput-object p1, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 1058
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;-><init>()V

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->receiverMessageStatus:Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;

    .line 1059
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->receiverMessageStatus:Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;

    sget-object v2, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;->readStatus:Ljava/lang/Integer;

    .line 1060
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 1061
    if-eqz v7, :cond_0

    .line 1063
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;-><init>()V

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    .line 1064
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->unReadCount:Ljava/lang/Integer;

    .line 1065
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->totalCount:Ljava/lang/Integer;

    .line 1069
    :cond_0
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    .line 1068
    invoke-static {v0, v2, v3, v7}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v8

    .line 1070
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .line 1072
    if-eqz v2, :cond_1

    .line 1073
    iget-object v0, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    invoke-static {v3}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lidr;->a(JJ)V

    .line 1074
    invoke-static {}, Libl;->a()Libl;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->groupNickTag:Ljava/lang/Integer;

    invoke-static {v4}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Libl;->a(Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1079
    if-nez v0, :cond_2

    .line 1080
    const/4 v0, 0x2

    iput v0, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1082
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    .line 2061
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v8, v2}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z

    move-result v0

    .line 1082
    if-eqz v0, :cond_3

    .line 1084
    invoke-static {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1085
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    new-instance v2, Lici$1;

    invoke-direct {v2, p0, v8, p1}, Lici$1;-><init>(Lici;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;)V

    invoke-virtual {v0, v1, v2}, Liaw;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 3014
    :cond_3
    :goto_1
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    :try_end_2
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3030
    :goto_2
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1139
    :cond_4
    return-void

    .line 1055
    :cond_5
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1121
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_4
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1126
    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v0, "[Push] save msg err"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v0, "save msg err"

    invoke-static {p2, v0}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1129
    const-string/jumbo v1, "messageId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    new-instance v1, Lhzu;

    invoke-direct {v1}, Lhzu;-><init>()V

    .line 1131
    const-string/jumbo v2, "im"

    iput-object v2, v1, Lhzu;->a:Ljava/lang/String;

    .line 1132
    iput-object v0, v1, Lhzu;->b:Ljava/util/Map;

    .line 1133
    const/16 v0, 0xc9

    iput v0, v1, Lhzu;->c:I

    .line 1134
    const-string/jumbo v0, "\u6d88\u606f\u5165DB\u5931\u8d25"

    iput-object v0, v1, Lhzu;->d:Ljava/lang/String;

    .line 1135
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhzr;->a(Lhzu;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1138
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 4030
    :goto_3
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1138
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method
