.class public abstract Ldau;
.super Lctv;
.source "AbsJobCardViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/TextView;

.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected aa:Landroid/view/View;

.field protected ab:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field protected ac:Landroid/view/View;

.field protected ad:Landroid/widget/TextView;

.field protected ae:Landroid/widget/ImageView;

.field protected af:Landroid/view/View;

.field protected ag:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isToMessage"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Ldau;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 44
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldau;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 45
    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 111
    sget v0, Lctk$f;->chatting_tv_job_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldau;->b:Landroid/widget/TextView;

    .line 112
    sget v0, Lctk$f;->chatting_tv_job_salary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldau;->S:Landroid/widget/TextView;

    .line 113
    sget v0, Lctk$f;->chatting_tv_job_enterprise_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldau;->Y:Landroid/widget/TextView;

    .line 114
    sget v0, Lctk$f;->chatting_tv_job_enterprise_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldau;->Z:Landroid/widget/TextView;

    .line 116
    sget v0, Lctk$f;->chatting_job_creator_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldau;->aa:Landroid/view/View;

    .line 117
    sget v0, Lctk$f;->chatting_job_creator_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Ldau;->ab:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 118
    sget v0, Lctk$f;->chatting_job_creator_certification_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldau;->ac:Landroid/view/View;

    .line 119
    sget v0, Lctk$f;->chatting_tv_job_creator_info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldau;->ad:Landroid/widget/TextView;

    .line 120
    sget v0, Lctk$f;->chatting_job_enterprise_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldau;->ae:Landroid/widget/ImageView;

    .line 121
    sget v0, Lctk$f;->chatting_tv_job_enterprise_cert:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldau;->af:Landroid/view/View;

    .line 122
    sget v0, Lctk$f;->chatting_tv_job_enterprise_sub_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldau;->ag:Landroid/widget/TextView;

    .line 124
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
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 49
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 50
    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 51
    .local v2, "thirdPartyDo":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 52
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;

    .line 53
    .local v0, "jobCardDo":Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;
    iget-object v3, p0, Ldau;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->jobTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Ldau;->S:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->salaryDesc:Ljava/lang/String;

    invoke-static {v3, v4}, Ldau;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Ldau;->Y:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->enterpriseName:Ljava/lang/String;

    invoke-static {v3, v4}, Ldau;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Ldau;->Z:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->enterpriseDesc:Ljava/lang/String;

    invoke-static {v3, v4}, Ldau;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 59
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->jobCreatorDesc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    iget-object v3, p0, Ldau;->aa:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v3, p0, Ldau;->ab:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v4, ""

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->jobCreatorAvatar:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget v3, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->jobCreatorRealAuth:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 63
    iget-object v3, p0, Ldau;->ac:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :goto_0
    iget-object v3, p0, Ldau;->ad:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->jobCreatorDesc:Ljava/lang/String;

    invoke-static {v3, v4}, Ldau;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 71
    :goto_1
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->enterpriseLogo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 72
    iget-object v3, p0, Ldau;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Ldau;->ae:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->enterpriseLogo:Ljava/lang/String;

    invoke-static {v5}, Ldmm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 76
    :goto_2
    iget v3, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->enterpriseAuthLevel:I

    if-lez v3, :cond_4

    .line 77
    iget-object v3, p0, Ldau;->af:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_3
    iget-object v3, p0, Ldau;->ag:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->enterpriseSubDesc:Ljava/lang/String;

    invoke-static {v3, v4}, Ldau;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 83
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;->jobLink:Ljava/lang/String;

    .line 84
    .local v1, "jobUrl":Ljava/lang/String;
    iget-object v3, p0, Ldau;->r:Landroid/view/View;

    new-instance v4, Ldau$1;

    invoke-direct {v4, p0, v1}, Ldau$1;-><init>(Ldau;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v3, p0, Ldau;->r:Landroid/view/View;

    new-instance v4, Ldau$2;

    invoke-direct {v4, p0}, Ldau$2;-><init>(Ldau;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    .end local v0    # "jobCardDo":Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;
    .end local v1    # "jobUrl":Ljava/lang/String;
    .end local v2    # "thirdPartyDo":Ljava/lang/Object;
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    .line 99
    return-void

    .line 65
    .restart local v0    # "jobCardDo":Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;
    .restart local v2    # "thirdPartyDo":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Ldau;->ac:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v3, p0, Ldau;->aa:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_3
    iget-object v3, p0, Ldau;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Ldau;->ae:Landroid/widget/ImageView;

    invoke-interface {v3, v4, v8, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 79
    :cond_4
    iget-object v3, p0, Ldau;->af:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget v0, Lctk$i;->dt_im_message_linkcard_nourl_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldau;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_conversation_send_link:I

    invoke-static {v2}, Ldau;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ldau;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldau;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ldau;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Ldau;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
