.class final Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1$1;
.super Lcom/uc/webview/export/WebChromeClient;
.source "LargeLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;

    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)V

    goto :goto_0
.end method
