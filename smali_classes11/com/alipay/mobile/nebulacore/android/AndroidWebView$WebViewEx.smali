.class final Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;
.super Landroid/webkit/WebView;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/android/AndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WebViewEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .line 505
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 506
    const-string/jumbo v0, "H5WebView"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->setTag(Ljava/lang/Object;)V

    .line 507
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 525
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->access$000(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->access$000(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onDetachedFromWindow()V

    .line 529
    :cond_0
    return-void
.end method

.method protected final onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->access$100(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->access$100(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    move-result-object v0

    sub-int v1, p1, p3

    sub-int v2, p2, p4

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;->onScroll(II)V

    .line 539
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0
.end method

.method protected final overScrollBy(IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 514
    if-gez p2, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->access$000(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->access$000(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->overScrollBy(IIII)Z

    move-result v0

    .line 517
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0
.end method
