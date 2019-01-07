.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;
.super Ljava/lang/Object;
.source "DDWXRimetWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->postMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

.field final synthetic val$msg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->val$msg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v3

    .line 167
    .local v3, "webView":Lcom/uc/webview/export/WebView;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;

    if-eqz v4, :cond_1

    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->val$msg:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 172
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->val$msg:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_2

    .line 173
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->val$msg:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    :goto_0
    const-string/jumbo v4, "message"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_1
    check-cast v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .end local v3    # "webView":Lcom/uc/webview/export/WebView;
    const-string/jumbo v4, "wxNotify"

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 189
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 175
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v3    # "webView":Lcom/uc/webview/export/WebView;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->val$msg:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_3

    .line 176
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->val$msg:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .local v2, "message":Lorg/json/JSONArray;
    goto :goto_0

    .line 179
    .end local v2    # "message":Lorg/json/JSONArray;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;->val$msg:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .local v2, "message":Ljava/lang/Object;
    goto :goto_0

    .line 182
    .end local v2    # "message":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
