.class public Lcom/alibaba/android/ding/activity/DingDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingDetailActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingDetailActivity;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingDetailActivity;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b()Z

    move-result v0

    .line 41
    .local v0, "hasBeenConsumed":Z
    if-eqz v0, :cond_0

    .line 46
    .end local v0    # "hasBeenConsumed":Z
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Laxp$g;->ding_activity_ding_detail_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->setContentView(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Landroid/content/Intent;)Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingDetailActivity;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Laxp$f;->root_view:I

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingDetailActivity;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1063
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 25
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    invoke-static {p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Landroid/content/Intent;)Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingDetailActivity;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Laxp$f;->root_view:I

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingDetailActivity;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 35
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingDetailActivity;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b()Z

    move-result v0

    .line 52
    .local v0, "hasBeenConsumed":Z
    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 56
    .end local v0    # "hasBeenConsumed":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
