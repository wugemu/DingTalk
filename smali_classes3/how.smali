.class public final Lhow;
.super Ljava/lang/Object;
.source "RuntimeNavigatorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lhom;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object p0

    .line 35
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v8

    sget v9, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v8, v9, :cond_2

    const-string/jumbo v8, "CONFIG_KEY_APPCENTER_MINI_GRAY"

    const/4 v9, 0x0

    .line 36
    invoke-static {v8, v9}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 38
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "https://h5.dingtalk.com/appcenter/index.html"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 40
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "fragment":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 42
    const-string/jumbo v0, "2018031902409216"

    .line 43
    .local v0, "appCenterMiniAppId":Ljava/lang/String;
    invoke-static {}, Lhlt;->a()Lhlt;

    invoke-static {v0}, Lhlt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "miniAppUrl":Ljava/lang/String;
    const-string/jumbo v8, "corpId"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 46
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, "corpId="

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "query":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 48
    .local v4, "miniappUri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 49
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "query"

    invoke-virtual {v8, v9, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "ddMode"

    const-string/jumbo v10, "push"

    .line 50
    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 55
    .end local v0    # "appCenterMiniAppId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v2    # "fragment":Ljava/lang/String;
    .end local v3    # "miniAppUrl":Ljava/lang/String;
    .end local v4    # "miniappUri":Landroid/net/Uri;
    .end local v5    # "query":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 56
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    if-eqz p1, :cond_2

    .line 71
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v2, "hybrid_enable_handle_url_before_open_web_page"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-static {}, Lhsb;->a()Lhsb;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lhsb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lhow;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lhrf;->a()Z

    move-result v0

    .line 84
    .local v0, "enableRuntimeSingleTask":Z
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 85
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lhow$1;

    invoke-direct {v3, p0, p1, v0}, Lhow$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;Z)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 92
    :cond_3
    if-eqz v0, :cond_4

    const/high16 v2, 0x10000000

    :goto_1
    invoke-static {p0, p1, v2}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "intentFlag"    # I

    .prologue
    .line 97
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/common_webview.html"

    new-instance v2, Lhow$2;

    invoke-direct {v2, p1, p2, p0}, Lhow$2;-><init>(Landroid/os/Bundle;ILandroid/content/Context;)V

    .line 98
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 114
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5
    .param p0, "fallbackUrl"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "isFallbackForMini":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 129
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "path":Ljava/lang/String;
    const-string/jumbo v4, "/action/open_mini_app"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/action/open_micro_app"

    .line 131
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/action/dev_mini_app"

    .line 132
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    const/4 v1, 0x1

    .line 139
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
