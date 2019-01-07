.class public final Lgvx;
.super Lgvu;
.source "RefreshWebViewUnit.java"


# instance fields
.field private a:Lcom/uc/webview/export/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 18
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lgwa;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 19
    iput-object p2, p0, Lgvx;->a:Lcom/uc/webview/export/WebView;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lgvx;->a:Lcom/uc/webview/export/WebView;

    .line 38
    return-void
.end method

.method public final share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 3
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 29
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const-string/jumbo v2, "[RefreshWebViewUnit] share clicked"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lgvx;->a:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lgvx;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->reload()V

    .line 33
    :cond_0
    return-void
.end method
