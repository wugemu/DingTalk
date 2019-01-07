.class public Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "NoLoginWebViewActivity.java"


# instance fields
.field private a:Lhdf;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v5, Lezg$j;->activity_no_login_webview:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 48
    const-string/jumbo v5, "url"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v5

    const-class v6, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v5, v6}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 53
    .local v1, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    .line 54
    sget v5, Lezg$h;->wv_privacy:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 55
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    invoke-interface {v5}, Lhdf;->getView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    sget v5, Lezg$h;->progress_indicator_privacy:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 58
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 59
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v6, 0x4

    new-array v6, v6, [I

    sget v7, Lezg$e;->swipe_refresh_color1:I

    aput v7, v6, v8

    const/4 v7, 0x1

    sget v8, Lezg$e;->swipe_refresh_color2:I

    aput v8, v6, v7

    const/4 v7, 0x2

    sget v8, Lezg$e;->swipe_refresh_color1:I

    aput v8, v6, v7

    const/4 v7, 0x3

    sget v8, Lezg$e;->swipe_refresh_color2:I

    aput v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 61
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    new-instance v6, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;)V

    invoke-interface {v5, v6}, Lhdf;->setClient(Lhdf$a;)V

    .line 78
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    invoke-interface {v5, v4}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 86
    .end local v1    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 81
    .restart local v1    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .restart local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->finish()V

    goto :goto_0

    .line 84
    .end local v1    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleDestroy()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handlePause()V

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 105
    :cond_0
    return-void
.end method
