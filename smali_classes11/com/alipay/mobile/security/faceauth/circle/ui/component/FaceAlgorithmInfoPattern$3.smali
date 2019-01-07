.class final Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;
.super Ljava/lang/Object;
.source "FaceAlgorithmInfoPattern.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;Landroid/animation/ValueAnimator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->a:Landroid/animation/ValueAnimator;

    iput p3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->b:I

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
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AnimatedValue:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;I)I

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->z(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->b:I

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->x(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;Z)Z

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 291
    :cond_0
    return-void
.end method
