.class public Ldfm;
.super Ljava/lang/Object;
.source "SvcGrpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 81
    const/4 v0, 0x1

    const-string/jumbo v1, "svcGrpTicketUrl"

    invoke-static {p0, v0, v1}, Ldfm;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "isPrivateExtension"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-static {}, Ldfm;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v1, v2

    .line 156
    :cond_1
    :goto_0
    return-object v1

    .line 140
    :cond_2
    if-nez p0, :cond_3

    move-object v1, v2

    .line 141
    goto :goto_0

    .line 144
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 145
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-nez v0, :cond_4

    move-object v1, v2

    .line 146
    goto :goto_0

    .line 150
    :cond_4
    if-eqz p1, :cond_8

    .line 151
    invoke-interface {p0, p2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "v":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3161
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 3162
    invoke-static {v0}, Ldjl;->h(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    .line 3163
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_6

    .line 3164
    :cond_5
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "something wrong with "

    aput-object v9, v8, v4

    aput-object p2, v8, v3

    const/4 v3, 0x2

    const-string/jumbo v9, " message, while "

    aput-object v9, v8, v3

    const/4 v3, 0x3

    const-string/jumbo v9, " cid = "

    aput-object v9, v8, v3

    const/4 v3, 0x4

    aput-object v5, v8, v3

    const/4 v3, 0x5

    const-string/jumbo v5, ", orgId = "

    aput-object v5, v8, v3

    const/4 v3, 0x6

    .line 3166
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    .line 3164
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldfk;->a(Ljava/lang/String;)V

    move v3, v4

    .line 156
    :cond_6
    if-nez v3, :cond_1

    :cond_7
    move-object v1, v2

    goto :goto_0

    .line 153
    .end local v1    # "v":Ljava/lang/String;
    :cond_8
    invoke-interface {p0, p2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "v":Ljava/lang/String;
    goto :goto_1
.end method

.method public static a(Landroid/view/View;Lcom/alibaba/wukong/im/Message;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "svcLayout"    # Landroid/view/View;
    .param p3, "answerLayout"    # Landroid/view/View;
    .param p4, "feedbackLayout"    # Landroid/view/View;
    .param p5, "ticketLayout"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 85
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 126
    .end local p2    # "svcLayout":Landroid/view/View;
    .end local p5    # "ticketLayout":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local p2    # "svcLayout":Landroid/view/View;
    .restart local p5    # "ticketLayout":Landroid/view/View;
    :cond_1
    sget v2, Lctk$f;->item_message_data:I

    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2065
    const-string/jumbo v2, "svc_grp_has_answer"

    const-string/jumbo v5, "true"

    invoke-static {p1, v3, v2, v5}, Ldfm;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1259
    if-eqz v2, :cond_3

    move v2, v3

    .line 2069
    :goto_1
    const-string/jumbo v5, "svc_grp_problem_feedback"

    const-string/jumbo v7, "1"

    invoke-static {p1, v3, v5, v7}, Ldfm;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1260
    if-eqz v5, :cond_4

    const/4 v5, 0x2

    :goto_2
    or-int/2addr v5, v2

    .line 2077
    const-string/jumbo v2, "svcGrpShowTicketBtn"

    const-string/jumbo v7, "1"

    invoke-static {p1, v3, v2, v7}, Ldfm;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1261
    if-eqz v2, :cond_5

    const/4 v2, 0x4

    :goto_3
    or-int v1, v5, v2

    .line 91
    .local v1, "state":I
    if-nez v1, :cond_6

    .line 92
    if-eqz p2, :cond_0

    .end local p2    # "svcLayout":Landroid/view/View;
    :goto_4
    move v4, v6

    move-object p5, p2

    .line 122
    .end local p5    # "ticketLayout":Landroid/view/View;
    :cond_2
    invoke-virtual {p5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "state":I
    .restart local p2    # "svcLayout":Landroid/view/View;
    .restart local p5    # "ticketLayout":Landroid/view/View;
    :cond_3
    move v2, v4

    .line 1259
    goto :goto_1

    :cond_4
    move v5, v4

    .line 1260
    goto :goto_2

    :cond_5
    move v2, v4

    .line 1261
    goto :goto_3

    .line 96
    .restart local v1    # "state":I
    :cond_6
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_9

    .line 99
    if-eqz p3, :cond_7

    .line 100
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_7
    :goto_5
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_b

    .line 109
    if-eqz p4, :cond_8

    .line 110
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3073
    const-string/jumbo v2, "svc_grp_problem_feedback_disable"

    const-string/jumbo v5, "true"

    invoke-static {p1, v3, v2, v5}, Ldfm;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 111
    if-nez v2, :cond_a

    move v2, v3

    :goto_6
    invoke-virtual {p4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    :cond_8
    :goto_7
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_c

    move v0, v3

    .line 121
    .local v0, "showTicket":Z
    :goto_8
    if-eqz p5, :cond_0

    .line 122
    if-nez v0, :cond_2

    move-object p2, p5

    goto :goto_4

    .line 103
    .end local v0    # "showTicket":Z
    :cond_9
    if-eqz p3, :cond_7

    .line 104
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    move v2, v4

    .line 111
    goto :goto_6

    .line 115
    :cond_b
    if-eqz p4, :cond_8

    .line 116
    invoke-virtual {p4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_c
    move v0, v4

    .line 120
    goto :goto_8
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/wukong/im/MessageListener;)V
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "createAt"    # J
    .param p4, "messageListener"    # Lcom/alibaba/wukong/im/MessageListener;

    .prologue
    const/4 v5, 0x1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    invoke-static {}, Ldfm;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 42
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-interface {v4, v5, p2, p3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;J)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 43
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v5, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v4, v2, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 46
    :try_start_0
    const-class v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    const-string/jumbo v5, "mConversation"

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 48
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    instance-of v4, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 55
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v4, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-interface {p4, v3, v4}, Lcom/alibaba/wukong/im/MessageListener;->onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    goto :goto_0

    .line 50
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-class v4, Ldfm;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 1022
    const-string/jumbo v6, "im"

    invoke-static {v4, v5, v6}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_svc_grp_entry"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "isPrivateExtension"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-static {p0, v1, p2}, Ldfm;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_inner_department_upgrade_service_group_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
