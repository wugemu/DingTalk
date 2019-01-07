.class public abstract Lfju;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "BaseEmployViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field protected m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lfju;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfju;

    .prologue
    .line 52
    iget-object v0, p0, Lfju;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 258
    return-void
.end method

.method static synthetic b(Lfju;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfju;

    .prologue
    .line 52
    iget-object v0, p0, Lfju;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iput-object p1, p0, Lfju;->j:Landroid/view/View;

    .line 73
    sget v0, Lezg$h;->tv_contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfju;->k:Landroid/widget/TextView;

    .line 74
    sget v0, Lezg$h;->tv_contact_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfju;->l:Landroid/widget/TextView;

    .line 75
    sget v0, Lezg$h;->user_person_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfju;->n:Landroid/widget/TextView;

    .line 76
    sget v0, Lezg$h;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfju;->o:Landroid/view/View;

    .line 77
    sget v0, Lezg$h;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfju;->p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 78
    sget v0, Lezg$h;->expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfju;->q:Landroid/view/View;

    .line 79
    sget v0, Lezg$h;->tv_contact_admin_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfju;->r:Landroid/widget/TextView;

    .line 80
    sget v0, Lezg$h;->tv_work_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfju;->s:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
    .locals 12
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 90
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 91
    .local v3, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 92
    .local v5, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v5, :cond_8

    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 93
    .local v4, "nick":Ljava/lang/String;
    :goto_0
    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    iput-object v6, p0, Lfju;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 95
    if-eqz v5, :cond_0

    .line 96
    iget-object v6, p0, Lfju;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 97
    iget-object v6, p0, Lfju;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 99
    iget-object v6, p0, Lfju;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 100
    iget-object v6, p0, Lfju;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v7, p0, Lfju;->p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_1
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 104
    if-eqz v3, :cond_7

    .line 105
    iget-object v6, p0, Lfju;->p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .local v0, "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lfju;->o:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 107
    .local v2, "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 108
    iget-object v6, p0, Lfju;->l:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v6, p0, Lfju;->a:Landroid/app/Activity;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 110
    iget-object v6, p0, Lfju;->a:Landroid/app/Activity;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 118
    :goto_2
    iget-object v7, p0, Lfju;->k:Landroid/widget/TextView;

    .line 2203
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v6}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2204
    iput-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 2206
    if-eqz v5, :cond_b

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2207
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v6}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 2208
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 2213
    :cond_2
    :goto_3
    iget-object v8, p0, Lfju;->a:Landroid/app/Activity;

    invoke-static {v8, v6}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v7, p0, Lfju;->p:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .line 2226
    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-object v6, p0, Lfju;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2230
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2231
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 2233
    :goto_4
    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 120
    :cond_3
    iget-object v6, p0, Lfju;->n:Landroid/widget/TextView;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    .line 3079
    invoke-static {v5}, Lfuv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v7

    .line 2238
    if-eqz v7, :cond_e

    iget-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->status:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 2239
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2240
    iget-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->icon:Ljava/lang/String;

    invoke-static {v8}, Lcsy;->a(Ljava/lang/String;)I

    move-result v8

    .line 2241
    if-lez v8, :cond_d

    .line 2242
    iget-object v9, p0, Lfju;->a:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2243
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2247
    :goto_5
    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_6
    iget-boolean v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->hasSubordinate:Z

    if-eqz v6, :cond_f

    .line 122
    iget-object v6, p0, Lfju;->q:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :goto_7
    iget-object v6, p0, Lfju;->s:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 129
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    if-eqz v6, :cond_10

    .line 130
    iget-object v6, p0, Lfju;->s:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v6, p0, Lfju;->a:Landroid/app/Activity;

    iget-object v7, p0, Lfju;->s:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mColor:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lfls;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 133
    iget-object v6, p0, Lfju;->s:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mWorkStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_4
    :goto_8
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 140
    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 141
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    sget v7, Lezg$g;->blue_btn_normal:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    sget v7, Lezg$l;->dt_contact_status_super_admin:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :cond_5
    :goto_9
    const/4 v1, 0x0

    .line 159
    .local v1, "breadNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v6, p0, Lfju;->d:Lfin;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lfju;->d:Lfin;

    instance-of v6, v6, Lfke;

    if-eqz v6, :cond_6

    .line 160
    iget-object v6, p0, Lfju;->d:Lfin;

    check-cast v6, Lfke;

    .line 4115
    iget-object v1, v6, Lfke;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 162
    :cond_6
    if-eqz v1, :cond_16

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v6, v7, :cond_16

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v6, :cond_16

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iget-object v8, p0, Lfju;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_16

    .line 164
    iget-object v6, p0, Lfju;->q:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v6, p0, Lfju;->j:Landroid/view/View;

    sget v7, Lezg$g;->contact_master_node_bg:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 170
    :goto_a
    iget-object v6, p0, Lfju;->q:Landroid/view/View;

    new-instance v7, Lfju$1;

    invoke-direct {v7, p0, v3, p1}, Lfju$1;-><init>(Lfju;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .end local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "breadNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v2    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    invoke-virtual {p0}, Lfju;->c()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_17

    .line 180
    iget-object v6, p0, Lfju;->o:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_b
    return-void

    .line 92
    .end local v4    # "nick":Ljava/lang/String;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_8
    const-string/jumbo v4, ""

    goto/16 :goto_0

    .line 103
    .restart local v4    # "nick":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 112
    .restart local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    iget-object v6, p0, Lfju;->l:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v6, p0, Lfju;->a:Landroid/app/Activity;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 114
    iget-object v6, p0, Lfju;->a:Landroid/app/Activity;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 115
    iget-object v6, p0, Lfju;->l:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, p0, Lfju;->l:Landroid/widget/TextView;

    .line 1221
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 1222
    iget-object v8, p0, Lfju;->a:Landroid/app/Activity;

    invoke-static {v8, v7}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2209
    :cond_b
    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2210
    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v8}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    .line 2211
    const-string/jumbo v8, "%s(%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    iget-object v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 2231
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_c
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    goto/16 :goto_4

    .line 2245
    :cond_d
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 2249
    :cond_e
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 124
    :cond_f
    iget-object v6, p0, Lfju;->q:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 135
    :cond_10
    iget-object v6, p0, Lfju;->s:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 144
    :cond_11
    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    .line 145
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    sget v7, Lezg$g;->blue_btn_normal:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 147
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    sget v7, Lezg$l;->contact_status_admin:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 148
    :cond_12
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->roles:Ljava/util/List;

    .line 3187
    if-eqz v6, :cond_14

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 3188
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 3189
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v8, 0x64

    if-ne v6, v8, :cond_13

    .line 3190
    const/4 v6, 0x1

    .line 148
    :goto_c
    if-eqz v6, :cond_15

    .line 149
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    sget v7, Lezg$g;->yellow_btn_normal:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 151
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    sget v7, Lezg$l;->role_boss:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 3194
    :cond_14
    const/4 v6, 0x0

    goto :goto_c

    .line 153
    :cond_15
    iget-object v6, p0, Lfju;->r:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 167
    .restart local v1    # "breadNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_16
    iget-object v6, p0, Lfju;->j:Landroid/view/View;

    sget v7, Lezg$g;->ui_common_transparent_cell_bg:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_a

    .line 182
    .end local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "breadNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v2    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_17
    iget-object v6, p0, Lfju;->o:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .restart local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_18
    move-object v6, v4

    goto/16 :goto_4
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {p0, p1, p2, p3}, Lfju;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    return-object v0
.end method
