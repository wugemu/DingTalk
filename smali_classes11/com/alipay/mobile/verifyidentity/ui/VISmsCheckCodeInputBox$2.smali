.class Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;
.super Ljava/lang/Object;
.source "VISmsCheckCodeInputBox.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$300(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V

    .line 55
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligh$c;->colorccc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    return-void
.end method
