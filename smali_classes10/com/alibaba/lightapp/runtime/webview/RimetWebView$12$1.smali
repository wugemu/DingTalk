.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;->invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->a:Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 460
    return-void
.end method

.method public final onSuccess(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V
    .locals 8
    .param p1, "urlStatus"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 443
    iget-boolean v0, p1, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->status:Z

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->a:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 447
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "appId"

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->b:Ljava/lang/String;

    const-string/jumbo v3, "BLANKPAGE"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V

    .line 449
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lgvi;->openWebViewBlankWarn(Ljava/lang/String;Z)V

    .line 452
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v1, "BlankPage"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12$1;->a:Z

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method
