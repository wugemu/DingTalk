.class public Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;
.super Landroid/widget/RelativeLayout;
.source "VISmsCheckCodeInputBox.java"


# static fields
.field public static final DEFAULT_COUNT_DOWN:I = 0x3c


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

.field private d:Landroid/widget/Button;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private g:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    .line 33
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->g:Landroid/animation/Animator$AnimatorListener;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ligh$g;->vi_sms_check_code_input:I

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    sget v0, Ligh$f;->check_code_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setBackgroundColor(I)V

    .line 79
    sget v0, Ligh$f;->check_code_resend:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ligh$h;->check_code_count_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b:Ljava/lang/String;

    .line 81
    sget v0, Ligh$e;->input_box_line_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setBackgroundResource(I)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputType(I)V

    .line 1088
    const-class v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1089
    const-string/jumbo v0, "getDurationScale"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1090
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 1091
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1093
    :cond_1
    const-string/jumbo v2, "setDurationScale"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    sget v1, Ligh$h;->check_code_resend:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligh$c;->linkColorBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a()V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    :cond_0
    return-void
.end method

.method public clearInput()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    return-void
.end method

.method public enableResend()V
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setCountDown(I)V

    .line 175
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a()V

    .line 176
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCountDown(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 123
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    .line 124
    return-void
.end method

.method public setCountDownTemplate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setHint(I)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setHint(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setHint(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setMaxCodeCount(I)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setLength(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public setName(I)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setName(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputName(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setResendClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_0
    return-void
.end method

.method public showKeyboard()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setFocusable(Z)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->requestFocus()Z

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    .line 189
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 190
    return-void
.end method

.method public startCountDown()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 137
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v4, v0, v4

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->g:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 146
    return-void
.end method
