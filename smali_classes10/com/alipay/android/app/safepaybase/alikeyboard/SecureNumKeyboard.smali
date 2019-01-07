.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "SecureNumKeyboard.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;


# static fields
.field public static final FLAG_IDCARD:I = 0x2

.field public static final FLAG_PHONE:I = 0x1


# instance fields
.field private fake_view:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field public mFlag:I

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;
    .param p3, "flag"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 41
    iput v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    .line 44
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    .line 45
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 46
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    .line 54
    iput p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Liid$c;->keyboard_secure_num:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 58
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 60
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->initTtsIfTalkBack()V

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->initialize(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    return p1
.end method

.method private announceTextOut(I)V
    .locals 2
    .param p1, "strId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "announceString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private announceTextOut(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "announceString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private announceTextOut(Ljava/lang/String;)V
    .locals 3
    .param p1, "announceString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 260
    :cond_0
    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 10
    .param p1, "act"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v6

    .line 118
    .local v2, "screen_density":D
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 119
    .local v4, "screen_height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 120
    .local v5, "screen_width":I
    if-le v5, v4, :cond_0

    .line 122
    move v5, v4

    .line 124
    :cond_0
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v2

    double-to-int v1, v6

    .line 125
    .local v1, "keylayoutSpace":I
    mul-int/lit8 v6, v1, 0x4

    sub-int v6, v5, v6

    div-int/lit8 v0, v6, 0x3

    .line 126
    .local v0, "keyWidth":I
    int-to-double v6, v0

    const-wide v8, 0x3fddd2f1a9fbe76dL    # 0.466

    mul-double/2addr v6, v8

    double-to-int v6, v6

    return v6
.end method

.method private initTtsIfTalkBack()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 182
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 11
    .param p1, "act"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-object v10, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 68
    .local v5, "row":I
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result v6

    .line 70
    .local v6, "rowHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 71
    iget-object v10, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 72
    .local v7, "rowLayout":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_2

    .line 76
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 80
    .local v0, "column":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 81
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 82
    .local v3, "key":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    invoke-direct {p0, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->setDynamicTextView(Landroid/view/View;)V

    .line 85
    instance-of v10, v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v10, :cond_0

    move-object v9, v3

    .line 86
    check-cast v9, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 87
    .local v9, "skey":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    invoke-virtual {v9, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 89
    .end local v9    # "skey":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    :cond_0
    instance-of v10, v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v10, :cond_1

    move-object v8, v3

    .line 90
    check-cast v8, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 91
    .local v8, "sFlayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    invoke-virtual {v8, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 92
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->fake_view:Landroid/view/View;

    .line 80
    .end local v8    # "sFlayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "column":I
    .end local v2    # "j":I
    .end local v3    # "key":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v7    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private isZhLanguage()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 284
    .local v0, "l":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const/4 v2, 0x1

    .line 288
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 144
    .local v0, "id":I
    sget v3, Liid$b;->key_num_del1:I

    if-ne v0, v3, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onDel()V

    .line 151
    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    move-object v2, p1

    .line 147
    check-cast v2, Landroid/widget/TextView;

    .line 148
    .local v2, "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method private proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 3
    .param p1, "sLayout"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .param p2, "eventType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v1, 0x8000

    const/4 v2, 0x1

    .line 230
    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    .line 231
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 235
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 236
    sget v0, Liid$d;->msp_secure_keyboard_del:I

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(I)V

    .line 252
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    if-ne p2, v2, :cond_2

    .line 241
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 242
    sget v0, Liid$d;->msp_secure_keyboard_already_del:I

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(I)V

    goto :goto_0

    .line 246
    :cond_2
    if-ne p2, v1, :cond_0

    .line 247
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 248
    sget v0, Liid$d;->msp_secure_keyboard_del:I

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(I)V

    goto :goto_0
.end method

.method private proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 3
    .param p1, "sTextView"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    .param p2, "eventType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v1, 0x8000

    const/4 v2, 0x1

    .line 203
    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    .line 204
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 208
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 209
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    if-ne p2, v2, :cond_2

    .line 214
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    goto :goto_0

    .line 219
    :cond_2
    if-ne p2, v1, :cond_0

    .line 220
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setDynamicTextView(Landroid/view/View;)V
    .locals 4
    .param p1, "key"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Liid$b;->key_num_dymic:I

    if-eq v1, v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_2
    move-object v0, p1

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "view":Landroid/widget/TextView;
    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    if-ne v1, v3, :cond_3

    .line 109
    const-string/jumbo v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    sget v1, Liid$a;->keyboard_key_num_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 111
    :cond_3
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 293
    const-string/jumbo v0, "Secure|num"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onStatisticEvent(Ljava/lang/String;)V

    .line 294
    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 1
    .param p1, "layout"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .param p2, "eventType"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z

    move-result v0

    return v0
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 1
    .param p1, "sTextView"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    .param p2, "eventType"    # I

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z

    move-result v0

    return v0
.end method

.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    if-nez p1, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->isZhLanguage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 189
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 196
    .end local v0    # "result":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    .line 198
    :cond_2
    return-void

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

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
    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
