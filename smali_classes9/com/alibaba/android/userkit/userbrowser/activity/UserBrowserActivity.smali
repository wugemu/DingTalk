.class public Lcom/alibaba/android/userkit/userbrowser/activity/UserBrowserActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "UserBrowserActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

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
    .line 38
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lfxs$b;->user_kit_browser_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/userkit/userbrowser/activity/UserBrowserActivity;->setContentView(I)V

    .line 1046
    invoke-virtual {p0}, Lcom/alibaba/android/userkit/userbrowser/activity/UserBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1048
    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1049
    new-instance v1, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;

    invoke-direct {v1}, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/userkit/userbrowser/activity/UserBrowserActivity;->a:Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;

    .line 1050
    iget-object v1, p0, Lcom/alibaba/android/userkit/userbrowser/activity/UserBrowserActivity;->a:Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/android/userkit/userbrowser/activity/UserBrowserActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1053
    sget v1, Lfxs$a;->ll_content:I

    iget-object v2, p0, Lcom/alibaba/android/userkit/userbrowser/activity/UserBrowserActivity;->a:Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1054
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 42
    return-void
.end method
