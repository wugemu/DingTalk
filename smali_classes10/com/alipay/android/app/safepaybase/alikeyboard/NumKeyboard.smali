.class public Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "NumKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;
    }
.end annotation


# static fields
.field public static final FLAG_IDCARD:I = 0x2

.field public static final FLAG_PHONE:I = 0x1


# instance fields
.field public mFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;
    .param p3, "flag"    # I

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 34
    iput v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    .line 41
    iput p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Liid$c;->keyboard_num:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 45
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->initialize(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 10
    .param p1, "act"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v6

    .line 97
    .local v2, "screen_density":D
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .local v4, "screen_height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    .local v5, "screen_width":I
    if-le v5, v4, :cond_0

    .line 101
    move v5, v4

    .line 103
    :cond_0
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v2

    double-to-int v1, v6

    .line 104
    .local v1, "keylayoutSpace":I
    mul-int/lit8 v6, v1, 0x4

    sub-int v6, v5, v6

    div-int/lit8 v0, v6, 0x3

    .line 105
    .local v0, "keyWidth":I
    int-to-double v6, v0

    const-wide v8, 0x3fddd2f1a9fbe76dL    # 0.466

    mul-double/2addr v6, v8

    double-to-int v6, v6

    return v6
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9
    .param p1, "act"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 54
    iget-object v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 55
    .local v5, "row":I
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result v6

    .line 57
    .local v6, "rowHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 58
    iget-object v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 59
    .local v7, "rowLayout":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_0

    .line 63
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 66
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 67
    .local v0, "column":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 68
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "key":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->setDynamicTextView(Landroid/view/View;)V

    .line 70
    new-instance v8, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v8}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v3, v8}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 71
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "column":I
    .end local v2    # "j":I
    .end local v3    # "key":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v7    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 125
    .local v0, "id":I
    sget v3, Liid$b;->key_num_del1:I

    if-ne v0, v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onDel()V

    .line 132
    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    move-object v2, p1

    .line 128
    check-cast v2, Landroid/widget/TextView;

    .line 129
    .local v2, "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method private setDynamicTextView(Landroid/view/View;)V
    .locals 5
    .param p1, "key"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Liid$b;->key_num_dymic:I

    if-eq v2, v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :cond_2
    move-object v1, p1

    .line 85
    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "view":Landroid/widget/TextView;
    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    if-ne v2, v4, :cond_3

    .line 87
    const-string/jumbo v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    sget v0, Liid$a;->keyboard_key_num_bg:I

    .line 92
    .local v0, "bgId":I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 89
    .end local v0    # "bgId":I
    :cond_3
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
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
    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
