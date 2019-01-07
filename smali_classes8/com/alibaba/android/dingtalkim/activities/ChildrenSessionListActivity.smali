.class public Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChildrenSessionListActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onAttachedToWindow()V

    .line 95
    const-string/jumbo v2, "first_enter_this_page"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "resource"

    sget v3, Lctk$e;->parent_conversation_guide:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v2, "title"

    sget v3, Lctk$i;->parent_conversation_guide_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v2, "content"

    sget v3, Lctk$i;->parent_conversation_guide_content:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    sget v3, Lctk$i;->guide_more:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1083
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    sget v3, Lctk$i;->guide_text_i_know_that:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2079
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)V

    .line 2095
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 113
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)V

    .line 3091
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 120
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 121
    const-string/jumbo v2, "first_enter_this_page"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 123
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v1, Lctk$g;->activity_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "p_conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1028
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "p_conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lctk$f;->root_view:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 71
    sget v1, Lctk$i;->act_title_conference:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 72
    .local v0, "menuSetting":Landroid/view/MenuItem;
    sget v1, Lctk$e;->menu_overflow:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 73
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/parent_conversation_setting.html"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
