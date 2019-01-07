.class final Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;
.super Ljava/lang/Object;
.source "LargeLiveActivity.java"

# interfaces
.implements Lhdf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;J)J

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/WebView;

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/uc/webview/export/WebView;->setBackgroundColor(I)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method
