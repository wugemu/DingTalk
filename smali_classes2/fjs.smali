.class public final Lfjs;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "ManageEmployViewHolder.java"


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
.field public j:Landroid/view/View;

.field public k:Landroid/widget/ImageView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    sget v0, Lezg$h;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfjs;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 70
    sget v0, Lezg$h;->tv_contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjs;->m:Landroid/widget/TextView;

    .line 71
    sget v0, Lezg$h;->tv_contact_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjs;->n:Landroid/widget/TextView;

    .line 72
    sget v0, Lezg$h;->tv_manager_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjs;->o:Landroid/widget/TextView;

    .line 73
    sget v0, Lezg$h;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfjs;->j:Landroid/view/View;

    .line 74
    sget v0, Lezg$h;->expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfjs;->k:Landroid/widget/ImageView;

    .line 75
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1119
    const/4 v0, 0x0

    .line 1120
    iget-object v1, p0, Lfjs;->d:Lfin;

    instance-of v1, v1, Lfjt;

    if-eqz v1, :cond_0

    .line 1121
    iget-object v0, p0, Lfjs;->d:Lfin;

    check-cast v0, Lfjt;

    iget-boolean v0, v0, Lfjt;->f:Z

    .line 1123
    :cond_0
    if-nez v0, :cond_2

    .line 1124
    sget v0, Lezg$l;->no_permission_edit_dept:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1125
    :cond_1
    :goto_0
    return-void

    .line 1127
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v0, :cond_1

    .line 1128
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfjs;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v2, Lfjs$1;

    invoke-direct {v2, p0, p1}, Lfjs$1;-><init>(Lfjs;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/high16 v8, 0x41900000    # 18.0f

    .line 49
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2079
    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 2080
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2081
    if-eqz v6, :cond_3

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object v2, v0

    .line 2083
    :goto_0
    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 2085
    if-eqz v6, :cond_0

    .line 2086
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 2087
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2089
    if-eqz v5, :cond_0

    .line 2090
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 2091
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 2095
    :cond_0
    if-eqz v5, :cond_2

    .line 2096
    iget-object v0, p0, Lfjs;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2097
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2098
    iget-object v1, p0, Lfjs;->j:Landroid/view/View;

    .line 2099
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2100
    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2101
    iget-object v7, p0, Lfjs;->n:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2102
    iget-object v7, p0, Lfjs;->a:Landroid/app/Activity;

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2103
    iget-object v0, p0, Lfjs;->a:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2110
    :goto_1
    iget-object v7, p0, Lfjs;->m:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 3163
    :goto_2
    if-eqz v7, :cond_1

    .line 3164
    const-string/jumbo v1, ""

    .line 3166
    if-eqz v5, :cond_a

    .line 3168
    iget-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 3170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3177
    :goto_3
    iget-object v1, p0, Lfjs;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2112
    :cond_1
    iget-object v1, p0, Lfjs;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .line 3192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3193
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 3195
    :goto_4
    iget-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 2113
    iget-object v1, p0, Lfjs;->o:Landroid/widget/TextView;

    iget-boolean v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->isDeptManager:Z

    if-eqz v0, :cond_8

    move v0, v3

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_2
    return-void

    .line 2081
    :cond_3
    const-string/jumbo v0, ""

    move-object v2, v0

    goto/16 :goto_0

    .line 2105
    :cond_4
    iget-object v7, p0, Lfjs;->n:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2106
    iget-object v7, p0, Lfjs;->a:Landroid/app/Activity;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2107
    iget-object v0, p0, Lfjs;->a:Landroid/app/Activity;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v0, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2108
    iget-object v0, p0, Lfjs;->n:Landroid/widget/TextView;

    .line 2186
    iget-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 2187
    iget-object v7, p0, Lfjs;->a:Landroid/app/Activity;

    invoke-static {v7, v1}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2110
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_2

    .line 3172
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3173
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    goto :goto_3

    .line 3193
    :cond_7
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move v0, v4

    .line 2113
    goto :goto_5

    :cond_9
    move-object v0, v2

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto :goto_3
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lezg$j;->item_editor_contact:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 148
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    return-object v0
.end method
