.class public Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
.super Lipd;
.source "H5NativeInputPlugin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;


# static fields
.field private static final HIDE_CUSTOMKEYBOARD:Ljava/lang/String; = "hideCustomKeyBoard"

.field private static final INPUT_BLUREVENT:Ljava/lang/String; = "inputBlurEvent"

.field private static final RESIZE_NATIVEINPUT:Ljava/lang/String; = "resizeNativeKeyBoardInput"

.field private static final TAG:Ljava/lang/String; = "H5NativeInputPlugin"


# instance fields
.field private SPACE_TIME:I

.field private cachedSystemInputHeight:I

.field private canReturn:Z

.field private defaultInputHeight:I

.field private lastClickTime:J

.field private layoutChangeTimes:I

.field private mContext:Landroid/content/Context;

.field private mWebView:Lcom/uc/webview/export/WebView;

.field private nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

.field private nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

.field private scrollOffset:I

.field private tabBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lcom/uc/webview/export/WebView;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lipd;-><init>()V

    .line 49
    const/16 v0, 0x320

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->defaultInputHeight:I

    .line 50
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    .line 51
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->lastClickTime:J

    .line 54
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->SPACE_TIME:I

    .line 57
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->canReturn:Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;FFII)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->execScrollWebContent(FFII)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    return p1
.end method

.method private adjustBaseViewHeight()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 631
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    const-string/jumbo v1, "function adjustBaseViewHeight() {\n    var newembedbase = document.getElementById(\'newembedbase\');\n    if (newembedbase) {\n        if (parseFloat(newembedbase.style.height) == document.body.scrollHeight) {\n            return \'NO\';\n        } else {\n            newembedbase.setAttribute(\'style\', \'z-index:-9999;position:absolute;left:0px;top:0px;width:100%;height:\' + document.body.scrollHeight + \'px\');\n            return \'YES\';\n        }\n    }\n}\nadjustBaseViewHeight();"

    new-instance v2, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 653
    :cond_0
    return-void
.end method

