.class public final Ldiu;
.super Ljava/lang/Object;
.source "BurnChatPatchUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/Object;)V
    .locals 10
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 50
    .line 1037
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "secret_sync_read_status"

    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v6

    .line 50
    if-eqz v6, :cond_6

    .line 51
    if-eqz p0, :cond_6

    invoke-static {p0}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz p1, :cond_6

    .line 52
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "cid":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    instance-of v6, p1, Lcom/alibaba/wukong/im/Message;

    if-eqz v6, :cond_3

    .line 55
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 65
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Message;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 68
    .local v3, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 69
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 70
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->allReceiversRead()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 56
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Message;>;"
    .end local v3    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_3
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 57
    check-cast v1, Ljava/util/List;

    .line 58
    .local v1, "dataList":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, "object":Ljava/lang/Object;
    if-eqz v4, :cond_4

    instance-of v7, v4, Lcom/alibaba/wukong/im/Message;

    if-eqz v7, :cond_4

    .line 60
    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .end local v4    # "object":Ljava/lang/Object;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .end local v1    # "dataList":Ljava/util/List;
    .end local p1    # "data":Ljava/lang/Object;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Message;>;"
    :cond_5
    invoke-static {v0, v5}, Ldiu;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Message;>;"
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 88
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_2

    .line 89
    new-instance v4, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;-><init>()V

    .line 90
    .local v4, "object":Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->msgId:J

    .line 91
    invoke-static {p0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->openId:J

    .line 92
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-wide v8, v4, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->msgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v4    # "object":Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 99
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 100
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "BurnChatPatchUtils query status, cid:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",msgList:"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "traceString":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 102
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;

    .line 103
    .restart local v4    # "object":Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;
    if-eqz v4, :cond_4

    .line 104
    iget-wide v8, v4, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->msgId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 108
    .end local v4    # "object":Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;
    :cond_5
    const-class v7, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageService;

    .line 109
    .local v3, "messageService":Lcom/alibaba/wukong/im/MessageService;
    new-instance v7, Ldiu$1;

    invoke-direct {v7, p0, v1, v3}, Ldiu$1;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/alibaba/wukong/im/MessageService;)V

    invoke-interface {v3, v5, v7}, Lcom/alibaba/wukong/im/MessageService;->querySecretMsgReadStatus(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method
