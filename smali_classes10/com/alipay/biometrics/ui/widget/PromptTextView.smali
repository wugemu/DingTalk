.class public Lcom/alipay/biometrics/ui/widget/PromptTextView;
.super Landroid/widget/TextView;
.source "PromptTextView.java"


# instance fields
.field mAnimationInterval:I

.field mProcessColor:I

.field mStepIndex:I

.field mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mProcessColor:I

    .line 20
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mAnimationInterval:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mProcessColor:I

    .line 20
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mAnimationInterval:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mProcessColor:I

    .line 20
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mAnimationInterval:I

    .line 36
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    return-void
.end method

.method public resetAnimation()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mStepIndex:I

    .line 84
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/biometrics/ui/widget/PromptTextView;->setTextSpan(I)V

    .line 87
    return-void
.end method

.method public setAnimationInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mAnimationInterval:I

    .line 44
    return-void
.end method

.method public setProcessColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mProcessColor:I

    .line 40
    return-void
.end method

.method public setTextSpan(I)V
    .locals 4
    .param p1, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/PromptTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mProcessColor:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 99
    .local v1, "redSpan":Landroid/text/style/ForegroundColorSpan;
    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/PromptTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public startAnimation(I)V
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/PromptTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 49
    .local v0, "length":I
    move v1, v0

    .line 51
    .local v1, "valueLength":I
    if-gt p1, v0, :cond_0

    .line 52
    move v1, p1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 59
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mStepIndex:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 60
    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mAnimationInterval:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alipay/biometrics/ui/widget/PromptTextView$1;

    invoke-direct {v3, p0}, Lcom/alipay/biometrics/ui/widget/PromptTextView$1;-><init>(Lcom/alipay/biometrics/ui/widget/PromptTextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    return-void
.end method
