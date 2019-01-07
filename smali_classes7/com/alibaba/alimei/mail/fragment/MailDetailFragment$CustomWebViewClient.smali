.class Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;
.super Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;
.source "MailDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 2162
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2224
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 2229
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->D(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    .line 2231
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Laes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Laes;

    move-result-object v0

    .line 3136
    iget-boolean v1, v0, Laes;->a:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    .line 2235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Laep;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2236
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Laep;

    move-result-object v0

    .line 4049
    iget-boolean v0, v0, Laep;->a:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_4

    .line 4050
    :cond_1
    :goto_1
    return-void

    .line 3138
    :cond_2
    iget-object v1, v0, Laes;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Laes;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3139
    iget-object v1, v0, Laes;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Laes;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3140
    iget-object v1, v0, Laes;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Laes;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3142
    const-string/jumbo v2, "javascript:setClientId(\"%s\")"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3164
    const-wide/16 v0, -0x1

    .line 3165
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    .line 3166
    if-eqz v5, :cond_3

    .line 3167
    iget-wide v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 3170
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3142
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 4053
    :cond_4
    const-string/jumbo v0, "javascript:replaceCainiaoURLToIframe()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 2165
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v6}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 2219
    :cond_1
    :goto_0
    return v4

    .line 2170
    :cond_2
    const-string/jumbo v5, "samsungapps://ProductDetail/com.cainiao.wireless"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2175
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2177
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 2179
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "file"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2180
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->l(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Ljava/lang/String;

    move-result-object v2

    .line 2181
    .local v2, "serverId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2182
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v5

    iget-object v2, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    .line 2184
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Ljava/lang/String;

    move-result-object v5

    .line 2560
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2561
    const-string/jumbo v7, "clickTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2562
    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2563
    const-string/jumbo v7, "operator"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2564
    const-string/jumbo v5, "mailId"

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2565
    const-string/jumbo v5, "openWebUrl"

    invoke-static {v5, v6}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2187
    .end local v2    # "serverId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "file"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2189
    const-string/jumbo v5, "tel"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2191
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v11, :cond_5

    .line 2192
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "dingtalk://dingtalkclient/page/chooseCallType?targetNumber="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2193
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v6}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2200
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 2195
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DIAL"

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2196
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2201
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v5, "mailto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2203
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3, v10}, Lacg;->a(Landroid/content/Context;Landroid/net/Uri;Lcma;)V

    goto/16 :goto_0

    .line 2211
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v6}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v10}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
