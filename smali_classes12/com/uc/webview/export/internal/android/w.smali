.class final Lcom/uc/webview/export/internal/android/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/v;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/v;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/w;->a:Lcom/uc/webview/export/internal/android/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {}, Lcom/uc/webview/export/internal/android/v;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 27
    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 33
    :goto_0
    if-nez v0, :cond_2

    .line 34
    invoke-static {}, Lcom/uc/webview/export/internal/android/v;->b()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 36
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_1

    .line 37
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "WebViewDetector:onPause"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->saveData()V

    .line 40
    invoke-static {}, Lcom/uc/webview/export/internal/android/v;->c()I

    .line 43
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method
