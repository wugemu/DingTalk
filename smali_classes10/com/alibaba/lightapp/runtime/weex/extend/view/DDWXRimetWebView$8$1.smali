.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;
.super Ljava/lang/Object;
.source "DDWXRimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

.field final synthetic val$webView:Lcom/uc/webview/export/WebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;Lcom/uc/webview/export/WebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;->val$webView:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v2, "origin"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;->val$webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/PluginManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/PluginManager;

    move-result-object v2

    const-string/jumbo v3, "webNotify"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 288
    :cond_0
    :goto_1
    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    const-string/jumbo v3, "webNotify"

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/util/CommonUtil;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
