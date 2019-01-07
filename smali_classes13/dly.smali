.class public Ldly;
.super Ljava/lang/Object;
.source "MarkdownReplyHandler.java"

# interfaces
.implements Ldmb;


# instance fields
.field private a:Ldlz;


# direct methods
.method public constructor <init>(Ldlz;)V
    .locals 0
    .param p1, "info"    # Ldlz;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Ldly;->a:Ldlz;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 123
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ldiz;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 16
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p2, "chatMessageSender"    # Ldiz;
    .param p3, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;",
            "Ldiz;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    .local p4, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p5, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    invoke-virtual {v2}, Ldlz;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    const/4 v2, 0x1

    .line 115
    :goto_0
    return v2

    .line 54
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    .line 1169
    iget-object v2, v2, Lcrp$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 54
    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    .line 2169
    iget-object v2, v2, Lcrp$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 54
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-nez v2, :cond_3

    .line 55
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 58
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    :cond_5
    invoke-static/range {p3 .. p4}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 62
    move-object/from16 v4, p3

    .line 63
    .local v4, "title":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 64
    .local v10, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    iget-object v2, v2, Ldlz;->e:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 65
    const-string/jumbo v2, "\n"

    invoke-virtual {v10, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 66
    const-string/jumbo v2, "\n"

    invoke-virtual {v10, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 68
    const-string/jumbo v2, "---------------"

    invoke-virtual {v10, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 69
    const-string/jumbo v2, "\n"

    invoke-virtual {v10, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 71
    const-string/jumbo v2, "(\\r|\\n)*(\\r|\\n)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v11, "\n"

    aput-object v11, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v11, "#### "

    aput-object v11, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 72
    const-string/jumbo v2, "\n"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 73
    const-string/jumbo v2, "#### "

    invoke-virtual {v10, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 75
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 76
    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "content":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Ldoh;->a()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 78
    sget v2, Lctk$i;->dt_im_reply_text_too_long:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 79
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 83
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    iget-object v2, v2, Ldlz;->f:Ljava/util/Map;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    iget-object v2, v2, Ldlz;->f:Ljava/util/Map;

    .line 84
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    iget-object v2, v2, Ldlz;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 91
    :cond_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v6, "markdownExtension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "md_ver"

    const-string/jumbo v3, "1"

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v2, "md_original_cid"

    move-object/from16 v0, p0

    iget-object v3, v0, Ldly;->a:Ldlz;

    .line 3169
    iget-object v3, v3, Lcrp$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 94
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v2, "md_original_mid"

    move-object/from16 v0, p0

    iget-object v3, v0, Ldly;->a:Ldlz;

    .line 4169
    iget-object v3, v3, Lcrp$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 95
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Ldly;->a:Ldlz;

    iget-object v7, v2, Ldlz;->g:Ljava/util/Map;

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Ldiz;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    .line 98
    .local v9, "message":Lcom/alibaba/wukong/im/Message;
    if-nez v9, :cond_a

    .line 99
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const-string/jumbo v7, "[MarkdownReplyHandler] buildRobotMarkdownMessage null"

    invoke-static {v2, v3, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 103
    :cond_a
    if-eqz p5, :cond_c

    .line 104
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 105
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 106
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v9, v2, v3}, Lcom/alibaba/wukong/im/Message;->updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ldly;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 5126
    if-eqz p1, :cond_d

    if-eqz v9, :cond_d

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 113
    :cond_d
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v2, v3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 114
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_quote_send"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 5129
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v3

    .line 5130
    if-eqz v3, :cond_d

    .line 5135
    :try_start_0
    invoke-static {v3}, Ldna;->a(Ldne;)Lldm;

    move-result-object v2

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    invoke-static {v5, v7}, Ldoh;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lldm;->a(Ljava/lang/String;)Lldd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5142
    :goto_3
    if-eqz v2, :cond_d

    .line 6053
    iget-object v3, v3, Ldne;->a:Ldnc;

    .line 5143
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13, v2}, Ldnc;->a(JLjava/lang/Object;)V

    .line 5144
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 5145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5146
    const-string/jumbo v3, "message_id_before_send"

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5136
    :catch_0
    move-exception v2

    .line 5137
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5138
    const-string/jumbo v7, "Markdown-Parse"

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "[MarkdownReplyHandler] onMessageGenerated error,text"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 5139
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, ",error:"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5138
    invoke-static {v7, v11, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5140
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v2

    invoke-static {v5, v2}, Ldoh;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldog;->a(Ljava/lang/String;)Lldd;

    move-result-object v2

    goto :goto_3
.end method
