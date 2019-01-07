.class final Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;
.super Ljava/lang/Object;
.source "FaceCirclePattern.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    iput p2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;I)I

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->d:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setProgress(I)V

    .line 304
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->a:I

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;Z)Z

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 309
    :cond_0
    return-void
.end method
