.class public Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "UserGuideTaskActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lhdf;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 98
    new-instance v0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    .line 165
    .local v1, "lightAppInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    .line 167
    sget v3, Lezg$h;->ll_webview:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 168
    .local v2, "view":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v3}, Lhdf;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v3}, Lhdf;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v3}, Lhdf;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v3}, Lhdf;->handleCreate()V

    .line 175
    sget v3, Lezg$h;->progress_webview:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 176
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v6, Lezg$e;->swipe_refresh_color1:I

    aput v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lezg$e;->swipe_refresh_color2:I

    aput v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lezg$e;->swipe_refresh_color1:I

    aput v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lezg$e;->swipe_refresh_color2:I

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 181
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)V

    invoke-interface {v3, v4}, Lhdf;->setClient(Lhdf$a;)V

    .line 199
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v3, p1}, Lhdf;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "lightAppInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .end local v2    # "view":Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->goBack()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lezg$j;->activity_user_guide_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->setContentView(I)V

    .line 1070
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1071
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->a:Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->finish()V

    .line 1074
    const/4 v0, 0x0

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    .line 1081
    sget v0, Lezg$h;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->c:Landroid/widget/ImageView;

    .line 1082
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->c:Landroid/widget/ImageView;

    .line 2086
    sget v1, Lezg$e;->ui_common_level1_icon_bg_color:I

    invoke-static {v1}, Lfxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1082
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    sget v0, Lezg$h;->rl_user_guide_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->a(Ljava/lang/String;)V

    .line 2206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2207
    const-string/jumbo v1, "action_im_top_close_new_task_dialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2208
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 66
    :cond_0
    return-void

    .line 1077
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v1}, Lhdf;->handleDestroy()V

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->e:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 145
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 148
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 149
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->handlePause()V

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onPause()V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 130
    :cond_0
    return-void
.end method
