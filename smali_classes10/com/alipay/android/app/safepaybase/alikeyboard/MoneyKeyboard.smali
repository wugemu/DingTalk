.class public Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "MoneyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Liid$c;->keyboard_money:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 71
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->initialize(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 12
    .param p1, "act"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v7

    .line 114
    .local v2, "screen_density":D
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 115
    .local v4, "screen_height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 116
    .local v5, "screen_width":I
    if-le v5, v4, :cond_0

    .line 119
    move v6, v4

    .local v6, "tmp":I
    move v5, v4

    .line 121
    .end local v6    # "tmp":I
    :cond_0
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v2

    double-to-int v1, v8

    .line 122
    .local v1, "keylayoutSpace":I
    mul-int/lit8 v7, v1, 0x4

    sub-int v7, v5, v7

    div-int/lit8 v0, v7, 0x3

    .line 123
    .local v0, "keyWidth":I
    int-to-double v8, v0

    const-wide v10, 0x3fddd2f1a9fbe76dL    # 0.466

    mul-double/2addr v8, v10

    double-to-int v7, v8

    return v7
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 12
    .param p1, "act"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 80
    iget-object v10, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 81
    .local v6, "numLy":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 82
    .local v7, "row":I
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result v8

    .line 84
    .local v8, "rowHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 85
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 86
    .local v9, "rowLayout":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_0

    .line 90
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 93
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 94
    .local v0, "column":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 95
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 96
    .local v4, "key":Landroid/view/View;
    new-instance v10, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v10}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v4, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 97
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v0    # "column":I
    .end local v3    # "j":I
    .end local v4    # "key":Landroid/view/View;
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v9    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v10, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 102
    .local v1, "functionLy":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 103
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_2

    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 105
    .restart local v4    # "key":Landroid/view/View;
    new-instance v10, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v10}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v4, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 106
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    .end local v4    # "key":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 45
    .local v0, "id":I
    sget v3, Liid$b;->key_del:I

    if-ne v0, v3, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onDel()V

    .line 57
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 47
    :cond_1
    sget v3, Liid$b;->key_space:I

    if-ne v0, v3, :cond_2

    .line 49
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    sget v3, Liid$b;->key_enter:I

    if-eq v0, v3, :cond_0

    move-object v2, p1

    .line 53
    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 62
    .local v0, "id":I
    sget v1, Liid$b;->key_enter:I

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onOK()V

    .line 65
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
