.class public Lcom/uc/webview/export/WebViewFragment;
.super Landroid/app/Fragment;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field private a:Lcom/uc/webview/export/WebView;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getWebView()Lcom/uc/webview/export/WebView;
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/uc/webview/export/WebViewFragment;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 49
    :cond_0
    new-instance v0, Lcom/uc/webview/export/WebView;

    invoke-virtual {p0}, Lcom/uc/webview/export/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/WebViewFragment;->b:Z

    .line 51
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 92
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/WebViewFragment;->b:Z

    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 60
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onResume()V

    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 70
    return-void
.end method
