.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniPagePlugin;
.super Lipd;
.source "MiniPagePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 23
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 25
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "h5PageLoadUrl"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v1

    .line 27
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    .line 29
    .local v3, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    if-eqz v3, :cond_0

    .line 30
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v2

    .line 31
    .local v2, "type":Lcom/alipay/mobile/nebula/webview/WebViewType;
    const-string/jumbo v6, "MiniPagePlugin"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "webViewType="

    aput-object v8, v7, v5

    aput-object v2, v7, v4

    .line 2061
    const-string/jumbo v8, "mini_core"

    invoke-static {v8, v6, v7}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-object v6, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v2, v6, :cond_0

    .line 39
    .end local v1    # "h5Page":Liop;
    .end local v2    # "type":Lcom/alipay/mobile/nebula/webview/WebViewType;
    .end local v3    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 18
    const-string/jumbo v0, "h5PageLoadUrl"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 19
    return-void
.end method
