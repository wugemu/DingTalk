.class final Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpl.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(I[I)V
    .locals 4
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v3, 0x11101

    .line 92
    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->resizeAndHideKeyboard()V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->onKeyboardConfirm()V

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    const/4 v2, 0x0

    invoke-static {v1, v3, v2, p1}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$100(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;III)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2, p1}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$100(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;III)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 106
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->hideKeyboard()V

    goto :goto_0
.end method

.method public final onPress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 82
    return-void
.end method

.method public final onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 87
    return-void
.end method

.method public final onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    return-void
.end method

.method public final swipeDown()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final swipeLeft()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public final swipeRight()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final swipeUp()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
