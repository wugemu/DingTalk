.class public Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;
.super Landroid/webkit/WebView;
.source "DingSystemWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    const/16 v3, 0x8

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;->setVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;->stopLoading()V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 44
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 46
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 48
    .local v2, "view":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "settings":Landroid/webkit/WebSettings;
    .end local v2    # "view":Landroid/view/ViewGroup;
    :goto_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 56
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
