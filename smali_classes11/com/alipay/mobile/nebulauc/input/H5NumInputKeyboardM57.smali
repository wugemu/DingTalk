.class public Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;
.super Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
.source "H5NumInputKeyboardM57.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;


# static fields
.field private static final HIDE_ALL_KEYBOARD:Ljava/lang/String; = "hideAllKeyboard"

.field private static final HIDE_KEYBOARD:Ljava/lang/String; = "hideKeyboard"

.field private static final SET_TYPE:Ljava/lang/String; = "setKeyboardType"

.field private static final TAG:Ljava/lang/String; = "H5NumInputKeyboardM57"


# instance fields
.field private ifUseRandomNumber:Z

.field private final mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mContext:Landroid/content/Context;

.field private mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

.field private mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

.field private mKeyboardCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Lcom/uc/webview/export/WebView;

.field private mWebViewKeyBoardType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lcom/uc/webview/export/WebView;
    .param p3, "ap"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;-><init>()V

    .line 51
    new-instance v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 74
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getKeyboardScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method private displayKeyboard(ILandroid/webkit/ValueCallback;Z)Z
    .locals 8
    .param p1, "inputType"    # I
    .param p3, "customKeyboardEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    const-string/jumbo v4, "H5NumInputKeyboardM57"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "displayKeyboard: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", customKeyboardEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    .line 204
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->isNumberInputType(I)Z

    move-result v1

    .line 205
    .local v1, "isNumberInputType":Z
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 207
    .local v0, "hasCustomInputType":Z
    :goto_0
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 208
    const-string/jumbo v3, "H5NumInputKeyboardM57"

    const-string/jumbo v4, "show system keyboard"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->isKeyboardShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 229
    :cond_0
    :goto_1
    return v2

    .end local v0    # "hasCustomInputType":Z
    :cond_1
    move v0, v2

    .line 205
    goto :goto_0

    .line 215
    .restart local v0    # "hasCustomInputType":Z
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 217
    if-eqz v0, :cond_4

    .line 218
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setKeyboardType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setKeyboardType(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "displayKeyboard ifUseRandomNumber: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v2

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setIfUseRandomNumber(Z)V

    .line 222
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sNeedClearType:Z

    if-eqz v2, :cond_3

    .line 223
    iput-object v7, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 228
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboard()V

    move v2, v3

    .line 229
    goto :goto_1

    .line 226
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setKeyboardType(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v2, :cond_0

    .line 277
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    const-string/jumbo v3, "h5InputBoardProvider != null return instance"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 302
    :goto_0
    return-object v2

    .line 280
    :cond_0
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    const-string/jumbo v3, "h5InputBoardProvider not set lazy init"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 284
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 287
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-nez v2, :cond_2

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mFallbackClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->init(Landroid/content/Context;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 299
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setOperateListener(Lcom/alipay/mobile/nebula/callback/H5InputOperator;)V

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    const-string/jumbo v3, "new fallback keyboard exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getKeyboardHeight()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x435c0000    # 220.0f

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    .line 309
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 312
    :goto_0
    return v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 310
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0
.end method

.method private getKeyboardScreenRect()Landroid/graphics/Rect;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 318
    .local v2, "location":[I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 319
    .local v1, "localRc":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 320
    .local v0, "frameRc":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 322
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 323
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 325
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    const/16 v3, 0x438

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 327
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getKeyboardHeight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 331
    :goto_0
    return-object v1

    .line 329
    :cond_1
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method private hideAllKeyboard()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 254
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 255
    return-void
.end method

.method private hideCustomKeyboard()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 356
    const-string/jumbo v5, "H5NumInputKeyboardM57"

    const-string/jumbo v6, "hideCustomKeyboard"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->isKeyboardShown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    const-string/jumbo v5, "H5NumInputKeyboardM57"

    const-string/jumbo v6, "!getH5InputBoardProvider().isKeyboardShown()"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return v4

    .line 362
    :cond_0
    :try_start_0
    const-string/jumbo v4, "H5NumInputKeyboardM57"

    const-string/jumbo v5, "getH5InputBoardProvider().hideKeyboard()"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->hideKeyboard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_1

    .line 370
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .local v2, "params":Lorg/json/JSONObject;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 372
    .local v3, "scrRc":Landroid/graphics/Rect;
    const-string/jumbo v4, "keyboard-screen-rect-left"

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    const-string/jumbo v4, "keyboard-screen-rect-top"

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    const-string/jumbo v4, "keyboard-screen-rect-right"

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    const-string/jumbo v4, "keyboard-screen-rect-bottom"

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string/jumbo v4, "CustomKeyBoard"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    const-string/jumbo v4, "H5NumInputKeyboardM57"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rect ltrb = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", CustomKeyBoard: 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    .end local v2    # "params":Lorg/json/JSONObject;
    .end local v3    # "scrRc":Landroid/graphics/Rect;
    :cond_1
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "H5NumInputKeyboardM57"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 380
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 381
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "H5NumInputKeyboardM57"

    const-string/jumbo v5, "hideCustomKeyboard"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private hideSoftInputFromWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    .line 349
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 353
    :cond_0
    return-void
.end method

.method private isNumberInputType(I)Z
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 192
    and-int/lit16 v0, p1, 0x3002

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBlurToFocusElement()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    const-string/jumbo v1, "javascript:document.activeElement && document.activeElement.blur()"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method private showCustomKeyboard()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 258
    const-string/jumbo v1, "H5NumInputKeyboardM57"

    const-string/jumbo v2, "showCustomKeyboard"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->showKeyboard()V

    .line 261
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->toggleSoftInput()V

    .line 263
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v1, "H5NumInputKeyboardM57"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->toggleSoftInput()V

    .line 271
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V

    goto :goto_0
.end method

.method private showCustomKeyboardCallback(Z)V
    .locals 3
    .param p1, "showCustom"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 388
    const-string/jumbo v0, "H5NumInputKeyboardM57"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showCustomKeyboardCallback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_0
    return-void
.end method

.method private toggleSoftInput()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string/jumbo v1, "H5NumInputKeyboardM57"

    const-string/jumbo v2, "toggleSoftInput"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    .line 340
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 342
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method


# virtual methods
.method public displaySoftKeyboard(Ljava/lang/String;ILandroid/webkit/ValueCallback;)Z
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "inputType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    .local p3, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const-string/jumbo v1, "H5NumInputKeyboardM57"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "inputType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->displaySoftKeyboard(Ljava/lang/String;I)Z

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->isCustomKeyboardEnabled()Z

    move-result v0

    .line 186
    .local v0, "customKeyboardEnabled":Z
    const-string/jumbo v1, "H5NumInputKeyboardM57"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isCustomKeyboardEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p2, p3, v0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->displayKeyboard(ILandroid/webkit/ValueCallback;Z)Z

    move-result v1

    return v1
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 106
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "hideKeyboard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 109
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    const-string/jumbo v3, "hide keyboard"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return v1

    .line 111
    :cond_0
    const-string/jumbo v2, "hideAllKeyboard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V

    .line 113
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideAllKeyboard()V

    .line 114
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    const-string/jumbo v3, "hide all keyboard"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    const-string/jumbo v2, "setKeyboardType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 117
    const-string/jumbo v3, "type"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 118
    const-string/jumbo v2, "Y"

    .line 2121
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 118
    const-string/jumbo v4, "randomnumber"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    .line 119
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set keyboard type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " randomnumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->ifUseRandomNumber:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    const-string/jumbo v2, "hideCustomInputMethod4NativeInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    goto :goto_0

    .line 125
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSoftKeyboard()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    const-string/jumbo v0, "H5NumInputKeyboardM57"

    const-string/jumbo v1, "hideSoftKeyboard"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 3065
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "h5PagePhysicalBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    const-string/jumbo v1, "H5NumInputKeyboardM57"

    const-string/jumbo v2, "H5_PAGE_PHYSICAL_BACK hide keyboard"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onBackPressed()V

    .line 139
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideSoftInputFromWindow()V

    .line 141
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z

    move-result v1

    goto :goto_0

    .line 142
    :cond_3
    const-string/jumbo v2, "pushWindow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    const-string/jumbo v3, "PUSH_WINDOW hide keyboard"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onPushWindow()V

    .line 147
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideAllKeyboard()V

    goto :goto_0

    .line 149
    :cond_5
    const-string/jumbo v2, "h5PagePause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string/jumbo v2, "H5NumInputKeyboardM57"

    const-string/jumbo v3, "H5_PAGE_PAUSE hide keyboard"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideAllKeyboard()V

    goto :goto_0
.end method

.method public onFinishComposingText()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 82
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "h5PagePause"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "hideKeyboard"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "hideAllKeyboard"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "setKeyboardType"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "hideCustomInputMethod4NativeInput"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->onRelease()V

    .line 94
    const-string/jumbo v0, "H5NumInputKeyboardM57"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mContext:Landroid/content/Context;

    .line 96
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->hideKeyboard()V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->onRelease()V

    .line 100
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 102
    :cond_0
    return-void
.end method
