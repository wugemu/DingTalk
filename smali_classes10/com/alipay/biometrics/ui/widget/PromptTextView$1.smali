.class Lcom/alipay/biometrics/ui/widget/PromptTextView$1;
.super Ljava/lang/Object;
.source "PromptTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/biometrics/ui/widget/PromptTextView;->startAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/biometrics/ui/widget/PromptTextView;


# direct methods
.method constructor <init>(Lcom/alipay/biometrics/ui/widget/PromptTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/biometrics/ui/widget/PromptTextView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView$1;->this$0:Lcom/alipay/biometrics/ui/widget/PromptTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v1, "update"

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView$1;->this$0:Lcom/alipay/biometrics/ui/widget/PromptTextView;

    iget v1, v0, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mStepIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView$1;->this$0:Lcom/alipay/biometrics/ui/widget/PromptTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/biometrics/ui/widget/PromptTextView;->setTextSpan(I)V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/PromptTextView$1;->this$0:Lcom/alipay/biometrics/ui/widget/PromptTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/alipay/biometrics/ui/widget/PromptTextView;->mStepIndex:I

    .line 73
    return-void
.end method
