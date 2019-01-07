.class public Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.super Ljava/lang/Object;
.source "AbstractKeyboard.java"


# instance fields
.field protected keyboardType:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field protected keyboardView:Landroid/view/ViewGroup;

.field protected onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRelatePoint(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "targetView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 59
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 66
    :goto_0
    return-object v1

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 63
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getRelatePoint(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 66
    .local v0, "temp":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->keyboardView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onDel()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    invoke-interface {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onDel()V

    .line 30
    :cond_0
    return-void
.end method

.method protected onInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onInput(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onOK()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    invoke-interface {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onOK()V

    .line 36
    :cond_0
    return-void
.end method

.method protected onStatisticEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onStatisticEvent(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method
