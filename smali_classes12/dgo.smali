.class public final Ldgo;
.super Ldgl;
.source "ChatDetailMultiViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ldgl;-><init>(Landroid/app/Activity;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Z)V
    .locals 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "isFromSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 82
    iget-object v0, p0, Ldgo;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Ldgo;->c:Landroid/view/View;

    sget v1, Lctk$f;->img_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldgo;->m:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Ldgo;->c:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldgo;->n:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Ldgo;->c:Landroid/view/View;

    sget v1, Lctk$f;->tv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldgo;->o:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Ldgo;->n:Landroid/widget/TextView;

    iget-object v1, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    invoke-static {v0, p2}, Ldgo;->a(Ljava/lang/CharSequence;Z)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;

    move-result-object v7

    .line 88
    .local v7, "result":Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    iget-object v1, p0, Ldgo;->o:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;->a:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v0, p0, Ldgo;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v0, :cond_8

    .line 1139
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->extension:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1140
    iget-object v0, p0, Ldgo;->m:Landroid/widget/ImageView;

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    iget-object v3, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :cond_0
    :goto_1
    iget-object v0, p0, Ldgo;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Ldgo;->c:Landroid/view/View;

    sget v1, Lctk$f;->item_search_message_data:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 93
    .end local v7    # "result":Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    :cond_1
    return-void

    .line 88
    .restart local v7    # "result":Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    :cond_2
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto :goto_0

    .line 1141
    :cond_3
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1142
    iget-object v1, p0, Ldgo;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->defaultRes:I

    if-lez v0, :cond_5

    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->defaultRes:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1143
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldgo;->p:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1144
    iget-object v1, p0, Ldgo;->p:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Ldgo;->m:Landroid/widget/ImageView;

    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    invoke-interface {v1, v3, v2, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 2078
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 1146
    const/4 v0, 0x1

    .line 2114
    iput v0, v6, Lhcg$a;->e:I

    .line 3104
    iput-boolean v4, v6, Lhcg$a;->b:Z

    .line 3109
    iput-boolean v4, v6, Lhcg$a;->c:Z

    .line 1148
    const/16 v0, 0x28

    .line 4099
    iput v0, v6, Lhcg$a;->a:I

    .line 1150
    invoke-virtual {p0, v6}, Ldgo;->a(Lhcg$a;)V

    .line 4164
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-nez v0, :cond_6

    .line 1152
    :cond_4
    :goto_3
    iget-object v0, p0, Ldgo;->d:Landroid/app/Activity;

    iget-object v1, p0, Ldgo;->m:Landroid/widget/ImageView;

    iget-object v4, p0, Ldgo;->p:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v5, p1

    check-cast v5, Landroid/widget/AbsListView;

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 1154
    iget-object v0, p0, Ldgo;->m:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 1142
    :cond_5
    sget v0, Lctk$e;->default_link_icon:I

    goto :goto_2

    .line 4167
    :cond_6
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 4168
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    .line 4169
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4172
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 4173
    instance-of v3, v0, Lcom/alibaba/wukong/im/MessageContent$MediaContent;

    if-eqz v3, :cond_4

    .line 4174
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$MediaContent;

    .line 4175
    invoke-static {v0, v1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 4176
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4177
    invoke-static {v1}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1156
    :cond_7
    iget-object v0, p0, Ldgo;->m:Landroid/widget/ImageView;

    sget v1, Lctk$e;->default_link_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1159
    :cond_8
    iget-object v0, p0, Ldgo;->m:Landroid/widget/ImageView;

    sget v1, Lctk$e;->default_link_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lctk$g;->view_chat_detail_item_mutil:I

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Ldgo;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 101
    .local v11, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 5340
    :sswitch_0
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    if-eqz v0, :cond_0

    .line 5343
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_0

    .line 5344
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 5345
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    .line 5346
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcow;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v5

    .line 5347
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    .line 5345
    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 4184
    :sswitch_1
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v0, :cond_0

    .line 4187
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 4188
    invoke-static {v5, v11}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    .line 4189
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Ldgo;->d:Landroid/app/Activity;

    .line 4190
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v3

    .line 4189
    invoke-virtual {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4191
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4195
    iget-object v0, p0, Ldgo;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldgo;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 4196
    :goto_1
    if-eqz v0, :cond_2

    .line 4197
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 4199
    :cond_2
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v4, Ldgo$1;

    invoke-direct {v4, p0, v0, v2, v5}, Ldgo$1;-><init>(Ldgo;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    const-class v0, Lcma;

    iget-object v6, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-interface {v1, v4, v0, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 4221
    invoke-virtual {p0}, Ldgo;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v7

    .line 4222
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v8, "IM"

    .line 4223
    invoke-static {v7}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    .line 4224
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getAuthCode()Ljava/lang/String;

    move-result-object v10

    if-nez v7, :cond_4

    const/4 v5, 0x0

    .line 4223
    :goto_2
    invoke-static {v8, v9, v10, v5}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 4222
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcma;)V

    goto/16 :goto_0

    .line 4195
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 4224
    :cond_4
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    .line 4228
    :sswitch_2
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    if-eqz v0, :cond_0

    .line 4231
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 4232
    invoke-virtual {p0}, Ldgo;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 4233
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->picUrl()Ljava/lang/String;

    move-result-object v1

    .line 4235
    invoke-static {v1}, Lebj;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4236
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    iget-object v4, p0, Ldgo;->d:Landroid/app/Activity;

    .line 4237
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$d;->chat_item_video_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Ldgo;->d:Landroid/app/Activity;

    .line 4238
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$d;->chat_item_video_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x1

    .line 4236
    invoke-virtual {v2, v1, v4, v5, v6}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 4240
    :cond_5
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v2

    .line 4242
    invoke-static {v2}, Lebj;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 4243
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v4

    iget-object v5, p0, Ldgo;->d:Landroid/app/Activity;

    .line 4244
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$d;->chat_item_video_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Ldgo;->d:Landroid/app/Activity;

    .line 4245
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$d;->chat_item_video_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x1

    .line 4243
    invoke-virtual {v4, v2, v5, v6, v7}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 4263
    :cond_6
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Ldgo;->d:Landroid/app/Activity;

    const-class v6, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4264
    const-string/jumbo v5, "video_url"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4265
    const-string/jumbo v5, "video_auth_url"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4266
    const-string/jumbo v5, "video_size"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->size()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4267
    const-string/jumbo v5, "video_bitrate"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->bitrate()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4268
    const-string/jumbo v5, "video_height"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4269
    const-string/jumbo v5, "video_width"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getWidth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4270
    const-string/jumbo v5, "video_duration"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->duration()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4271
    const-string/jumbo v5, "user_id"

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4272
    const-string/jumbo v5, "forward_enter_hide"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4274
    const-string/jumbo v5, "IM"

    .line 4275
    invoke-static {v3}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getAuthCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicAuthCode()Ljava/lang/String;

    move-result-object v0

    .line 4274
    invoke-static {v5, v3, v6, v0}, Lebr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4276
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4278
    const-string/jumbo v0, "video_pic_auth_url"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4280
    const-string/jumbo v0, "video_pic_url"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4282
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4283
    const-string/jumbo v0, "intent_key_swipe_object"

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-object v1, p0, Ldgo;->m:Landroid/widget/ImageView;

    invoke-static {v2, v3, v1}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4286
    iget-object v0, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4291
    :sswitch_3
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    if-eqz v0, :cond_0

    .line 4294
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .line 4296
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4297
    const-string/jumbo v2, "location_latitude"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->latitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 4298
    const-string/jumbo v2, "location_longitude"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->longitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 4299
    const-string/jumbo v2, "location_text"

    .line 4300
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v0

    .line 4299
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4301
    const-string/jumbo v0, "message_id"

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4302
    new-instance v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 4303
    sget v2, Lctk$e;->msg_select_location_mark:I

    iput v2, v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 4304
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 4305
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 4306
    const-string/jumbo v2, "location_select_marker"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4307
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v2, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4383
    :sswitch_4
    invoke-static {v11}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v3

    .line 4384
    if-eqz v3, :cond_0

    .line 4388
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 4390
    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 4391
    const-string/jumbo v8, ""

    .line 4392
    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_7

    .line 4393
    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    .line 4395
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Ldgo;->d:Landroid/app/Activity;

    .line 4396
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    .line 4395
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5352
    :sswitch_5
    invoke-static {v11}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v3

    .line 5353
    if-eqz v3, :cond_0

    .line 5357
    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 5358
    const-string/jumbo v8, ""

    .line 5360
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 5361
    const-string/jumbo v0, "space_transfer_src"

    iget-object v1, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    .line 5362
    invoke-static {v1}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    .line 5361
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5363
    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_9

    .line 5364
    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    .line 5365
    if-eqz v1, :cond_8

    .line 5366
    const-string/jumbo v2, "doc_readonly"

    const-string/jumbo v0, "doc_readonly"

    .line 5367
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5366
    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5368
    const-string/jumbo v2, "watermark"

    const-string/jumbo v0, "watermark"

    .line 5369
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5368
    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5371
    :cond_8
    const-string/jumbo v0, "space_conversation_owner_id"

    iget-object v1, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    invoke-virtual {v9, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5372
    const-string/jumbo v1, "burnChat"

    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    .line 5373
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v12, 0x4

    cmp-long v0, v6, v12

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 5372
    :goto_3
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5375
    iget-object v0, p0, Ldgo;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    .line 5378
    :cond_9
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5373
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 6317
    :sswitch_6
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 6318
    instance-of v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    if-eqz v1, :cond_b

    .line 6319
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    .line 6320
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->contents()Ljava/util/List;

    move-result-object v0

    .line 6321
    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6322
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent;

    .line 6323
    instance-of v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    if-eqz v1, :cond_b

    .line 6324
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    .line 6325
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->url()Ljava/lang/String;

    move-result-object v0

    .line 6326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6327
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6328
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6329
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v2, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 6330
    const/4 v0, 0x1

    .line 6311
    :goto_4
    if-nez v0, :cond_0

    .line 6312
    iget-object v0, p0, Ldgo;->d:Landroid/app/Activity;

    invoke-static {v11, v0}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 6336
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x66 -> :sswitch_6
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0xca -> :sswitch_1
        0xcd -> :sswitch_5
        0xce -> :sswitch_5
        0x12c -> :sswitch_6
        0x12d -> :sswitch_6
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_4
        0x1f6 -> :sswitch_5
    .end sparse-switch
.end method
