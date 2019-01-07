.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;
.super Lcom/uc/webview/export/WebView;
.source "UCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 1063
    invoke-direct {p0, p2}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;)V

    .line 1064
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .param p2, "x1"    # Landroid/content/Context;

    .prologue
    .line 1060
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final coreOnScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$600(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$600(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    move-result-object v0

    sub-int v1, p1, p3

    sub-int v2, p2, p4

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;->onScroll(II)V

    .line 1092
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->coreOnScrollChanged(IIII)V

    .line 1093
    return-void
.end method

.method public final coreOverScrollBy(IIIIIIIIZ)Z
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
    .line 1070
    if-gez p2, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->overScrollBy(IIII)Z

    move-result v0

    .line 1073
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/uc/webview/export/WebView;->coreOverScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1081
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onDetachedFromWindow()V

    .line 1082
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onDetachedFromWindow()V

    .line 1085
    :cond_0
    return-void
.end method
