.class public abstract Lcvr;
.super Lctv;
.source "GmicNameCardHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private S:Landroid/widget/TextView;

.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/view/ViewGroup;

.field private a:Landroid/widget/TextView;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/view/ViewGroup;

.field private ad:Landroid/widget/ImageView;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/ImageView;

.field private ah:Lcom/alibaba/doraemon/image/ImageMagician;

.field private ai:I

.field private aj:I

.field private ak:I

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isTo"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 64
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcvr;->ah:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 65
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->im_gmic_company_avator_size:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcvr;->ai:I

    .line 67
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->im_gmic_name_max_width_with_certified:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcvr;->aj:I

    .line 69
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->im_gmic_name_max_width_without_certified:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcvr;->ak:I

    .line 71
    return-void
.end method

.method private static b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 258
    instance-of v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 261
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 262
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    if-eqz v2, :cond_0

    .line 265
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    goto :goto_0
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
    .line 75
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_add_favorite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->a:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->b:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_is_user_certified:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->S:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_user_job_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->Y:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_expand_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcvr;->Z:Landroid/view/ViewGroup;

    .line 81
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_phone_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->aa:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_email:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->ab:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_company_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcvr;->ac:Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->iv_company_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvr;->ad:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_company_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->ae:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->if_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvr;->af:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    sget v1, Lctk$f;->iv_company_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvr;->ag:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcvr;->r:Landroid/view/View;

    new-instance v1, Lcvr$1;

    invoke-direct {v1, p0}, Lcvr$1;-><init>(Lcvr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    iget-object v0, p0, Lcvr;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcvr;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 111
    .line 1116
    invoke-static {p2}, Lcvr;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    move-result-object v9

    .line 1117
    if-eqz v9, :cond_1

    .line 1121
    iget-wide v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->cardUserId:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcvr;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    :goto_0
    iget-object v0, p0, Lcvr;->b:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->isUserCertified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    .line 1130
    iget-object v0, p0, Lcvr;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    iget v1, p0, Lcvr;->aj:I

    if-eq v0, v1, :cond_0

    .line 1131
    iget-object v0, p0, Lcvr;->b:Landroid/widget/TextView;

    iget v1, p0, Lcvr;->aj:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1145
    :cond_0
    :goto_1
    iget-object v1, p0, Lcvr;->S:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->isUserCertified()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcvr;->Y:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->jobTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object v1, p0, Lcvr;->Y:Landroid/widget/TextView;

    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->jobTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1150
    iget-object v0, p0, Lcvr;->Z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1159
    :goto_4
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1160
    iget-object v0, p0, Lcvr;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_5
    return-void

    .line 1124
    :cond_2
    iget-object v0, p0, Lcvr;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v0, p0, Lcvr;->b:Landroid/widget/TextView;

    iget v1, p0, Lcvr;->aj:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 1137
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    .line 1138
    iget-object v0, p0, Lcvr;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    iget v1, p0, Lcvr;->ak:I

    if-eq v0, v1, :cond_0

    .line 1142
    :cond_5
    iget-object v0, p0, Lcvr;->b:Landroid/widget/TextView;

    iget v1, p0, Lcvr;->ak:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    :cond_6
    move v0, v8

    .line 1145
    goto :goto_2

    :cond_7
    move v0, v5

    .line 1147
    goto :goto_3

    .line 1152
    :cond_8
    iget-object v0, p0, Lcvr;->Z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1153
    iget-object v1, p0, Lcvr;->aa:Landroid/widget/TextView;

    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v8

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcvr;->aa:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v1, p0, Lcvr;->ab:Landroid/widget/TextView;

    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v8

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcvr;->ab:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    move v0, v5

    .line 1153
    goto :goto_6

    :cond_a
    move v0, v5

    .line 1155
    goto :goto_7

    .line 1162
    :cond_b
    iget-object v0, p0, Lcvr;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1163
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1164
    iget-object v0, p0, Lcvr;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1184
    :goto_8
    iget-object v0, p0, Lcvr;->ae:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1186
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->isCompCertified()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1187
    iget-object v1, p0, Lcvr;->af:Landroid/widget/TextView;

    sget v2, Lctk$i;->icon_certification_f:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1188
    iget-object v1, p0, Lcvr;->af:Landroid/widget/TextView;

    sget v2, Lctk$c;->ui_common_warming_bg_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1193
    :goto_9
    iget-object v0, p0, Lcvr;->ag:Landroid/widget/ImageView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compCorpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_a
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1166
    :cond_c
    iget-object v0, p0, Lcvr;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1167
    iget-object v2, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compIcon:Ljava/lang/String;

    .line 1168
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compIcon:Ljava/lang/String;

    invoke-static {v0}, Ldjy;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1169
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compIcon:Ljava/lang/String;

    .line 1170
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    .line 1174
    iget v4, p0, Lcvr;->ai:I

    iget v6, p0, Lcvr;->ai:I

    invoke-virtual {v1, v0, v4, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1179
    :cond_d
    :goto_b
    iget-object v0, p0, Lcvr;->ah:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcvr;->ad:Landroid/widget/ImageView;

    const/16 v4, 0x9

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_8

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_b

    .line 1190
    :cond_e
    iget-object v1, p0, Lcvr;->af:Landroid/widget/TextView;

    sget v2, Lctk$i;->icon_nocertification_fill:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1191
    iget-object v1, p0, Lcvr;->af:Landroid/widget/TextView;

    sget v2, Lctk$c;->ui_common_level3_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_f
    move v8, v5

    .line 1193
    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->ll_company_info:I

    if-ne v0, v1, :cond_2

    .line 1250
    iget-object v0, p0, Lcvr;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Lcvr;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    move-result-object v0

    .line 1251
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcvr;->d:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compCorpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2220
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcvr;->d:Landroid/app/Activity;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compCorpId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->compToken:Ljava/lang/String;

    const-string/jumbo v4, "im_gmic_card"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->tv_add_favorite:I

    if-ne v0, v1, :cond_0

    .line 2213
    iget-object v0, p0, Lcvr;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Lcvr;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcvr;->d:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2217
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->cardUserId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 2218
    sget v0, Lctk$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2219
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "[GmicNameCardHolder]addFavorite error,uid <= 0"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2222
    :cond_3
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;-><init>()V

    .line 2223
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;->cardUserId:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;->userId:J

    .line 2224
    const-string/jumbo v0, "IndustryGroup"

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;->source:Ljava/lang/String;

    .line 2225
    invoke-virtual {p0}, Lcvr;->m()V

    .line 2226
    new-instance v0, Lcvr$2;

    invoke-direct {v0, p0}, Lcvr$2;-><init>(Lcvr;)V

    .line 2244
    const-class v2, Lcma;

    iget-object v3, p0, Lcvr;->d:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2245
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;Lcma;)V

    goto :goto_0
.end method