.method private convertRgbStr2Color(Ljava/lang/String;)I
    .locals 6
    .param p1, "rgbStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 552
    .local v0, "length":I
    const/4 v3, 0x4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "subStr":Ljava/lang/String;
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "rgb":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method private dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "keyCode"    # I
    .param p3, "strKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 587
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v1, :cond_0

    .line 588
    const-string/jumbo v1, "H5NativeInputPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchEventWithElement keyCode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", strKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AlipayH5Keyboad && AlipayH5Keyboad.dispatchEventWithElement(window._currentInput,\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 594
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private execScrollWebContent(FFII)V
    .locals 8
    .param p1, "y"    # F
    .param p2, "h"    # F
    .param p3, "scrollY"    # I
    .param p4, "webViewHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 447
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 448
    .local v4, "yy":I
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 449
    .local v0, "hh":I
    add-int v2, v4, v0

    .line 450
    .local v2, "inputPos":I
    sub-int v3, v2, p3

    .line 451
    .local v3, "realPos":I
    sub-int v5, p4, v3

    iget v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    add-int v1, v5, v6

    .line 452
    .local v1, "inputHeight":I
    if-ltz v1, :cond_1

    .line 453
    iget v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-ge v1, v5, :cond_0

    .line 454
    iget v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    .line 455
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    iget v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    invoke-virtual {v5, v7, v6}, Lcom/uc/webview/export/WebView;->scrollBy(II)V

    .line 466
    :goto_0
    return-void

    .line 457
    :cond_0
    iput v7, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    goto :goto_0

    .line 463
    :cond_1
    iput v7, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    goto :goto_0
.end method

.method private getSystemKeyboardHeight()I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 492
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "input_method"

    .line 493
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 494
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 495
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/Class;

    .line 496
    .local v1, "claArrayTypes":[Ljava/lang/Class;
    const-string/jumbo v7, "getInputMethodWindowVisibleHeight"

    invoke-virtual {v2, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 497
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 498
    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    .line 499
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 500
    .local v3, "height":I
    const-string/jumbo v7, "H5NativeInputPlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getInputMethodWindowVisibleHeight "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz v3, :cond_0

    .line 502
    iput v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    .line 516
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "claArrayTypes":[Ljava/lang/Class;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "height":I
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 505
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v1    # "claArrayTypes":[Ljava/lang/Class;
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v3    # "height":I
    .restart local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    iget v7, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-eqz v7, :cond_1

    .line 506
    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    goto :goto_0

    .line 508
    :cond_1
    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->defaultInputHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "claArrayTypes":[Ljava/lang/Class;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "height":I
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    .line 512
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5NativeInputPlugin"

    const-string/jumbo v8, "getSystemKeyboardHeight exception"

    invoke-static {v7, v8, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    iget v7, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-eqz v7, :cond_2

    .line 514
    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    goto :goto_0

    .line 516
    :cond_2
    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->defaultInputHeight:I

    goto :goto_0
.end method

.method private hideCustomKeyboard()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 607
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v1, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v1, "AlipayJSBridge.call(\'hideCustomInputMethod4NativeInput\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 613
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private hideNativeInput(ZZ)V
    .locals 4
    .param p1, "ifNeedHideSoftInput"    # Z
    .param p2, "isClickReturn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 469
    iput v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 471
    const-string/jumbo v0, "H5NativeInputPlugin"

    const-string/jumbo v1, "hideNativeInput"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->restoreInputElement(Z)V

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->clearFocus()V

    .line 474
    if-eqz p1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideSoftInputFromWindow()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->removeAllViews()V

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 482
    :cond_1
    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    .line 483
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/WebView;->scrollBy(II)V

    .line 486
    :cond_2
    iput v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    .line 488
    :cond_3
    return-void
.end method

.method private hideSoftInputFromWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 534
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-nez v1, :cond_1

    .line 535
    const-string/jumbo v1, "H5NativeInputPlugin"

    const-string/jumbo v2, "fatal error nativeInput == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    .line 539
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 540
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private isCustomKeyboardType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 546
    const-string/jumbo v0, "idcard"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "digit"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "number"

    .line 547
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 546
    goto :goto_0
.end method

.method private isFastClick()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 658
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->lastClickTime:J

    sub-long v4, v0, v4

    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->SPACE_TIME:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 660
    const/4 v2, 0x0

    .line 664
    .local v2, "isFastClick":Z
    :goto_0
    iput-wide v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->lastClickTime:J

    .line 665
    return v2

    .line 662
    .end local v2    # "isFastClick":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "isFastClick":Z
    goto :goto_0
.end method

.method private isValidEnterType(I)Z
    .locals 1
    .param p1, "actionId"    # I

    .prologue
    .line 245
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreInputElement(Z)V
    .locals 4
    .param p1, "isClickReturn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 616
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string/jumbo v1, "console.log(\'restoreInputElement\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    if-eqz p1, :cond_1

    .line 621
    const-string/jumbo v1, "window.AlipayH5Keyboad && AlipayH5Keyboad.dispatchEventWithElement(window._currentInput,\'blur\', 0, \'r\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AlipayH5Keyboad.restoreInputElement("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 628
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 623
    .restart local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v1, "window.AlipayH5Keyboad && AlipayH5Keyboad.dispatchEventWithElement(window._currentInput,\'blur\', 0, \'\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setImeOptions(Ljava/lang/String;)V
    .locals 2
    .param p1, "returnType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-eqz v0, :cond_0

    .line 570
    const-string/jumbo v0, "send"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setImeOptions(I)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const-string/jumbo v0, "search"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setImeOptions(I)V

    goto :goto_0

    .line 574
    :cond_2
    const-string/jumbo v0, "next"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setImeOptions(I)V

    goto :goto_0

    .line 576
    :cond_3
    const-string/jumbo v0, "go"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setImeOptions(I)V

    goto :goto_0

    .line 578
    :cond_4
    const-string/jumbo v0, "done"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setImeOptions(I)V

    goto :goto_0
.end method

.method private setMaxLength(I)V
    .locals 4
    .param p1, "maxlength"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-eqz v0, :cond_0

    .line 559
    if-ltz p1, :cond_1

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setFilters([Landroid/text/InputFilter;)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setValueToWebInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 597
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v1, :cond_0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string/jumbo v1, "console.log(\'setInputValue4Android\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AlipayH5Keyboad.setInputValue4Android(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 604
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private showNativeInput(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isFastClick()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    const-string/jumbo v3, "H5NativeInputPlugin"

    const-string/jumbo v4, "too fast click"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iput v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    .line 256
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 257
    .local v0, "h5Page":Liop;
    if-nez v0, :cond_2

    .line 258
    const-string/jumbo v3, "H5NativeInputPlugin"

    const-string/jumbo v4, "fatal error null == h5Page"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isUCM57()Z

    move-result v4

    if-nez v4, :cond_3

    .line 265
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideCustomKeyboard()V

    .line 269
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->adjustBaseViewHeight()V

    .line 271
    const-string/jumbo v4, "subtab"

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "fragmentType"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 272
    .local v1, "isTabBarPage":Z
    iget v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    if-nez v4, :cond_5

    .line 273
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    :cond_4
    iput v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    .line 275
    :cond_5
    new-instance v3, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-interface {v0, v3}, Liop;->getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 285
    const-string/jumbo v3, "H5NativeInputPlugin"

    const-string/jumbo v4, "render native input directly"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    check-cast v2, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .end local v2    # "view":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V

    goto :goto_0
.end method

.method private showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V
    .locals 28
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "container"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .prologue
    .line 292
    .line 2121
    :try_start_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 293
    .local v15, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "H5NativeInputPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "showNativeInput jsapi params is "

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 301
    const-string/jumbo v2, "offset"

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 302
    .local v14, "offset":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "x"

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v25

    .line 303
    .local v25, "x":F
    const-string/jumbo v2, "y"

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    .line 305
    .local v4, "y":F
    const-string/jumbo v2, "w"

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v24

    .line 306
    .local v24, "w":F
    const-string/jumbo v2, "h"

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    .line 307
    .local v5, "h":F
    const-string/jumbo v2, "placeholder"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 309
    .local v16, "placeHolder":Ljava/lang/String;
    const-string/jumbo v2, "keyboard"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "keyboard":Ljava/lang/String;
    const-string/jumbo v2, "kbElId"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v10

    .line 311
    .local v10, "kbElId":I
    const-string/jumbo v2, "value"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 313
    .local v22, "value":Ljava/lang/String;
    const-string/jumbo v2, "fontSize"

    invoke-virtual {v15, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    .line 316
    .local v9, "fontSize":F
    const-string/jumbo v2, "maxlength"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v13

    .line 318
    .local v13, "maxLength":I
    const-string/jumbo v2, "textAlign"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 319
    .local v21, "textAlign":Ljava/lang/String;
    const-string/jumbo v2, "selectionStart"

    const/4 v3, -0x1

    invoke-static {v15, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v19

    .line 320
    .local v19, "selectionStart":I
    const-string/jumbo v2, "selectionEnd"

    const/4 v3, -0x1

    invoke-static {v15, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v18

    .line 321
    .local v18, "selectionEnd":I
    const-string/jumbo v2, "returnType"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 322
    .local v17, "returnType":Ljava/lang/String;
    const-string/jumbo v2, "N"

    const-string/jumbo v3, "canReturn"

    const-string/jumbo v26, "Y"

    move-object/from16 v0, v26

    invoke-static {v15, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->canReturn:Z

    .line 323
    const-string/jumbo v2, "cursor"

    const/4 v3, -0x1

    invoke-static {v15, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v8

    .line 325
    .local v8, "cursor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 326
    .local v6, "scrollY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getHeight()I

    move-result v7

    .line 328
    .local v7, "webViewHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-eqz v2, :cond_0

    .line 329
    const-string/jumbo v2, "H5NativeInputPlugin"

    const-string/jumbo v3, "execScrollWebContent pre"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->execScrollWebContent(FFII)V

    .line 333
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->setVisibility(I)V

    .line 334
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move/from16 v0, v24

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v12, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 335
    .local v12, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v2, v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 336
    new-instance v2, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setTag(Ljava/lang/Object;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v2, v3, v12}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setTextSize(IF)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setHint(Ljava/lang/CharSequence;)V

    .line 345
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setMaxLength(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setImeOptions(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setInputType(I)V

    .line 349
    const-string/jumbo v2, "center"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setGravity(I)V

    .line 356
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isCustomKeyboardType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->requestFocus()Z

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showSoftInputFromWindow()V

    .line 364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-nez v2, :cond_2

    .line 366
    new-instance v2, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;FFII)V

    const-wide/16 v26, 0xfa

    move-wide/from16 v0, v26

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 404
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    .line 405
    .local v23, "valueLength":I
    if-gez v8, :cond_9

    .line 406
    const/4 v2, -0x1

    if-ne v8, v2, :cond_8

    .line 407
    move/from16 v8, v23

    .line 414
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setSelection(I)V

    .line 422
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    .line 423
    :cond_4
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_a

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setSelection(I)V

    .line 444
    .end local v4    # "y":F
    .end local v5    # "h":F
    .end local v6    # "scrollY":I
    .end local v7    # "webViewHeight":I
    .end local v8    # "cursor":I
    .end local v9    # "fontSize":F
    .end local v10    # "kbElId":I
    .end local v11    # "keyboard":Ljava/lang/String;
    .end local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "maxLength":I
    .end local v14    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "placeHolder":Ljava/lang/String;
    .end local v17    # "returnType":Ljava/lang/String;
    .end local v18    # "selectionEnd":I
    .end local v19    # "selectionStart":I
    .end local v21    # "textAlign":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "valueLength":I
    .end local v24    # "w":F
    .end local v25    # "x":F
    :cond_5
    :goto_3
    return-void

    .line 322
    .restart local v4    # "y":F
    .restart local v5    # "h":F
    .restart local v9    # "fontSize":F
    .restart local v10    # "kbElId":I
    .restart local v11    # "keyboard":Ljava/lang/String;
    .restart local v13    # "maxLength":I
    .restart local v14    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .restart local v15    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "placeHolder":Ljava/lang/String;
    .restart local v17    # "returnType":Ljava/lang/String;
    .restart local v18    # "selectionEnd":I
    .restart local v19    # "selectionStart":I
    .restart local v21    # "textAlign":Ljava/lang/String;
    .restart local v22    # "value":Ljava/lang/String;
    .restart local v24    # "w":F
    .restart local v25    # "x":F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 351
    .restart local v6    # "scrollY":I
    .restart local v7    # "webViewHeight":I
    .restart local v8    # "cursor":I
    .restart local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const-string/jumbo v2, "right"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 441
    .end local v4    # "y":F
    .end local v5    # "h":F
    .end local v6    # "scrollY":I
    .end local v7    # "webViewHeight":I
    .end local v8    # "cursor":I
    .end local v9    # "fontSize":F
    .end local v10    # "kbElId":I
    .end local v11    # "keyboard":Ljava/lang/String;
    .end local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "maxLength":I
    .end local v14    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "placeHolder":Ljava/lang/String;
    .end local v17    # "returnType":Ljava/lang/String;
    .end local v18    # "selectionEnd":I
    .end local v19    # "selectionStart":I
    .end local v21    # "textAlign":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    .end local v24    # "w":F
    .end local v25    # "x":F
    :catch_0
    move-exception v20

    .line 442
    .local v20, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5NativeInputPlugin"

    const-string/jumbo v3, "showNativeInputInternal exception"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 409
    .end local v20    # "t":Ljava/lang/Throwable;
    .restart local v4    # "y":F
    .restart local v5    # "h":F
    .restart local v6    # "scrollY":I
    .restart local v7    # "webViewHeight":I
    .restart local v8    # "cursor":I
    .restart local v9    # "fontSize":F
    .restart local v10    # "kbElId":I
    .restart local v11    # "keyboard":Ljava/lang/String;
    .restart local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v13    # "maxLength":I
    .restart local v14    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .restart local v15    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "placeHolder":Ljava/lang/String;
    .restart local v17    # "returnType":Ljava/lang/String;
    .restart local v18    # "selectionEnd":I
    .restart local v19    # "selectionStart":I
    .restart local v21    # "textAlign":Ljava/lang/String;
    .restart local v22    # "value":Ljava/lang/String;
    .restart local v23    # "valueLength":I
    .restart local v24    # "w":F
    .restart local v25    # "x":F
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 411
    :cond_9
    move/from16 v0, v23

    if-le v8, v0, :cond_3

    .line 412
    move/from16 v8, v23

    goto :goto_2

    .line 426
    :cond_a
    if-gez v19, :cond_b

    .line 427
    const/16 v19, 0x0

    .line 429
    :cond_b
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_c

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    .line 430
    :cond_c
    move/from16 v18, v23

    .line 434
    :cond_d
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 435
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setSelection(I)V

    goto :goto_3

    .line 431
    :cond_e
    if-gez v18, :cond_d

    .line 432
    const/16 v18, 0x0

    goto :goto_4

    .line 437
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setSelection(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private showSoftInputFromWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 522
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-nez v1, :cond_1

    .line 523
    const-string/jumbo v1, "H5NativeInputPlugin"

    const-string/jumbo v2, "fatal error nativeInput == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    .line 527
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 528
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    const-string/jumbo v0, "H5NativeInputPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "afterTextChanged s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    const-string/jumbo v0, "H5NativeInputPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "beforeTextChanged s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public displaySoftKeyboard(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "inputType"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 87
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "resizeNativeKeyBoardInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :goto_0
    return v1

    .line 113
    :cond_0
    const-string/jumbo v2, "inputBlurEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInput(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo v2, "hideCustomKeyBoard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZ)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 75
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "h5PagePause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const-string/jumbo v1, "h5ToolbarBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "h5PagePhysicalBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZ)V

    .line 82
    :cond_1
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    return v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onCustomKeyboardHide()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0xd

    const/4 v0, 0x1

    .line 220
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isValidEnterType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    const-string/jumbo v1, "H5NativeInputPlugin"

    const-string/jumbo v2, "onEditorAction actionId isValidEnterType"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v1, "keydown"

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v3, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    const-string/jumbo v1, "keyup"

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v3, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->canReturn:Z

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, v0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZ)V

    .line 231
    :goto_0
    return v0

    .line 227
    :cond_0
    const-string/jumbo v1, "H5NativeInputPlugin"

    const-string/jumbo v2, "onEditorAction prevent hide ime"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyPreIme()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZ)V

    .line 174
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 236
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    .line 237
    const-string/jumbo v0, "H5NativeInputPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLayoutChange layoutChangeTimes "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->layoutChangeTimes:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 239
    const-string/jumbo v0, "H5NativeInputPlugin"

    const-string/jumbo v1, "hideNativeInput when click right-top btn in sys keyborad"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, v3, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZ)V

    .line 242
    :cond_0
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 65
    const-string/jumbo v0, "inputBlurEvent"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "h5PagePause"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "hideCustomKeyBoard"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onPushWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZ)V

    .line 168
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 132
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInput:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    .line 133
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x2e

    .line 183
    const-string/jumbo v5, "H5NativeInputPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onTextChanged s "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "value":Ljava/lang/String;
    if-nez p4, :cond_1

    .line 188
    const-string/jumbo v5, "keydown"

    const/16 v6, 0x2e

    const-string/jumbo v7, ""

    invoke-direct {p0, v5, v6, v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    const-string/jumbo v5, "keyup"

    const/16 v6, 0x2e

    const-string/jumbo v7, ""

    invoke-direct {p0, v5, v6, v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setValueToWebInput(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v5, "input"

    const/16 v6, 0x2e

    const-string/jumbo v7, ""

    invoke-direct {p0, v5, v6, v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    if-ne p4, v9, :cond_3

    .line 193
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 194
    .local v0, "keyCode":C
    move v1, v0

    .line 195
    .local v1, "keyCodeInt":I
    if-ne v0, v8, :cond_2

    .line 196
    const/16 v1, 0xbe

    .line 198
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "keyCodeStr":Ljava/lang/String;
    const-string/jumbo v5, "keydown"

    invoke-direct {p0, v5, v1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    const-string/jumbo v5, "keyup"

    invoke-direct {p0, v5, v1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setValueToWebInput(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v5, "input"

    invoke-direct {p0, v5, v1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0    # "keyCode":C
    .end local v1    # "keyCodeInt":I
    .end local v2    # "keyCodeStr":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 209
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5NativeInputPlugin"

    const-string/jumbo v6, "onTextChanged exception "

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 203
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    if-le p4, v9, :cond_0

    .line 204
    add-int v5, p2, p4

    :try_start_1
    invoke-virtual {v4, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2    # "keyCodeStr":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setValueToWebInput(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v5, "input"

    const/4 v6, -0x1

    invoke-direct {p0, v5, v6, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZ)V

    .line 143
    :cond_0
    return v1
.end method
