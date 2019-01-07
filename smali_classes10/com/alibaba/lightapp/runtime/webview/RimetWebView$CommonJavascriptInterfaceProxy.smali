.class Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommonJavascriptInterfaceProxy"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field private b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;)V
    .locals 1
    .param p2, "r"    # Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;

    .prologue
    .line 2417
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;

    .line 2418
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;

    .line 2419
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "jsonObj"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2424
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2432
    const-string/jumbo v0, ""

    return-object v0
.end method
