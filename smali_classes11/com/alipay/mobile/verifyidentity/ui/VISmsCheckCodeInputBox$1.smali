.class Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;
.super Ljava/lang/Object;
.source "VISmsCheckCodeInputBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

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
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 38
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
