.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lhqz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 1218
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 1142
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "setUidTokenCookie fail"

    aput-object v2, v1, v4

    .line 1734
    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 1144
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "uidTokenCookie"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "setUidTokenCookie===fail==="

    aput-object v3, v2, v4

    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "uidTokenCookie"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 1136
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "uidTokenCookie"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "setUidTokenCookie===success==="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method
