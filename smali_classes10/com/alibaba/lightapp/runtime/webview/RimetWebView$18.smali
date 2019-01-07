.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$18;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$18;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 824
    const-string/jumbo v3, "getAccount"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    :try_start_0
    const-string/jumbo v3, "key"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$18;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->c(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->getAccount(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 840
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 840
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    const-string/jumbo v3, ""

    goto :goto_0

    .line 831
    :cond_1
    const-string/jumbo v3, "setAccount"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    :try_start_1
    const-string/jumbo v3, "key"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    .restart local v2    # "key":Ljava/lang/String;
    const-string/jumbo v3, "json"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "json":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$18;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->c(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->setAccount(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 836
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 837
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
