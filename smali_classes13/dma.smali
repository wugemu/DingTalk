.class public final Ldma;
.super Ljava/lang/Object;
.source "MarkdownReplyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-static {p0}, Ldma;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v0

    .line 405
    .local v0, "replyRobotMarkdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    if-eqz v0, :cond_0

    .line 406
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalCid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalMsgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 409
    :cond_0
    return v1
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Z
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "messageSenderDisplayName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v6, v7, :cond_2

    .line 93
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "markdown_quote_enable"

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v4

    .line 96
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v7, "feature_im_msg_reply"

    .line 1083
    invoke-virtual {v6, v7, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 96
    if-eqz v6, :cond_0

    .line 100
    :cond_2
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v6, v7, :cond_0

    .line 103
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    .line 105
    .local v0, "conversationTag":J
    const-wide/16 v6, 0x4

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x7

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x10

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 110
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    .line 120
    .local v3, "type":I
    if-eq v3, v5, :cond_3

    const/16 v6, 0x4b0

    if-eq v3, v6, :cond_3

    const/16 v6, 0x66

    if-eq v3, v6, :cond_3

    const/16 v6, 0x1f4

    if-eq v3, v6, :cond_3

    const/16 v6, 0x1f5

    if-eq v3, v6, :cond_3

    const/16 v6, 0x1f6

    if-eq v3, v6, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/16 v6, 0xfb

    if-eq v3, v6, :cond_3

    const/16 v6, 0x12d

    if-eq v3, v6, :cond_3

    const/16 v6, 0x12c

    if-ne v3, v6, :cond_0

    .line 125
    :cond_3
    invoke-static {p0, p1}, Ldma;->b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ldmc;

    move-result-object v2

    .line 126
    .local v2, "displayResult":Ldmc;
    if-eqz v2, :cond_0

    iget-object v6, v2, Ldmc;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v2, Ldmc;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Ldoh;->a()I

    move-result v7

    if-ge v6, v7, :cond_0

    move v4, v5

    .line 127
    goto/16 :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 413
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x4b0

    if-ne v1, v2, :cond_0

    .line 415
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 416
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 417
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    .line 421
    .end local v0    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ldmc;
    .locals 36
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 230
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v31

    if-eqz v31, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v31

    if-nez v31, :cond_1

    .line 231
    :cond_0
    const/16 v26, 0x0

    .line 392
    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    .end local p1    # "senderName":Ljava/lang/String;
    .local v6, "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .local v9, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .local v21, "quoteUserTextWithAt":Ldmc;
    .local v28, "type":I
    :goto_0
    return-object v26

    .line 233
    .end local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .end local v9    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v21    # "quoteUserTextWithAt":Ldmc;
    .end local v28    # "type":I
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local p1    # "senderName":Ljava/lang/String;
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v28

    .line 234
    .restart local v28    # "type":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 1206
    .restart local v9    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_5

    .line 1208
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 1209
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v31

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v31

    .line 1210
    if-eqz v31, :cond_2

    .line 1211
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object p1

    .line 1214
    .end local p1    # "senderName":Ljava/lang/String;
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_5

    .line 1215
    new-instance v21, Ldmc;

    invoke-direct/range {v21 .. v21}, Ldmc;-><init>()V

    .line 1216
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "> "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "###### "

    aput-object v33, v31, v32

    const/16 v32, 0x2

    aput-object p1, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    iput-object v0, v1, Ldmc;->a:Ljava/lang/String;

    .line 1217
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v31

    if-eqz v31, :cond_3

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 1218
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v32

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lccr;->c()J

    move-result-wide v34

    cmp-long v31, v32, v34

    if-eqz v31, :cond_3

    .line 1219
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 1220
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    move-object/from16 v0, v31

    move-object/from16 v1, v21

    iput-object v0, v1, Ldmc;->b:Ljava/util/HashMap;

    .line 236
    .restart local v21    # "quoteUserTextWithAt":Ldmc;
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 237
    .restart local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 238
    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 239
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 241
    :cond_4
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v25

    check-cast v25, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 242
    .local v25, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v24

    .line 243
    .local v24, "text":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 244
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1226
    .end local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .end local v21    # "quoteUserTextWithAt":Ldmc;
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_5
    const/16 v21, 0x0

    goto :goto_1

    .line 246
    .restart local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .restart local v21    # "quoteUserTextWithAt":Ldmc;
    .restart local v24    # "text":Ljava/lang/String;
    .restart local v25    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_6
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v24

    .line 1431
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_7

    .line 1434
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_7

    .line 1435
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0xc8

    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "..."

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1437
    .end local v24    # "text":Ljava/lang/String;
    if-eqz p0, :cond_7

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v31

    if-eqz v31, :cond_7

    .line 1439
    const-string/jumbo v31, "[{0}]({1})"

    .line 1440
    const-string/jumbo v32, "dtmd://dingtalkclient/jumpToMsg"

    const-string/jumbo v33, "cid"

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1441
    const-string/jumbo v33, "msgId"

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1442
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcid;->c()Landroid/app/Application;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    sget v34, Lctk$i;->dt_msg_click_view_original:I

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1443
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v33, v34, v35

    const/16 v33, 0x1

    aput-object v32, v34, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1444
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v24, v32, v33

    const/16 v33, 0x1

    const-string/jumbo v34, "\n"

    aput-object v34, v32, v33

    const/16 v33, 0x2

    const-string/jumbo v34, "\n"

    aput-object v34, v32, v33

    const/16 v33, 0x3

    aput-object v31, v32, v33

    invoke-static/range {v32 .. v32}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 248
    .restart local v24    # "text":Ljava/lang/String;
    :cond_7
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 249
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 252
    :cond_8
    const-string/jumbo v31, "(\\r|\\n)*(\\r|\\n)"

    const-string/jumbo v32, "\n> \n>"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 253
    const-string/jumbo v31, "> "

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 386
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_9
    :goto_2
    new-instance v26, Ldmc;

    invoke-direct/range {v26 .. v26}, Ldmc;-><init>()V

    .line 387
    .local v26, "textWithAtInfo":Ldmc;
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Ldmc;->a:Ljava/lang/String;

    .line 388
    if-eqz v21, :cond_a

    .line 389
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->b:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Ldmc;->b:Ljava/util/HashMap;

    .line 391
    :cond_a
    move-object/from16 v0, v26

    iput-object v6, v0, Ldmc;->c:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 254
    .end local v26    # "textWithAtInfo":Ldmc;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_b
    const/16 v31, 0x66

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 255
    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_c

    .line 256
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 258
    :cond_c
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 259
    .local v15, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_d

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 260
    :cond_d
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 263
    :cond_e
    const/16 v31, 0x3

    :try_start_0
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "> "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "[{0}]({1})"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "\n"

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, "mdLinkFormat":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcid;->c()Landroid/app/Application;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    sget v32, Lctk$i;->dt_im_trans_to_multiple_link_message_tip:I

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 265
    .local v27, "title":Ljava/lang/String;
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    const/16 v32, 0x1

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 266
    .end local v16    # "mdLinkFormat":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 267
    .local v12, "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    const-string/jumbo v31, "im"

    const/16 v32, 0x0

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "[getDisplayResult] link reply error, info:"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v33 .. v33}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 271
    .end local v12    # "ex":Ljava/lang/Exception;
    .end local v15    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_f
    const/16 v31, 0x1f4

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    const/16 v31, 0x1f5

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    const/16 v31, 0x1f6

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 273
    :cond_10
    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_11

    .line 274
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 277
    :cond_11
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v31

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcid;->c()Landroid/app/Application;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lgrg;

    move-result-object v23

    .line 278
    .local v23, "spaceViewModel":Lgrg;
    if-eqz v23, :cond_12

    .line 2022
    move-object/from16 v0, v23

    iget-object v0, v0, Lgrg;->b:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 278
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_12

    .line 3014
    move-object/from16 v0, v23

    iget-object v0, v0, Lgrg;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 278
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 279
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 282
    :cond_13
    const/16 v31, 0x3

    :try_start_1
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "> "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "[{0}]({1})"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "\n"

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 283
    .restart local v16    # "mdLinkFormat":Ljava/lang/String;
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcid;->c()Landroid/app/Application;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    sget v34, Lctk$i;->lst_msg_tip_file:I

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, " "

    aput-object v33, v31, v32

    const/16 v32, 0x2

    .line 3022
    move-object/from16 v0, v23

    iget-object v0, v0, Lgrg;->b:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 283
    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 284
    .restart local v27    # "title":Ljava/lang/String;
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    const/16 v32, 0x1

    .line 4014
    move-object/from16 v0, v23

    iget-object v0, v0, Lgrg;->a:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 284
    aput-object v33, v31, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 285
    .end local v16    # "mdLinkFormat":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 286
    .restart local v12    # "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const-string/jumbo v31, "im"

    const/16 v32, 0x0

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "[getDisplayResult] file reply error, info:"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v33 .. v33}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 290
    .end local v12    # "ex":Ljava/lang/Exception;
    .end local v23    # "spaceViewModel":Lgrg;
    :cond_14
    const/16 v31, 0x12d

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_15

    const/16 v31, 0x12c

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 291
    :cond_15
    if-eqz v21, :cond_16

    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 292
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 295
    :cond_16
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v18

    check-cast v18, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 296
    .local v18, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v31

    if-eqz v31, :cond_17

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_17

    .line 297
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    if-eqz v31, :cond_17

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move/from16 v31, v0

    if-nez v31, :cond_18

    .line 298
    :cond_17
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 300
    :cond_18
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 301
    .local v11, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v29

    .line 302
    .local v29, "url":Ljava/lang/String;
    const-string/jumbo v27, ""

    .line 303
    .restart local v27    # "title":Ljava/lang/String;
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 304
    .local v10, "cachedOAobject":Ljava/lang/Object;
    const-string/jumbo v20, ""

    .line 305
    .local v20, "oaType":Ljava/lang/String;
    instance-of v0, v10, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    move/from16 v31, v0

    if-eqz v31, :cond_19

    move-object/from16 v19, v10

    .line 306
    check-cast v19, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 307
    .local v19, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 308
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 310
    .end local v19    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :cond_19
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 311
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 313
    :cond_1b
    const/16 v31, 0x5

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "["

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v20, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "]"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    const-string/jumbo v33, " "

    aput-object v33, v31, v32

    const/16 v32, 0x4

    aput-object v27, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 315
    const/16 v31, 0x3

    :try_start_2
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "> "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "[{0}]({1})"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "\n"

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 316
    .restart local v16    # "mdLinkFormat":Ljava/lang/String;
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    const/16 v32, 0x1

    aput-object v29, v31, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 317
    .end local v16    # "mdLinkFormat":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 318
    .restart local v12    # "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    const-string/jumbo v31, "im"

    const/16 v32, 0x0

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "[getDisplayResult] oa reply error, info:"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v33 .. v33}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 322
    .end local v10    # "cachedOAobject":Ljava/lang/Object;
    .end local v11    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v12    # "ex":Ljava/lang/Exception;
    .end local v18    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v20    # "oaType":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .end local v29    # "url":Ljava/lang/String;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1c
    const/16 v31, 0x4b0

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_22

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    move/from16 v31, v0

    if-eqz v31, :cond_22

    .line 323
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    check-cast v22, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 324
    .local v22, "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1d

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 325
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 327
    :cond_1e
    invoke-static/range {p0 .. p0}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v13

    .line 328
    .local v13, "hasOriginalMarkdown":Z
    if-nez v13, :cond_20

    .line 329
    if-eqz v21, :cond_1f

    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1f

    .line 330
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 332
    :cond_1f
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v24

    .line 333
    .restart local v24    # "text":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v24

    .line 335
    const-string/jumbo v31, "(\\r|\\n)*(\\r|\\n)"

    const-string/jumbo v32, "\n> \n>"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 336
    const-string/jumbo v31, "> "

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 338
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v7

    .line 340
    .local v7, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_9

    .line 341
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .restart local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    goto/16 :goto_2

    .line 345
    .end local v7    # "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .end local v24    # "text":Ljava/lang/String;
    :cond_20
    if-eqz v21, :cond_21

    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_21

    .line 346
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 348
    :cond_21
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v24

    .line 349
    .restart local v24    # "text":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v24

    .line 351
    const-string/jumbo v31, "(\\r|\\n)*(\\r|\\n)"

    const-string/jumbo v32, "\n> \n>"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 352
    const-string/jumbo v31, "> "

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_2

    .line 355
    .end local v13    # "hasOriginalMarkdown":Z
    .end local v22    # "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    .end local v24    # "text":Ljava/lang/String;
    :cond_22
    const/16 v31, 0x2

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_23

    const/16 v31, 0xfb

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    :cond_23
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 357
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 358
    .local v14, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v30

    .line 359
    .local v30, "usingUrl":Ljava/lang/String;
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v14, v0, v1}, Liaf;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, "authUrl":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "authCode":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Ldmm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 362
    invoke-static {v8}, Ldmm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 363
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 364
    move-object/from16 v30, v8

    .line 367
    :cond_24
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_25

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_26

    .line 368
    :cond_25
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 371
    :cond_26
    if-eqz v21, :cond_27

    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_27

    .line 372
    move-object/from16 v0, v21

    iget-object v0, v0, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 376
    :cond_27
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "> "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "![FromImage]({0})"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "\n"

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 377
    .local v17, "mdPicFormat":Ljava/lang/String;
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v30, v31, v32

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 380
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 381
    .restart local v6    # "authMediaParamHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    new-instance v5, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    invoke-direct {v5}, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;-><init>()V

    .line 382
    .local v5, "authMediaParam":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    iput-object v4, v5, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    .line 383
    iput-object v8, v5, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 384
    move-object/from16 v0, v30

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public static c(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v3, 0x0

    .line 452
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v3

    .line 455
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 456
    .local v0, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x4b0

    if-ne v4, v5, :cond_0

    .line 457
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v4, :cond_0

    .line 458
    invoke-static {p0}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 461
    .local v1, "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 463
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 486
    invoke-static {p0}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 488
    .local v0, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v2, :cond_0

    .line 489
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x4b0

    if-ne v2, v3, :cond_0

    move-object v1, v0

    .line 490
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 491
    .local v1, "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .end local v0    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v1    # "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
