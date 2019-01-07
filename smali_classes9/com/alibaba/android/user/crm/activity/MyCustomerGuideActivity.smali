.class public Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MyCustomerGuideActivity.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:J

.field private c:J

.field private d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 83
    new-instance v0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method private b()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 250
    :try_start_0
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 251
    .local v1, "lightAppInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createWebViewWrapper(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 253
    sget v4, Lezg$h;->ll_webview:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 254
    .local v3, "view":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 257
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :cond_0
    :goto_0
    :try_start_2
    sget v4, Lezg$h;->progress_webview:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 264
    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 265
    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    sget v7, Lezg$e;->swipe_refresh_color1:I

    aput v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lezg$e;->swipe_refresh_color2:I

    aput v7, v5, v6

    const/4 v6, 0x2

    sget v7, Lezg$e;->swipe_refresh_color1:I

    aput v7, v5, v6

    const/4 v6, 0x3

    sget v7, Lezg$e;->swipe_refresh_color2:I

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 266
    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v5, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$2;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 281
    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    const-string/jumbo v5, "https://tms.dingtalk.com/markets/dingtalk/crmintro"

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 282
    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v2

    .line 283
    .local v2, "settings":Lcom/uc/webview/export/WebSettings;
    if-eqz v2, :cond_1

    .line 284
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 285
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "language/"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 286
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 291
    .end local v1    # "lightAppInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .end local v2    # "settings":Lcom/uc/webview/export/WebSettings;
    .end local v3    # "view":Landroid/widget/LinearLayout;
    :cond_1
    :goto_1
    return-void

    .line 258
    .restart local v1    # "lightAppInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .restart local v3    # "view":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "lightAppInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .end local v3    # "view":Landroid/widget/LinearLayout;
    :catch_1
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 301
    .local v0, "vid":I
    sget v1, Lezg$h;->btn_next:I

    if-ne v0, v1, :cond_0

    .line 302
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    invoke-virtual {v1, v2, v3}, Lccr;->c(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    const-string/jumbo v1, "IDENTIFIY_MY_CUSTOMER_GUIDE_ACTIVITY"

    .line 1313
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/org_new_contact.html"

    new-instance v4, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$3;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    sget v0, Lezg$j;->customer_my_guide_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->setContentView(I)V

    .line 1205
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1207
    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    .line 1208
    const-string/jumbo v1, "corp_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1209
    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1210
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 1211
    if-eqz v1, :cond_0

    .line 1212
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    .line 1217
    :cond_0
    const-string/jumbo v1, "intent_key_appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1220
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1226
    :goto_0
    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1227
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    const/16 v6, 0x80

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_1

    .line 1229
    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    iput-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->b:J

    .line 1238
    :cond_1
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->a:Landroid/widget/Button;

    .line 1239
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c:J

    invoke-virtual {v0, v2, v3}, Lccr;->c(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->a:Landroid/widget/Button;

    sget v1, Lezg$l;->my_customer_guide_button_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1244
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->b()V

    .line 1294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1295
    const-string/jumbo v1, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 165
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_2
    move-wide v4, v2

    goto :goto_0

    .line 1242
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->a:Landroid/widget/Button;

    sget v1, Lezg$l;->enter_my_customer:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a(Z)V

    .line 190
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 198
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 201
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 202
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onPause()V

    .line 173
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->d:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 181
    :cond_0
    return-void
.end method
