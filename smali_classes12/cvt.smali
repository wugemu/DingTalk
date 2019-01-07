.class public final Lcvt;
.super Lcts;
.source "GreetingViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/TextView;

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcts;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;IZ)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;
    .param p1, "index"    # I
    .param p2, "isPreview"    # Z

    .prologue
    .line 241
    if-nez p0, :cond_1

    .line 242
    const/4 v0, 0x0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :cond_1
    const/4 v0, 0x0

    .line 245
    .local v0, "mediaId":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->previewMediaIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->previewMediaIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->previewMediaIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mediaId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "mediaId":Ljava/lang/String;
    goto :goto_0

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->mediaIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->mediaIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->mediaIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mediaId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "mediaId":Ljava/lang/String;
    goto :goto_0
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    invoke-static {p1, p0}, Ldmm;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    iget-object v1, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Message;->delete(Lcom/alibaba/wukong/Callback;)V

    .line 232
    iget-object v1, p0, Lcvt;->d:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    if-eqz v1, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, p0, Lcvt;->d:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->I()Lcom/alibaba/wukong/im/MessageListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/MessageListener;->onRemoved(Ljava/util/List;)V

    .line 238
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 53
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "conversationTag"    # J

    .prologue
    .line 58
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    .line 62
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 64
    if-eqz p1, :cond_0

    instance-of v5, p4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v5, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v5, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 69
    .local v4, "thirdPartyDo":Ljava/lang/Object;
    instance-of v5, v4, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 72
    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    .line 74
    .local v3, "object":Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;
    iget-object v5, v3, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->guideDoc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 75
    iget-object v5, p0, Lcvt;->T:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->guideDoc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcvt;->a(Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;IZ)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "mediaId0":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcvt;->a(Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;IZ)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "mediaId1":Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcvt;->a(Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;IZ)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "mediaId2":Ljava/lang/String;
    iget-object v5, p0, Lcvt;->a:Landroid/widget/ImageView;

    invoke-static {v5, v0}, Lcvt;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lcvt;->b:Landroid/widget/ImageView;

    invoke-static {v5, v1}, Lcvt;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcvt;->S:Landroid/widget/ImageView;

    invoke-static {v5, v2}, Lcvt;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    .end local v0    # "mediaId0":Ljava/lang/String;
    .end local v1    # "mediaId1":Ljava/lang/String;
    .end local v2    # "mediaId2":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 1100
    iget-object v5, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1101
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    .line 1102
    iget-object v5, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    .line 1103
    invoke-static {v5}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1104
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v8

    .line 1106
    invoke-static {v5}, Ldjl;->F(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1107
    invoke-static {v5}, Ldjl;->w(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v5

    .line 1111
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1112
    packed-switch v8, :pswitch_data_0

    .line 1124
    sget v6, Lctk$i;->dt_im_chat_group_invite_description:I

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "{{orgName}}"

    .line 1125
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "{{count}}"

    add-int/lit8 v7, v8, -0x1

    .line 1126
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v6, v5

    .line 1134
    :cond_4
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1135
    iget-object v5, p0, Lcvt;->T:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1109
    :cond_5
    const-string/jumbo v9, "deptName"

    invoke-interface {v5, v9}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1115
    :pswitch_0
    sget v6, Lctk$i;->dt_im_chat_group_invite_description_when_member_only_me:I

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "{{orgName}}"

    .line 1116
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1120
    :pswitch_1
    sget v6, Lctk$i;->dt_im_chat_group_invite_description_when_member_count_less_or_equal_three:I

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "{{orgName}}"

    .line 1121
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1131
    :cond_6
    sget v5, Lctk$i;->dt_im_new_friend_guide_chat_description:I

    invoke-static {v5}, Lcvt;->b(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    move-object v5, v6

    goto :goto_3

    .line 1112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 151
    sget v0, Lctk$f;->iv_0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvt;->a:Landroid/widget/ImageView;

    .line 152
    sget v0, Lctk$f;->iv_1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvt;->b:Landroid/widget/ImageView;

    .line 153
    sget v0, Lctk$f;->iv_2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvt;->S:Landroid/widget/ImageView;

    .line 154
    sget v0, Lctk$f;->tv_tips:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvt;->T:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcvt;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcvt;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcvt;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v0, Lctk$f;->tv_close:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget v0, Lctk$f;->tv_more_emotion:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lctk$g;->chatting_item_greeting:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 170
    iget-object v3, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v3, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v12, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 174
    .local v12, "thirdPartyDo":Ljava/lang/Object;
    instance-of v3, v12, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    if-eqz v3, :cond_0

    move-object v11, v12

    .line 177
    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    .line 179
    .local v11, "object":Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    .line 180
    .local v9, "id":I
    sget v3, Lctk$f;->tv_close:I

    if-ne v9, v3, :cond_2

    .line 182
    invoke-direct {p0}, Lcvt;->o()V

    .line 184
    iget-object v1, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v10

    .line 185
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v3, "a2o5v.12290095"

    const-string/jumbo v4, "welcome_card_close"

    invoke-static {v3, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "Page_Chat_Detail"

    const-string/jumbo v4, "Button-welcome_card_close"

    invoke-interface {v1, v3, v4, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 187
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    sget v3, Lctk$f;->tv_more_emotion:I

    if-ne v9, v3, :cond_3

    .line 189
    iget-object v1, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v10

    .line 190
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v3, "a2o5v.12290095"

    const-string/jumbo v4, "welcome_moregif"

    invoke-static {v3, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "Page_Chat_Detail"

    const-string/jumbo v4, "Button-welcome_moregif"

    invoke-interface {v1, v3, v4, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2054
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v1

    .line 192
    iget-wide v4, v11, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->moreEmotionTopicId:J

    invoke-virtual {v1, v4, v5}, Ldiy;->a(J)V

    goto :goto_0

    .line 194
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    .line 195
    .local v2, "mediaId":Ljava/lang/String;
    sget v3, Lctk$f;->iv_0:I

    if-ne v9, v3, :cond_7

    .line 196
    invoke-static {v11, v5, v5}, Lcvt;->a(Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;IZ)Ljava/lang/String;

    move-result-object v2

    .line 202
    :cond_4
    :goto_1
    iget-object v3, p0, Lcvt;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    .line 203
    .local v8, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 205
    new-instance v0, Ldiz;

    invoke-direct {v0, v8}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .local v0, "messageSender":Ldiz;
    move-object v3, v1

    move-object v4, v1

    move v6, v5

    move-object v7, v1

    .line 206
    invoke-virtual/range {v0 .. v7}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILdcu;)Z

    .line 209
    .end local v0    # "messageSender":Ldiz;
    :cond_5
    invoke-direct {p0}, Lcvt;->o()V

    .line 210
    const-string/jumbo v1, "pref_key_ads_chat_style_user_click"

    invoke-static {v1, v13}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 212
    if-eqz v8, :cond_6

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v1

    if-ne v1, v13, :cond_6

    .line 214
    invoke-static {}, Lder;->a()Lder;

    invoke-static {v8}, Lder;->e(Lcom/alibaba/wukong/im/Conversation;)V

    .line 216
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 217
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "group_id"

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v1, "org_id"

    invoke-static {v8}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "Page_Chat_Detail"

    const-string/jumbo v4, "Button-add_member"

    invoke-interface {v1, v3, v4, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 223
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-static {v8}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v10

    .line 224
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v3, "a2o5v.12290095"

    const-string/jumbo v4, "welcome_card"

    invoke-static {v3, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "Page_Chat_Detail"

    const-string/jumbo v4, "Button-welcome_card"

    invoke-interface {v1, v3, v4, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 197
    .end local v8    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    sget v3, Lctk$f;->iv_1:I

    if-ne v9, v3, :cond_8

    .line 198
    invoke-static {v11, v13, v5}, Lcvt;->a(Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;IZ)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 199
    :cond_8
    sget v3, Lctk$f;->iv_2:I

    if-ne v9, v3, :cond_4

    .line 200
    const/4 v3, 0x2

    invoke-static {v11, v3, v5}, Lcvt;->a(Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;IZ)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
