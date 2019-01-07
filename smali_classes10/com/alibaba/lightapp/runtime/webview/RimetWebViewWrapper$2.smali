.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;
.super Ljava/lang/Object;
.source "RimetWebViewWrapper.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->setOnPageStatusCheckListener(Lhdf$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdf$b;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;Lhdf$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->a:Lhdf$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->a:Lhdf$b;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "url":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->a:Lhdf$b;

    invoke-interface {v1, v0}, Lhdf$b;->a(Ljava/lang/String;)V

    .line 252
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 249
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentUrl"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->a:Lhdf$b;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;->a:Lhdf$b;

    invoke-interface {v0, p1}, Lhdf$b;->a(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method
