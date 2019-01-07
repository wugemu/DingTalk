.class final Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;
.super Landroid/widget/BaseAdapter;
.source "JoinOrgInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 103
    if-nez p2, :cond_2

    .line 104
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    sget v4, Lezg$j;->item_join_org_invitation:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;

    invoke-direct {v0, v8}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;-><init>(B)V

    .line 106
    .local v0, "holder":Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;
    sget v3, Lezg$h;->avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 107
    sget v3, Lezg$h;->nick_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->b:Landroid/widget/TextView;

    .line 108
    sget v3, Lezg$h;->org_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->c:Landroid/widget/TextView;

    .line 109
    sget v3, Lezg$h;->accept:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->d:Landroid/view/View;

    .line 110
    sget v3, Lezg$h;->accepted:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->e:Landroid/view/View;

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 116
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    if-eqz v1, :cond_1

    .line 117
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 118
    .local v2, "userProfileModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    .line 119
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->b:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x1

    const-string/jumbo v6, " "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    sget v7, Lezg$l;->dt_contact_privacy_joinTeam_inviteYou:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_0
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->c:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v3, v4, :cond_3

    .line 130
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->d:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->d:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$2;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$2;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->e:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .end local v2    # "userProfileModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    :goto_1
    return-object p2

    .line 113
    .end local v0    # "holder":Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;

    .restart local v0    # "holder":Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;
    goto :goto_0

    .line 139
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .restart local v2    # "userProfileModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->d:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;->e:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
