.class final Lcom/uc/webview/export/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnTouchListener;

.field final synthetic b:Lcom/uc/webview/export/WebView;

.field private c:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/uc/webview/export/b;->b:Lcom/uc/webview/export/WebView;

    iput-object p2, p0, Lcom/uc/webview/export/b;->a:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    iget-object v0, p0, Lcom/uc/webview/export/b;->a:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    .line 1157
    const-string/jumbo v0, "enable_webview_listener_standardization"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalBooleanOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnTouchListener;

    iget-object v1, p0, Lcom/uc/webview/export/b;->b:Lcom/uc/webview/export/WebView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1162
    :goto_0
    return v0

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
