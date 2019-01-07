.class final Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

.field private b:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeyboard()Landroid/view/View;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method public final isKeyboardShown()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onHide()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 149
    .local v0, "visibility":I
    if-nez v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 152
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final onRelease()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    if-nez v1, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 52
    :goto_0
    return v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 48
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    .line 52
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 57
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    if-nez v5, :cond_0

    .line 58
    new-instance v1, Landroid/inputmethodservice/Keyboard;

    sget v5, Lcom/alipay/mobile/nebulauc/R$xml;->h5_input_num:I

    invoke-direct {v1, p1, v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 59
    .local v1, "numKeyboard":Landroid/inputmethodservice/Keyboard;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v5, Lcom/alipay/mobile/nebulauc/R$layout;->h5_keyboard:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 65
    const/16 v5, 0x51

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3

    .line 67
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget v5, Lcom/alipay/mobile/nebulauc/R$id;->keyboard_view:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/KeyboardView;

    iput-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    .line 75
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 76
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v9}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 77
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v7}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 78
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    new-instance v6, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;

    invoke-direct {v6, p0, p2}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    invoke-virtual {v5, v6}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 135
    .end local v0    # "inflate":Landroid/view/LayoutInflater;
    .end local v1    # "numKeyboard":Landroid/inputmethodservice/Keyboard;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v4

    .line 136
    .local v4, "visibility":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 137
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v7}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 140
    :cond_2
    return v9

    .line 69
    .end local v4    # "visibility":I
    .restart local v0    # "inflate":Landroid/view/LayoutInflater;
    .restart local v1    # "numKeyboard":Landroid/inputmethodservice/Keyboard;
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
