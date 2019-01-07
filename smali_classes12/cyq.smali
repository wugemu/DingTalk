.class public abstract Lcyq;
.super Lctt;
.source "UserEncryptedViewHolder.java"


# instance fields
.field private Y:Landroid/widget/ImageView;

.field protected Z:Landroid/widget/TextView;

.field protected aa:Landroid/widget/TextView;

.field protected ab:Landroid/widget/ImageView;

.field protected ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field private ad:Landroid/view/View;

.field private ae:Landroid/view/View;

.field private af:Landroid/view/View;

.field private ag:Landroid/view/View;

.field private ah:Landroid/widget/TextView;

.field private ai:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lctt;-><init>(Z)V

    .line 58
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lctt;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 129
    iput-object p2, p0, Lcyq;->e:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcyq;->ad:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcyq;->ae:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyq;->Z:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv_link_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyq;->aa:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcyq;->Y:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_image_marker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcyq;->ab:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->comment_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iput-object v0, p0, Lcyq;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .line 137
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->layout_file_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcyq;->af:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->v_tip_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcyq;->ag:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_tip1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyq;->ah:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcyq;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_tip2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyq;->ai:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p0, p2}, Lcyq;->c(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 109
    iget-object v2, p0, Lcyq;->ae:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcyq;->ae:Landroid/view/View;

    .line 1067
    new-instance v6, Lcyq$1;

    invoke-direct {v6, p0, p2, p1}, Lcyq$1;-><init>(Lcyq;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    .line 110
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    :cond_0
    if-eqz p2, :cond_1

    instance-of v2, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v2, :cond_4

    .line 1198
    :cond_1
    iget-object v2, p0, Lcyq;->ah:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1223
    :cond_2
    iget-object v2, p0, Lcyq;->ai:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_1
    iget-object v2, p0, Lcyq;->ah:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcyq;->ai:Landroid/widget/TextView;

    .line 116
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    :cond_3
    move v0, v4

    .line 117
    .local v0, "showTipLayout":Z
    :goto_2
    iget-object v2, p0, Lcyq;->ah:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcyq;->ai:Landroid/widget/TextView;

    .line 118
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move v1, v4

    .line 119
    .local v1, "showTipsDivider":Z
    :goto_3
    iget-object v6, p0, Lcyq;->af:Landroid/view/View;

    if-eqz v0, :cond_a

    move v2, v3

    :goto_4
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v6, p0, Lcyq;->ag:Landroid/view/View;

    if-eqz v1, :cond_b

    move v2, v3

    :goto_5
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2153
    invoke-virtual {p0, p2}, Lcyq;->b(Lcom/alibaba/wukong/im/Message;)Z

    .line 2154
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    if-eqz v2, :cond_d

    .line 2156
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    .line 2157
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcow;->a(Ljava/lang/String;)I

    move-result v4

    .line 2158
    iget-object v6, p0, Lcyq;->Y:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2160
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->isEncrypt()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2161
    iget-object v2, p0, Lcyq;->ab:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :goto_6
    invoke-virtual {p0, p1, p2, p3}, Lcyq;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 124
    return-void

    .end local v0    # "showTipLayout":Z
    .end local v1    # "showTipsDivider":Z
    :cond_4
    move-object v2, p2

    .line 1202
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1203
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    .line 1204
    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1205
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1206
    iget-object v2, p0, Lcyq;->ah:Landroid/widget/TextView;

    sget v6, Lctk$i;->space_common_group_tips:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1207
    iget-object v2, p0, Lcyq;->ah:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1208
    iget-object v2, p0, Lcyq;->ah:Landroid/widget/TextView;

    new-instance v6, Lcyq$2;

    invoke-direct {v6, p0, p2}, Lcyq$2;-><init>(Lcyq;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1217
    :cond_5
    iget-object v2, p0, Lcyq;->ah:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1227
    :cond_6
    const-string/jumbo v2, "source_from_type"

    invoke-interface {p2, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1228
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1229
    iget-object v2, p0, Lcyq;->ai:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1230
    iget-object v2, p0, Lcyq;->ai:Landroid/widget/TextView;

    sget v6, Lctk$i;->and_message_source_from_pc:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1231
    iget-object v2, p0, Lcyq;->ai:Landroid/widget/TextView;

    new-instance v6, Lcyq$3;

    invoke-direct {v6, p0}, Lcyq$3;-><init>(Lcyq;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1240
    :cond_7
    iget-object v2, p0, Lcyq;->ai:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move v0, v3

    .line 116
    goto/16 :goto_2

    .restart local v0    # "showTipLayout":Z
    :cond_9
    move v1, v3

    .line 118
    goto/16 :goto_3

    .restart local v1    # "showTipsDivider":Z
    :cond_a
    move v2, v5

    .line 119
    goto/16 :goto_4

    :cond_b
    move v2, v5

    .line 120
    goto/16 :goto_5

    .line 2163
    :cond_c
    iget-object v2, p0, Lcyq;->ab:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 2169
    :cond_d
    instance-of v2, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_10

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v6, 0x1f6

    if-ne v2, v6, :cond_10

    move-object v2, p2

    .line 2171
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 2172
    iput-object v2, p0, Lcyq;->ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 2174
    if-eqz v2, :cond_10

    .line 2175
    iget v6, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    if-ne v6, v4, :cond_e

    .line 2176
    iget-object v6, p0, Lcyq;->Y:Landroid/widget/ImageView;

    sget v7, Lctk$e;->chat_app_mail_btn_normal:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2181
    :goto_7
    iget v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v2, v4, :cond_f

    .line 2182
    iget-object v2, p0, Lcyq;->ab:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 2178
    :cond_e
    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v6}, Lcow;->a(Ljava/lang/String;)I

    move-result v6

    .line 2179
    iget-object v7, p0, Lcyq;->Y:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 2184
    :cond_f
    iget-object v2, p0, Lcyq;->ab:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 2190
    :cond_10
    const/4 v2, 0x0

    invoke-static {v2}, Lcow;->a(Ljava/lang/String;)I

    move-result v2

    .line 2191
    iget-object v3, p0, Lcyq;->Y:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2192
    iget-object v2, p0, Lcyq;->ab:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method protected abstract b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcyq;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_file:I

    invoke-static {v2}, Lcyq;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcyq;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyq;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcyq;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyq;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_file:I

    invoke-static {v2}, Lcyq;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcyq;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyq;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcyq;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyq;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
