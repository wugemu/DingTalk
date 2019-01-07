.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V
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
    .line 432
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    const-string/jumbo v4, "reportPageSuccess"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    :try_start_0
    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "isBlank"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 439
    .local v1, "isBlank":Z
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    move-result-object v2

    .line 440
    .local v2, "manager":Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;ZLjava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->checkUrlStatus(Ljava/lang/String;Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v1    # "isBlank":Z
    .end local v2    # "manager":Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v4, ""

    return-object v4

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
