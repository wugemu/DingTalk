.class public Lcom/taobao/weex/ui/component/WXEmbed$FailToH5Listener;
.super Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;
.source "WXEmbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailToH5Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "comp"    # Lcom/taobao/weex/ui/component/NestedContainer;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 86
    if-eqz p2, :cond_0

    instance-of v3, p1, Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "1|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/NestedContainer;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 88
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 90
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    const-string/jumbo v3, "searchBoxJavaBridge_"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v3, "accessibilityTraversal"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    .end local p1    # "comp":Lcom/taobao/weex/ui/component/NestedContainer;
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$000(Lcom/taobao/weex/ui/component/WXEmbed;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "webView":Landroid/webkit/WebView;
    :goto_0
    return-void

    .line 103
    .restart local p1    # "comp":Lcom/taobao/weex/ui/component/NestedContainer;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
