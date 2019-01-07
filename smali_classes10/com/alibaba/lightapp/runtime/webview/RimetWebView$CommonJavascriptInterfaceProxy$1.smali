.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;

    .prologue
    .line 2424
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;->invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 2430
    :cond_0
    return-void
.end method
