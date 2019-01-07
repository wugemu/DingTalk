.class final Lcom/uc/webview/export/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnLongClickListener;

.field final synthetic b:Lcom/uc/webview/export/WebView;

.field private c:Landroid/view/View$OnLongClickListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/uc/webview/export/a;->b:Lcom/uc/webview/export/WebView;

    iput-object p2, p0, Lcom/uc/webview/export/a;->a:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iget-object v0, p0, Lcom/uc/webview/export/a;->a:Landroid/view/View$OnLongClickListener;

    iput-object v0, p0, Lcom/uc/webview/export/a;->c:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/uc/webview/export/a;->c:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 1132
    const-string/jumbo v0, "enable_webview_listener_standardization"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalBooleanOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/uc/webview/export/a;->c:Landroid/view/View$OnLongClickListener;

    iget-object v1, p0, Lcom/uc/webview/export/a;->b:Lcom/uc/webview/export/WebView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 1137
    :goto_0
    return v0

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/a;->c:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 1137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
