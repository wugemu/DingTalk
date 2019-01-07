.class public final Lcxj;
.super Lcxk;
.source "SessionRecruitmentTextItemHolder.java"


# instance fields
.field A:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/AbsListView;
    .param p3, "listener"    # Lcxi;
    .param p5, "showBottomLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/AbsListView;",
            "Lcxi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    invoke-direct/range {p0 .. p5}, Lcxk;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V

    .line 170
    new-instance v0, Lcxj$1;

    invoke-direct {v0, p0}, Lcxj$1;-><init>(Lcxj;)V

    iput-object v0, p0, Lcxj;->N:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lctk$g;->im_recruitment_sub_session_item_layout:I

    return v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    sget v0, Lctk$f;->session_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcxj;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 42
    sget v0, Lctk$f;->session_unread:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/DDTextView;

    iput-object v0, p0, Lcxj;->c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

    .line 43
    sget v0, Lctk$f;->session_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxj;->d:Landroid/widget/TextView;

    .line 44
    sget v0, Lctk$f;->tv_session_title_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxj;->A:Landroid/widget/TextView;

    .line 45
    sget v0, Lctk$f;->v_session_title_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxj;->M:Landroid/view/View;

    .line 46
    sget v0, Lctk$f;->tv_user_online_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxj;->e:Landroid/widget/TextView;

    .line 47
    sget v0, Lctk$f;->session_gmt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxj;->f:Landroid/widget/TextView;

    .line 48
    sget v0, Lctk$f;->session_notice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxj;->g:Landroid/widget/ImageView;

    .line 49
    sget v0, Lctk$f;->session_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxj;->j:Landroid/view/View;

    .line 50
    sget v0, Lctk$f;->session_silence:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxj;->k:Landroid/view/View;

    .line 51
    sget v0, Lctk$f;->enterprise_session_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxj;->h:Landroid/widget/ImageView;

    .line 52
    sget v0, Lctk$f;->dd_user_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    iput-object v0, p0, Lcxj;->i:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    .line 53
    sget v0, Lctk$f;->session_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxj;->l:Landroid/view/View;

    .line 54
    sget v0, Lctk$f;->layout_session_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxj;->o:Landroid/view/View;

    .line 55
    sget v0, Lctk$f;->bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxj;->p:Landroid/view/View;

    .line 57
    sget v0, Lctk$f;->session_content_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    iput-object v0, p0, Lcxj;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    .line 58
    sget v0, Lctk$f;->chatting_notsuccess_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxj;->J:Landroid/widget/ImageView;

    .line 59
    sget v0, Lctk$f;->safe_chat_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxj;->u:Landroid/widget/ImageView;

    .line 60
    sget v0, Lctk$f;->dt_signal:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxj;->v:Landroid/widget/ImageView;

    .line 62
    sget v0, Lctk$f;->tv_recruitment_job_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxj;->K:Landroid/widget/TextView;

    .line 63
    sget v0, Lctk$f;->tv_recruitment_reply_rate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxj;->L:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x64

    const/16 v3, 0x32

    .line 73
    invoke-super {p0, p1}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 1080
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2114
    invoke-static {v0}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 1084
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3105
    invoke-static {v0}, Libb;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 1085
    if-eqz v0, :cond_9

    .line 1086
    :cond_2
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3228
    iget-object v5, v0, Ldks;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3229
    iget-object v0, v0, Ldks;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 3230
    invoke-virtual {v0, v4}, Ldkt;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_1

    .line 1088
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldwz;->a(Lcom/alibaba/wukong/im/Conversation;)Ldwz;

    move-result-object v0

    .line 1090
    :goto_2
    iget-object v4, p0, Lcxj;->K:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 1092
    if-eqz v0, :cond_4

    .line 1093
    iget-object v1, v0, Ldwz;->e:Ljava/lang/String;

    .line 1095
    :cond_4
    iget-object v4, p0, Lcxj;->K:Landroid/widget/TextView;

    invoke-static {v4, v1}, Lcxj;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1098
    :cond_5
    iget-object v1, p0, Lcxj;->L:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1101
    if-eqz v0, :cond_8

    .line 1102
    iget v1, v0, Ldwz;->d:I

    if-lt v1, v2, :cond_6

    move v0, v2

    .line 1110
    :goto_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->dt_im_chat_recruitment_reply_rate:I

    .line 1111
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "%"

    aput-object v2, v1, v0

    .line 1110
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    iget-object v1, p0, Lcxj;->L:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcxj;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_6
    iget v1, v0, Ldwz;->d:I

    if-gtz v1, :cond_7

    move v0, v3

    .line 1105
    goto :goto_3

    .line 1107
    :cond_7
    iget v0, v0, Ldwz;->d:I

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method protected final f(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 131
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldyq;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, p0, Lcxj;->M:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcxj;->M:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_2
    iget-object v1, p0, Lcxj;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcxj;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_3
    :goto_1
    iget-object v1, p0, Lcxj;->A:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 150
    const-string/jumbo v1, "im_user_show_session_title_tips"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 151
    .local v0, "showTips":Z
    if-eqz v0, :cond_4

    invoke-static {}, Ldex;->a()Ldex;

    move-result-object v1

    .line 4032
    iget-object v1, v1, Ldex;->a:Ljava/lang/String;

    .line 151
    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 152
    invoke-static {v1}, Ldyq;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    invoke-static {}, Ldex;->a()Ldex;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 5028
    iput-object v2, v1, Ldex;->a:Ljava/lang/String;

    .line 155
    :cond_4
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ldex;->a()Ldex;

    move-result-object v2

    .line 5032
    iget-object v2, v2, Ldex;->a:Ljava/lang/String;

    .line 155
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldyq;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 158
    invoke-static {}, Ldex;->a()Ldex;

    move-result-object v1

    const/4 v2, 0x0

    .line 6028
    iput-object v2, v1, Ldex;->a:Ljava/lang/String;

    .line 165
    :cond_5
    iget-object v1, p0, Lcxj;->A:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 142
    .end local v0    # "showTips":Z
    :cond_6
    iget-object v1, p0, Lcxj;->M:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 143
    iget-object v1, p0, Lcxj;->M:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_7
    iget-object v1, p0, Lcxj;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Lcxj;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 161
    .restart local v0    # "showTips":Z
    :cond_8
    iget-object v1, p0, Lcxj;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcxj;->A:Landroid/widget/TextView;

    iget-object v2, p0, Lcxj;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
