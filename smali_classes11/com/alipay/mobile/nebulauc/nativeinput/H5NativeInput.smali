.class public Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;
.super Landroid/widget/EditText;
.source "H5NativeInput.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NativeInput"


# instance fields
.field private h5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->initViews(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->initViews(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->initViews(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xb0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setFocusable(Z)V

    .line 45
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setGravity(I)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setMaxLines(I)V

    .line 47
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    const-string/jumbo v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setTextColor(I)V

    .line 49
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setHintTextColor(I)V

    .line 50
    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setTextSize(F)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setCursorVisible(Z)V

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setPadding(IIII)V

    .line 53
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    const-string/jumbo v0, "H5NativeInput"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onKeyPreIme keyCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 59
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->h5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->h5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onKeyPreIme()V

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V
    .locals 0
    .param p1, "h5NativeOnSoftKeyboardListener"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->h5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    .line 25
    return-void
.end method
