.class public abstract Lfif;
.super Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
.source "BaseEmployViewHolder.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private k:Landroid/view/View;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;-><init>(Landroid/app/Activity;)V

    .line 64
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    iput-object p1, p0, Lfif;->a:Landroid/view/View;

    .line 69
    sget v0, Lezg$h;->tv_contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfif;->b:Landroid/widget/TextView;

    .line 70
    sget v0, Lezg$h;->tv_contact_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfif;->c:Landroid/widget/TextView;

    .line 71
    sget v0, Lezg$h;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfif;->k:Landroid/view/View;

    .line 72
    sget v0, Lezg$h;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfif;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 73
    sget v0, Lezg$h;->expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfif;->m:Landroid/view/View;

    .line 74
    sget v0, Lezg$h;->tv_contact_admin_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfif;->n:Landroid/widget/TextView;

    .line 75
    sget v0, Lezg$h;->tv_work_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfif;->o:Landroid/widget/TextView;

    .line 76
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
    .locals 10
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 176
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 81
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 82
    .local v2, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 83
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v4, :cond_7

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 84
    .local v3, "nick":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    iput-object v5, p0, Lfif;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 86
    if-eqz v4, :cond_1

    .line 87
    iget-object v5, p0, Lfif;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 88
    iget-object v5, p0, Lfif;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 90
    iget-object v5, p0, Lfif;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 91
    iget-object v5, p0, Lfif;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 94
    :cond_1
    if-eqz v2, :cond_6

    .line 95
    iget-object v5, p0, Lfif;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .local v0, "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lfif;->k:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    .local v1, "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 98
    iget-object v5, p0, Lfif;->c:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v5, p0, Lfif;->e:Landroid/app/Activity;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 100
    iget-object v5, p0, Lfif;->e:Landroid/app/Activity;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 108
    :goto_2
    iget-object v6, p0, Lfif;->b:Landroid/widget/TextView;

    .line 2195
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v5}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2196
    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 2198
    if-eqz v4, :cond_9

    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2199
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v5}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 2200
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 2205
    :cond_2
    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v6, p0, Lfif;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .line 2219
    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2220
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 2222
    :goto_4
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 110
    iget-boolean v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->hasSubordinate:Z

    if-eqz v5, :cond_b

    .line 111
    iget-object v5, p0, Lfif;->m:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_3
    :goto_5
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 133
    iget v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    iget v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 135
    :cond_4
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    sget v6, Lezg$g;->blue_btn_normal:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    sget v6, Lezg$l;->contact_status_admin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 148
    :cond_5
    :goto_6
    iget-object v5, p0, Lfif;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lfif;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v5, v6, :cond_13

    iget-object v5, p0, Lfif;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v6, p0, Lfif;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 149
    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    iget-object v6, p0, Lfif;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 150
    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 151
    iget-object v5, p0, Lfif;->m:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v5, p0, Lfif;->a:Landroid/view/View;

    iget-object v6, p0, Lfif;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->contact_master_node_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    :goto_7
    iget-object v5, p0, Lfif;->m:Landroid/view/View;

    new-instance v6, Lfif$1;

    invoke-direct {v6, p0, p1, v2}, Lfif$1;-><init>(Lfif;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .end local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lfif;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_14

    .line 172
    iget-object v5, p0, Lfif;->k:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 83
    .end local v3    # "nick":Ljava/lang/String;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_7
    const-string/jumbo v3, ""

    goto/16 :goto_1

    .line 102
    .restart local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "nick":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lfif;->c:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v5, p0, Lfif;->e:Landroid/app/Activity;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 104
    iget-object v5, p0, Lfif;->e:Landroid/app/Activity;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 105
    iget-object v5, p0, Lfif;->c:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lfif;->c:Landroid/widget/TextView;

    .line 1213
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 1214
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2201
    :cond_9
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2202
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v7}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    .line 2203
    const-string/jumbo v7, "%s(%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 2220
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_a
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    goto/16 :goto_4

    .line 113
    :cond_b
    iget-object v5, p0, Lfif;->m:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v5, p0, Lfif;->o:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 117
    if-eqz v4, :cond_c

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_d

    .line 118
    :cond_c
    iget-object v5, p0, Lfif;->o:Landroid/widget/TextView;

    sget v6, Lezg$l;->contact_status_not_activated:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v5, p0, Lfif;->o:Landroid/widget/TextView;

    iget-object v6, p0, Lfif;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->C6_2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v5, p0, Lfif;->o:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 121
    :cond_d
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    if-eqz v5, :cond_e

    .line 122
    iget-object v5, p0, Lfif;->o:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v5, p0, Lfif;->e:Landroid/app/Activity;

    iget-object v6, p0, Lfif;->o:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mColor:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lfls;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 125
    iget-object v5, p0, Lfif;->o:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mWorkStatus:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 127
    :cond_e
    iget-object v5, p0, Lfif;->o:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 138
    :cond_f
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->roles:Ljava/util/List;

    .line 3179
    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_11

    .line 3180
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3181
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x64

    if-ne v5, v7, :cond_10

    .line 3182
    const/4 v5, 0x1

    .line 138
    :goto_8
    if-eqz v5, :cond_12

    .line 139
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    sget v6, Lezg$g;->yellow_btn_normal:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 141
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    sget v6, Lezg$l;->role_boss:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 3186
    :cond_11
    const/4 v5, 0x0

    goto :goto_8

    .line 143
    :cond_12
    iget-object v5, p0, Lfif;->n:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 154
    :cond_13
    iget-object v5, p0, Lfif;->a:Landroid/view/View;

    sget v6, Lezg$g;->user_water_list_item_selector:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 174
    .end local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    iget-object v5, p0, Lfif;->k:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v0    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_15
    move-object v5, v3

    goto/16 :goto_4
.end method
