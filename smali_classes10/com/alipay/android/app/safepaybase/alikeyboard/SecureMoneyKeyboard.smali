.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "SecureMoneyKeyboard.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;


# instance fields
.field private fake_view:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    .line 39
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 40
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 41
    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Liid$c;->keyboard_secure_money:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 86
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 88
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->initTtsIfTalkBack()V

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->initialize(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    return p1
.end method

.method private announceTextOut(I)V
    .locals 2
    .param p1, "strId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "announceString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method private announceTextOut(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "announceString":Ljava/lang/String;
    const-string/jumbo v1, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    sget v2, Liid$d;->msp_secure_key_dot:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Ljava/lang/String;)V

    .line 243
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
    .line 232
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 235
    :cond_0
    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 12
    .param p1, "act"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v7

    .line 147
    .local v2, "screen_density":D
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 148
    .local v4, "screen_height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 149
    .local v5, "screen_width":I
    if-le v5, v4, :cond_0

    .line 152
    move v6, v4

    .local v6, "tmp":I
    move v5, v4

    .line 154
    .end local v6    # "tmp":I
    :cond_0
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v2

    double-to-int v1, v8

    .line 155
    .local v1, "keylayoutSpace":I
    mul-int/lit8 v7, v1, 0x4

    sub-int v7, v5, v7

    div-int/lit8 v0, v7, 0x3

    .line 156
    .local v0, "keyWidth":I
    int-to-double v8, v0

    const-wide v10, 0x3fddd2f1a9fbe76dL    # 0.466

    mul-double/2addr v8, v10

    double-to-int v7, v8

    return v7
.end method

.method private initTtsIfTalkBack()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 183
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 14
    .param p1, "act"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 99
    iget-object v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 100
    .local v6, "numLy":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 101
    .local v7, "row":I
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result v8

    .line 103
    .local v8, "rowHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 104
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 105
    .local v9, "rowLayout":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_1

    .line 109
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 112
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 113
    .local v0, "column":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 114
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 115
    .local v4, "key":Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    instance-of v12, v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v12, :cond_0

    move-object v11, v4

    .line 118
    check-cast v11, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 119
    .local v11, "skey":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    invoke-virtual {v11, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 113
    .end local v11    # "skey":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "column":I
    .end local v3    # "j":I
    .end local v4    # "key":Landroid/view/View;
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v9    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 125
    .local v1, "functionLy":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 126
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_5

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 128
    .restart local v4    # "key":Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    instance-of v12, v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v12, :cond_3

    move-object v11, v4

    .line 131
    check-cast v11, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 132
    .restart local v11    # "skey":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    invoke-virtual {v11, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 134
    .end local v11    # "skey":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    :cond_3
    instance-of v12, v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v12, :cond_4

    move-object v10, v4

    .line 135
    check-cast v10, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 136
    .local v10, "sFlayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    invoke-virtual {v10, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 137
    invoke-virtual {v10, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 138
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->fake_view:Landroid/view/View;

    .line 126
    .end local v10    # "sFlayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    .end local v4    # "key":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private isZhLanguage()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 292
    .local v0, "l":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x1

    .line 296
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
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 60
    .local v0, "id":I
    sget v3, Liid$b;->key_del:I

    if-ne v0, v3, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onDel()V

    .line 72
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 62
    :cond_1
    sget v3, Liid$b;->key_space:I

    if-ne v0, v3, :cond_2

    .line 64
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    sget v3, Liid$b;->key_enter:I

    if-eq v0, v3, :cond_0

    move-object v2, p1

    .line 68
    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 77
    .local v0, "id":I
    sget v1, Liid$b;->key_enter:I

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onOK()V

    .line 80
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 4
    .param p1, "sLayout"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .param p2, "eventType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v2, 0x8000

    const/4 v3, 0x1

    .line 253
    const/16 v1, 0x80

    if-ne p2, v1, :cond_1

    .line 254
    iget-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 258
    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 259
    sget v0, Liid$d;->msp_secure_keyboard_del:I

    .line 260
    .local v0, "StringId":I
    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(I)V

    .line 277
    .end local v0    # "StringId":I
    :cond_0
    :goto_0
    return v3

    .line 264
    :cond_1
    if-ne p2, v3, :cond_2

    .line 265
    iget-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v1, :cond_0

    .line 266
    sget v1, Liid$d;->msp_secure_keyboard_already_del:I

    invoke-direct {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(I)V

    goto :goto_0

    .line 271
    :cond_2
    if-ne p2, v2, :cond_0

    .line 272
    iget-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v1, :cond_0

    .line 273
    sget v1, Liid$d;->msp_secure_keyboard_del:I

    invoke-direct {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(I)V

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

    .line 204
    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    .line 205
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 209
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 211
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    .line 227
    :cond_0
    :goto_0
    return v2

    .line 215
    :cond_1
    if-ne p2, v2, :cond_2

    .line 216
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    goto :goto_0

    .line 221
    :cond_2
    if-ne p2, v1, :cond_0

    .line 222
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 301
    const-string/jumbo v0, "Secure|mon"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onStatisticEvent(Ljava/lang/String;)V

    .line 302
    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 1
    .param p1, "layout"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .param p2, "eventType"    # I

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z

    move-result v0

    return v0
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 1
    .param p1, "sTextView"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    .param p2, "eventType"    # I

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z

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
    .line 187
    if-nez p1, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->isZhLanguage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 190
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 197
    .end local v0    # "result":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    .line 199
    :cond_2
    return-void

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0
.end method

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
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
