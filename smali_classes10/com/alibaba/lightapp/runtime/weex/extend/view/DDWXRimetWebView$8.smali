.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;
.super Ljava/lang/Object;
.source "DDWXRimetWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 256
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    new-instance v4, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$002(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 257
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->addView(Landroid/view/View;)V

    .line 262
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    .line 264
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebViewWrapper()Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebViewWrapper()Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/PluginManager;

    move-result-object v4

    .line 1492
    iget-object v5, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v5, :cond_0

    .line 1493
    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 2177
    if-eq v3, v4, :cond_0

    .line 2178
    iput-object v4, v3, Lcom/alibaba/lightapp/runtime/PluginManager;->i:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v2

    .line 269
    .local v2, "webView":Lcom/uc/webview/export/WebView;
    if-eqz v2, :cond_1

    .line 270
    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;Lcom/uc/webview/export/WebView;)V

    const-string/jumbo v4, "__WEEX_WEB_VIEW_BRIDGE"

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v1

    .line 292
    .local v1, "settings":Lcom/uc/webview/export/WebSettings;
    const-string/jumbo v3, "%1$s %2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "dd/web"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 296
    .end local v1    # "settings":Lcom/uc/webview/export/WebSettings;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a()V

    .line 297
    return-void
.end method
