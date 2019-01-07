.class public Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;


# instance fields
.field private mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

.field private mActivity:Landroid/app/Activity;

.field private mDefaultImpl:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

.field private mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

.field private mKeyboardMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mDefaultImpl:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;III)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->createKeyEvent(III)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private createKeyEvent(III)Landroid/view/KeyEvent;
    .locals 14
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "keyCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 254
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v4, v2

    move/from16 v6, p2

    move/from16 v7, p3

    move v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v1
.end method


# virtual methods
.method public getKeyboard()Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->getKeyboard()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public hideKeyboard()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->onHide()Z

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .prologue
    .line 168
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 178
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 171
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActivity:Landroid/app/Activity;

    .line 172
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mKeyboardMap:Ljava/util/HashMap;

    .line 176
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mDefaultImpl:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 177
    const-string/jumbo v0, "number"

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mDefaultImpl:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    goto :goto_0
.end method

.method public isKeyboardShown()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->hideKeyboard()V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->onRelease()Z

    .line 246
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mKeyboardMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 248
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActivity:Landroid/app/Activity;

    .line 249
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 250
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mKeyboardMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mKeyboardMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setIfUseRandomNumber(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 211
    return-void
.end method

.method public setKeyboardType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mKeyboardMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mKeyboardMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 202
    .local v0, "newActiveKeyboard":Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eq v0, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->hideKeyboard()V

    .line 205
    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    goto :goto_0
.end method

.method public setOperateListener(Lcom/alipay/mobile/nebula/callback/H5InputOperator;)V
    .locals 0
    .param p1, "operator"    # Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 232
    return-void
.end method

.method public showKeyboard()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z

    goto :goto_0
.end method
