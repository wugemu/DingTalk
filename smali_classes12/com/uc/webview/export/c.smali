.class final Lcom/uc/webview/export/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnKeyListener;

.field final synthetic b:Lcom/uc/webview/export/WebView;

.field private c:Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnKeyListener;)V
    .locals 1

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/uc/webview/export/c;->b:Lcom/uc/webview/export/WebView;

    iput-object p2, p0, Lcom/uc/webview/export/c;->a:Landroid/view/View$OnKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iget-object v0, p0, Lcom/uc/webview/export/c;->a:Landroid/view/View$OnKeyListener;

    iput-object v0, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_1

    .line 1211
    const-string/jumbo v0, "enable_webview_listener_standardization"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalBooleanOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnKeyListener;

    iget-object v1, p0, Lcom/uc/webview/export/c;->b:Lcom/uc/webview/export/WebView;

    invoke-interface {v0, v1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1216
    :goto_0
    return v0

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
