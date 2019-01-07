.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;
.super Lcom/uc/webview/export/WebViewClient;
.source "RimetWebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->setClient(Lhdf$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdf$a;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;Lhdf$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;->a:Lhdf$a;

    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;->a:Lhdf$a;

    invoke-interface {v0, p2}, Lhdf$a;->a(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;->a:Lhdf$a;

    invoke-interface {v0, p1, p2}, Lhdf$a;->a(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;->a:Lhdf$a;

    invoke-interface {v0, p2}, Lhdf$a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
