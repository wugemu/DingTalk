.class public abstract Ldaw;
.super Lctv;
.source "AbsResumeCardViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/FrameLayout;

.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected aa:Landroid/view/View;

.field protected ab:Landroid/widget/TextView;

.field protected ac:Landroid/widget/TextView;

.field protected ad:Landroid/view/View;

.field protected ae:[Landroid/widget/TextView;

.field protected af:[Landroid/widget/TextView;

.field protected ag:[Landroid/widget/TextView;

.field protected ah:[Landroid/view/View;

.field protected ai:[Landroid/widget/ImageView;

.field protected b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isToMessage"    # Z

    .prologue
    const/4 v1, 0x3

    .line 53
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ldaw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 46
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Ldaw;->ae:[Landroid/widget/TextView;

    .line 47
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Ldaw;->af:[Landroid/widget/TextView;

    .line 48
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Ldaw;->ag:[Landroid/widget/TextView;

    .line 49
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Ldaw;->ah:[Landroid/view/View;

    .line 50
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    .line 54
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldaw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 55
    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    sget v0, Lctk$f;->chatting_resume_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Ldaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 143
    sget v0, Lctk$f;->chatting_resume_certification_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldaw;->S:Landroid/widget/ImageView;

    .line 144
    sget v0, Lctk$f;->chatting_tv_resume_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldaw;->Y:Landroid/widget/TextView;

    .line 145
    sget v0, Lctk$f;->chatting_tv_resume_name_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ldaw;->Z:Landroid/widget/FrameLayout;

    .line 146
    sget v0, Lctk$f;->chatting_resume_video_tip:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldaw;->aa:Landroid/view/View;

    .line 147
    sget v0, Lctk$f;->chatting_tv_resume_major:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldaw;->ab:Landroid/widget/TextView;

    .line 149
    sget v0, Lctk$f;->tv_resume_desire:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldaw;->ac:Landroid/widget/TextView;

    .line 151
    sget v0, Lctk$f;->chatting_resume_record_info1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldaw;->ad:Landroid/view/View;

    .line 152
    iget-object v1, p0, Ldaw;->ae:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_enterprise1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 153
    iget-object v1, p0, Ldaw;->af:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_job1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 154
    iget-object v1, p0, Ldaw;->ag:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_time1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 155
    iget-object v0, p0, Ldaw;->ah:[Landroid/view/View;

    sget v1, Lctk$f;->chatting_resume_record1:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 156
    iget-object v1, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    sget v0, Lctk$f;->chatting_resume_img1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 158
    iget-object v1, p0, Ldaw;->ae:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_enterprise2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 159
    iget-object v1, p0, Ldaw;->af:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_job2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 160
    iget-object v1, p0, Ldaw;->ag:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_time2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 161
    iget-object v0, p0, Ldaw;->ah:[Landroid/view/View;

    sget v1, Lctk$f;->chatting_resume_record2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 162
    iget-object v1, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    sget v0, Lctk$f;->chatting_resume_img2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 164
    iget-object v1, p0, Ldaw;->ae:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_enterprise3:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 165
    iget-object v1, p0, Ldaw;->af:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_job3:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 166
    iget-object v1, p0, Ldaw;->ag:[Landroid/widget/TextView;

    sget v0, Lctk$f;->chatting_tv_resume_time3:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 167
    iget-object v0, p0, Ldaw;->ah:[Landroid/view/View;

    sget v1, Lctk$f;->chatting_resume_record3:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    .line 168
    iget-object v1, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    sget v0, Lctk$f;->chatting_resume_img3:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 170
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    if-eqz v7, :cond_d

    instance-of v7, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v7, :cond_d

    move-object v7, p2

    .line 60
    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v6, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 61
    .local v6, "thirdPartyDo":Ljava/lang/Object;
    instance-of v7, v6, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;

    if-eqz v7, :cond_d

    move-object v5, v6

    .line 62
    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;

    .line 63
    .local v5, "resumeCardDo":Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;
    iget v7, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->isAuthed:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 64
    iget-object v7, p0, Ldaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->resumeName:Ljava/lang/String;

    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->avatar:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v7, p0, Ldaw;->Y:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v7, p0, Ldaw;->Y:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->resumeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, p0, Ldaw;->Z:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    iget v7, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->mediaType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 74
    iget-object v7, p0, Ldaw;->aa:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :goto_1
    iget v7, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->realAuth:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 79
    iget-object v7, p0, Ldaw;->S:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_2
    iget-object v7, p0, Ldaw;->ab:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->major:Ljava/lang/String;

    invoke-static {v7, v8}, Ldaw;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 86
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->desiredJob:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 87
    iget-object v7, p0, Ldaw;->ac:Landroid/widget/TextView;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget v10, Lctk$i;->dt_im_chat_campus_resume_card_desired_job:I

    invoke-virtual {p1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, ": "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v5, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->desiredJob:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ldaw;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;->getTrackRecordList()Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 92
    :cond_1
    iget-object v8, p0, Ldaw;->ah:[Landroid/view/View;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_c

    aget-object v1, v8, v7

    .line 93
    .local v1, "item":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 94
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 69
    .end local v1    # "item":Landroid/view/View;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;>;"
    :cond_3
    iget-object v7, p0, Ldaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v8, Lctk$e;->secret_chat_icon_boss2:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 70
    iget-object v7, p0, Ldaw;->Y:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v7, p0, Ldaw;->Z:Landroid/widget/FrameLayout;

    sget v8, Lctk$e;->chat_safe_model_title:I

    invoke-static {v8}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v7, p0, Ldaw;->aa:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 81
    :cond_5
    iget-object v7, p0, Ldaw;->S:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 98
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 99
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v7, 0x3

    if-ge v0, v7, :cond_b

    .line 100
    if-ge v0, v2, :cond_a

    .line 101
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;

    .line 102
    .local v4, "record":Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;
    if-eqz v4, :cond_7

    .line 103
    iget-object v7, p0, Ldaw;->ah:[Landroid/view/View;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v7, p0, Ldaw;->ae:[Landroid/widget/TextView;

    aget-object v8, v7, v0

    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;->enterpriseName:Ljava/lang/String;

    if-nez v7, :cond_8

    const-string/jumbo v7, ""

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v7, p0, Ldaw;->ag:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    iget-object v8, v4, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;->timeDesc:Ljava/lang/String;

    invoke-static {v7, v8}, Ldaw;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 106
    iget-object v7, p0, Ldaw;->af:[Landroid/widget/TextView;

    aget-object v8, v7, v0

    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;->job:Ljava/lang/String;

    if-nez v7, :cond_9

    const-string/jumbo v7, ""

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .end local v4    # "record":Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;
    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 104
    .restart local v4    # "record":Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;
    :cond_8
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;->enterpriseName:Ljava/lang/String;

    goto :goto_5

    .line 106
    :cond_9
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;->job:Ljava/lang/String;

    goto :goto_6

    .line 109
    .end local v4    # "record":Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;
    :cond_a
    iget-object v7, p0, Ldaw;->ah:[Landroid/view/View;

    aget-object v7, v7, v0

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 1195
    :cond_b
    if-lez v2, :cond_c

    const/4 v7, 0x3

    if-le v2, v7, :cond_e

    .line 115
    .end local v0    # "i":I
    .end local v2    # "len":I
    :cond_c
    :goto_8
    iget-object v7, p0, Ldaw;->r:Landroid/view/View;

    new-instance v8, Ldaw$1;

    invoke-direct {v8, p0, v5}, Ldaw$1;-><init>(Ldaw;Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v7, p0, Ldaw;->r:Landroid/view/View;

    new-instance v8, Ldaw$2;

    invoke-direct {v8, p0}, Ldaw$2;-><init>(Ldaw;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;>;"
    .end local v5    # "resumeCardDo":Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;
    .end local v6    # "thirdPartyDo":Ljava/lang/Object;
    :cond_d
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    .line 130
    return-void

    .line 1198
    .restart local v0    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo$TrackRecord;>;"
    .restart local v5    # "resumeCardDo":Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;
    .restart local v6    # "thirdPartyDo":Ljava/lang/Object;
    :cond_e
    const/4 v7, 0x1

    if-ne v2, v7, :cond_f

    .line 1199
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1201
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1202
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1203
    iget-object v7, p0, Ldaw;->ad:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1204
    const/16 v8, 0x9

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1205
    iget-object v8, p0, Ldaw;->ad:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 1206
    :cond_f
    const/4 v7, 0x2

    if-ne v2, v7, :cond_10

    .line 1207
    iget-object v7, p0, Ldaw;->ad:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1208
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1209
    iget-object v8, p0, Ldaw;->ad:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1211
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1212
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget v8, Lctk$e;->resume_prefix_start:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1213
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget v8, Lctk$e;->resume_prefix_end:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1214
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1216
    :cond_10
    iget-object v7, p0, Ldaw;->ad:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1217
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1218
    iget-object v8, p0, Ldaw;->ad:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1220
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1221
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1222
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget v8, Lctk$e;->resume_prefix_start:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1223
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget v8, Lctk$e;->resume_prefix_middle:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1224
    iget-object v7, p0, Ldaw;->ai:[Landroid/widget/ImageView;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    sget v8, Lctk$e;->resume_prefix_end:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget v0, Lctk$i;->dt_im_message_linkcard_nourl_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldaw;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget v0, Lctk$i;->dt_accessibility_conversation_send_link:I

    invoke-static {v0}, Ldaw;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
