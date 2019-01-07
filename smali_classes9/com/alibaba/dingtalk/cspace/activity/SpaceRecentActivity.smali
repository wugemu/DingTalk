.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceRecentActivity.java"


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->b:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v1, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->setContentView(I)V

    .line 26
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lfzs$h;->org_recent_operation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 30
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lfzs$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 31
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 32
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 36
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->b:I

    sget v2, Lfzs$h;->dt_space_file_feed_setting:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 38
    .local v0, "settingMenu":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v2, Lfzs$h;->icon_setting:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 42
    :cond_0
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentActivity;->b:I

    if-ne v0, v1, :cond_0

    .line 50
    invoke-static {p0}, Lfzu;->a(Landroid/app/Activity;)V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
