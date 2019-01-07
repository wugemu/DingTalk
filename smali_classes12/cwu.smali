.class public final Lcwu;
.super Lcts;
.source "RecallViewHolder.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcts;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcwu;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcwu;

    .prologue
    .line 56
    iget-object v0, p0, Lcwu;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 12
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 236
    :goto_0
    return v4

    .line 210
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-eqz v4, :cond_2

    move v4, v5

    .line 212
    goto :goto_0

    .line 214
    :cond_2
    const-wide/16 v2, 0x0

    .line 216
    .local v2, "recallTime":J
    :try_start_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 217
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v7, "recallMessageTime"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 223
    :cond_3
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-gtz v4, :cond_4

    .line 225
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    .line 227
    :cond_4
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/32 v10, 0x493e0

    cmp-long v4, v8, v10

    if-lez v4, :cond_5

    move v4, v5

    .line 229
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "im"

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "get recall time failed, error="

    aput-object v9, v8, v5

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 220
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 233
    .local v1, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    if-ne v4, v6, :cond_6

    instance-of v4, v1, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-nez v4, :cond_7

    :cond_6
    instance-of v4, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v4, :cond_8

    .line 236
    invoke-static {p0}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v4, v6

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 150
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "conversationTag"    # J

    .prologue
    .line 155
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    .line 69
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 71
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v14

    .line 1437
    .local v14, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcts;->f:Landroid/widget/TextView;

    .line 73
    if-eqz v2, :cond_0

    .line 2437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcts;->f:Landroid/widget/TextView;

    .line 74
    sget-object v3, Lcwu;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->a:Landroid/widget/TextView;

    sget-object v3, Lcwu;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    sget v12, Lctk$i;->msg_recall:I

    .line 80
    .local v12, "recallStringResId":I
    invoke-static/range {p4 .. p4}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    sget v12, Lctk$i;->dt_message_recall_message_file_format:I

    .line 84
    :cond_1
    move v11, v12

    .line 86
    .local v11, "finalRecallStringResId":I
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v10

    .line 87
    .local v10, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v10, :cond_2

    .line 88
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 89
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->msg_recall_me:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v11, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, "textContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3168
    .end local v13    # "textContent":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static/range {p4 .. p4}, Lcwu;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3171
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_recall_msg_reedit"

    .line 4083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 3171
    if-eqz v2, :cond_4

    .line 3176
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3180
    :cond_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 3181
    sget v4, Lctk$i;->dt_im_chat_recall_reedit_tips:I

    invoke-static {v4}, Lcwu;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3182
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcwu;->d:Landroid/app/Activity;

    sget v6, Lctk$c;->ui_common_theme_text_color:I

    invoke-static {v5, v6}, Ldp;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3183
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x22

    .line 3182
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3184
    new-instance v4, Lcwu$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcwu$2;-><init>(Lcwu;Lcom/alibaba/wukong/im/Message;)V

    .line 3197
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 3184
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3203
    :cond_4
    :goto_1
    return-void

    .line 92
    :cond_5
    if-eqz v14, :cond_7

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->d:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->d:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ae()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "***"

    aput-object v5, v3, v4

    invoke-virtual {v2, v11, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .restart local v13    # "textContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 98
    .end local v13    # "textContent":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->SYSTEM_MSG:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v10, v2}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v8

    .line 99
    .local v8, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->a:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    new-instance v9, Lcwu$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v11}, Lcwu$1;-><init>(Lcwu;I)V

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 118
    .end local v8    # "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->msg_recall_default:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v11, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 119
    .restart local v13    # "textContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3200
    .end local v13    # "textContent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3201
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "reeditRecallMsg failed, error="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 3202
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3201
    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 139
    sget v0, Lctk$f;->chatting_content_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwu;->a:Landroid/widget/TextView;

    .line 140
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lctk$g;->chatting_item_system:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcwu;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcwu;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcwu;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method
