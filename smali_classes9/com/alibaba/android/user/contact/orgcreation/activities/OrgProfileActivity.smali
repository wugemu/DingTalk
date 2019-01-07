.class public Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;

    .prologue
    .line 25
    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 92
    .local v1, "id":I
    sget v3, Lezg$h;->layout_org:I

    if-ne v1, v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v4, "orgMainPage"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "orgMainPage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 103
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "orgMainPage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lezg$j;->activity_org_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->setContentView(I)V

    .line 1045
    sget v0, Lezg$h;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->a:Landroid/widget/TextView;

    .line 1046
    sget v0, Lezg$h;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1048
    sget v0, Lezg$h;->layout_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1053
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1054
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->finish()V

    .line 42
    :cond_0
    return-void

    .line 1056
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 1079
    const/4 v0, 0x1

    goto :goto_0
.end method
