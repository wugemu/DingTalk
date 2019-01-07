.class public Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;
.super Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
.source "H5NumInputKeyboardM40.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;


# static fields
.field private static final HIDE_ALL_KEYBOARD:Ljava/lang/String; = "hideAllKeyboard"

.field private static final HIDE_KEYBOARD:Ljava/lang/String; = "hideKeyboard"

.field private static final SET_TYPE:Ljava/lang/String; = "setKeyboardType"

.field private static final TAG:Ljava/lang/String; = "H5NumInputKeyboardM40"


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
    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;-><init>()V

    .line 55
    new-instance v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$1;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 78
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mContext:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->sendBlurToFocusElement()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideCustomKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getKeyboardScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    return-object v0
.end method

.method private displayKeyboard(ILandroid/webkit/ValueCallback;Z)Z
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    const-string/jumbo v5, "H5NumInputKeyboardM40"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "displayKeyboard: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", customKeyboardEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->isNumberInputType(I)Z

    move-result v2

    .line 201
    .local v2, "isNumberInputType":Z
    if-eqz p3, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v4

    .line 203
    .local v1, "hasCustomInputType":Z
    :goto_0
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 204
    const-string/jumbo v4, "H5NumInputKeyboardM40"

    const-string/jumbo v5, "show system keyboard"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->isKeyboardShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    .local v0, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$2;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_1
    return v3

    .end local v1    # "hasCustomInputType":Z
    :cond_1
    move v1, v3

    .line 201
    goto :goto_0

    .line 217
    .restart local v1    # "hasCustomInputType":Z
    :cond_2
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    .line 218
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideSoftInputFromWindow()V

    .line 220
    if-eqz v1, :cond_4

    .line 221
    const-string/jumbo v3, "H5NumInputKeyboardM40"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setKeyboardType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setKeyboardType(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v3, "H5NumInputKeyboardM40"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "displayKeyboard ifUseRandomNumber: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->ifUseRandomNumber:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->ifUseRandomNumber:Z

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setIfUseRandomNumber(Z)V

    .line 225
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->sNeedClearType:Z

    if-eqz v3, :cond_3

    .line 226
    iput-object v8, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 231
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->showCustomKeyboard()V

    move v3, v4

    .line 232
    goto :goto_1

    .line 229
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setKeyboardType(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v2, :cond_0

    .line 277
    const-string/jumbo v2, "H5NumInputKeyboardM40"

    const-string/jumbo v3, "h5InputBoardProvider != null return instance"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 302
    :goto_0
    return-object v2

    .line 280
    :cond_0
    const-string/jumbo v2, "H5NumInputKeyboardM40"

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

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-nez v2, :cond_2

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mFallbackClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mApWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->init(Landroid/content/Context;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 299
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->setOperateListener(Lcom/alipay/mobile/nebula/callback/H5InputOperator;)V

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5NumInputKeyboardM40"

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
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mContext:Landroid/content/Context;

    .line 309
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 312
    :goto_0
    return v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 310
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mContext:Landroid/content/Context;

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
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 322
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 323
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

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
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getKeyboardHeight()I

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
    .line 256
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideCustomKeyboard()Z

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideSoftInputFromWindow()V

    .line 258
    return-void
.end method

.method private hideCustomKeyboard()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->isKeyboardShown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 356
    const/4 v4, 0x0

    .line 378
    :goto_0
    return v4

    .line 359
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->hideKeyboard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_1

    .line 365
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v2, "params":Lorg/json/JSONObject;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 367
    .local v3, "scrRc":Landroid/graphics/Rect;
    const-string/jumbo v4, "keyboard-screen-rect-left"

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 368
    const-string/jumbo v4, "keyboard-screen-rect-top"

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    const-string/jumbo v4, "keyboard-screen-rect-right"

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    const-string/jumbo v4, "keyboard-screen-rect-bottom"

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    const-string/jumbo v4, "H5NumInputKeyboardM40"

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

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mKeyboardCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    .end local v2    # "params":Lorg/json/JSONObject;
    .end local v3    # "scrRc":Landroid/graphics/Rect;
    :cond_1
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "H5NumInputKeyboardM40"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 374
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 375
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "H5NumInputKeyboardM40"

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
    .line 347
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    .line 348
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 349
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 352
    :cond_0
    return-void
.end method

.method private isNumberInputType(I)Z
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 190
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
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    const-string/jumbo v1, "javascript:document.activeElement && document.activeElement.blur()"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method private showCustomKeyboard()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->showKeyboard()V

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->toggleSoftInput()V

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->showCustomKeyboardCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v1, "H5NumInputKeyboardM40"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->toggleSoftInput()V

    goto :goto_0
.end method

.method private showCustomKeyboardCallback()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 414
    return-void
.end method

.method private toggleSoftInput()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 341
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
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
    .line 179
    .local p3, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const-string/jumbo v1, "H5NumInputKeyboardM40"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "inputType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->displaySoftKeyboard(Ljava/lang/String;I)Z

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->isCustomKeyboardEnabled()Z

    move-result v0

    .line 184
    .local v0, "customKeyboardEnabled":Z
    const-string/jumbo v1, "H5NumInputKeyboardM40"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isCustomKeyboardEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p2, p3, v0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->displayKeyboard(ILandroid/webkit/ValueCallback;Z)Z

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

    .line 108
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "hideKeyboard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideSoftInputFromWindow()V

    .line 111
    const-string/jumbo v2, "H5NumInputKeyboardM40"

    const-string/jumbo v3, "hide keyboard"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return v1

    .line 113
    :cond_0
    const-string/jumbo v2, "hideAllKeyboard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->sendBlurToFocusElement()V

    .line 115
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideAllKeyboard()V

    .line 116
    const-string/jumbo v2, "H5NumInputKeyboardM40"

    const-string/jumbo v3, "hide all keyboard"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string/jumbo v2, "setKeyboardType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 119
    const-string/jumbo v3, "type"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebViewKeyBoardType:Ljava/lang/String;

    .line 120
    const-string/jumbo v2, "Y"

    .line 2121
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 120
    const-string/jumbo v4, "randomnumber"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->ifUseRandomNumber:Z

    .line 121
    const-string/jumbo v2, "H5NumInputKeyboardM40"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set keyboard type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mWebViewKeyBoardType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " randomnumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->ifUseRandomNumber:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    const-string/jumbo v2, "hideCustomInputMethod4NativeInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideCustomKeyboard()Z

    goto :goto_0

    .line 127
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
    .line 242
    const-string/jumbo v0, "H5NumInputKeyboardM40"

    const-string/jumbo v1, "hideSoftKeyboard"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideCustomKeyboard()Z

    .line 244
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

    .line 132
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->getH5InputBoardProvider()Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v2

    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 3065
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 136
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "h5PagePhysicalBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    const-string/jumbo v1, "H5NumInputKeyboardM40"

    const-string/jumbo v2, "H5_PAGE_PHYSICAL_BACK hide keyboard"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onBackPressed()V

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->sendBlurToFocusElement()V

    .line 142
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideSoftInputFromWindow()V

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideCustomKeyboard()Z

    move-result v1

    goto :goto_0

    .line 144
    :cond_3
    const-string/jumbo v2, "pushWindow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string/jumbo v2, "H5NumInputKeyboardM40"

    const-string/jumbo v3, "PUSH_WINDOW hide keyboard"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v2, :cond_4

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onPushWindow()V

    .line 149
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->hideAllKeyboard()V

    goto :goto_0
.end method

.method public onFinishComposingText()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 85
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "hideKeyboard"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "hideAllKeyboard"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "setKeyboardType"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "hideCustomInputMethod4NativeInput"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-super {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->onRelease()V

    .line 96
    const-string/jumbo v0, "H5NumInputKeyboardM40"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mContext:Landroid/content/Context;

    .line 98
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->hideKeyboard()V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->onRelease()V

    .line 102
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->mH5InputBoardProvider:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    .line 104
    :cond_0
    return-void
.end method
