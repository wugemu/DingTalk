.class final Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;
.super Lcom/uc/webview/export/WebViewClient;
.source "LargeLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;J)J

    .line 150
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 151
    .local v0, "loadTime":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lbyd;->a(Ljava/lang/String;J)V

    .line 154
    .end local v0    # "loadTime":J
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;)V

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)V

    goto :goto_0
.end method

.method public final onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lbyd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
