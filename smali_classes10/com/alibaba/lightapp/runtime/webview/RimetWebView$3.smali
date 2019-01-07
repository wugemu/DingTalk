.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;
.super Lcmi;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgtp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 994
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1042
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 1044
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 1045
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 1048
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1023
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1024
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "7"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string/jumbo v2, "error_desc"

    const-string/jumbo v3, "white_domain_download_error"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgvi;->warn(Ljava/util/Map;)V

    .line 1028
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1029
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "net_type"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string/jumbo v2, "error_code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string/jumbo v2, "isbackup"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "RimetWebView"

    const-string/jumbo v4, "webview"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1037
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 994
    check-cast p1, Lgtp;

    .line 1998
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->d(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2002
    const-string/jumbo v1, "safe"

    iget-object v2, p1, Lgtp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2004
    sget-object v1, Lhru;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2005
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 2013
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    const-string/jumbo v1, "normal"

    iget-object v2, p1, Lgtp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2009
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2010
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 2012
    :cond_2
    const-string/jumbo v1, "danger"

    iget-object v2, p1, Lgtp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2013
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p1, Lgtp;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2014
    :cond_3
    const-string/jumbo v1, "harm"

    iget-object v2, p1, Lgtp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2015
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->f(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2016
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p1, Lgtp;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->f(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    goto :goto_0
.end method
