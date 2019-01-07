.class final Ldkj$5;
.super Ljava/lang/Object;
.source "QuickPraiseController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:Ldkj;


# direct methods
.method constructor <init>(Ldkj;IFI)V
    .locals 0
    .param p1, "this$0"    # Ldkj;

    .prologue
    .line 510
    iput-object p1, p0, Ldkj$5;->d:Ldkj;

    iput p2, p0, Ldkj$5;->a:I

    iput p3, p0, Ldkj$5;->b:F

    iput p4, p0, Ldkj$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 517
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 518
    .local v0, "currentValue":I
    iget v2, p0, Ldkj$5;->a:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    .line 1055
    iget-boolean v2, v2, Ldkj;->h:Z

    .line 518
    if-nez v2, :cond_2

    .line 519
    int-to-float v2, v0

    mul-float/2addr v2, v5

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float v1, v2, v3

    .line 520
    .local v1, "scale":F
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    .line 2055
    iget-object v2, v2, Ldkj;->b:Landroid/widget/ImageView;

    .line 520
    iget-object v3, p0, Ldkj$5;->d:Ldkj;

    .line 3055
    iget v3, v3, Ldkj;->g:I

    .line 520
    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 521
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    .line 4055
    iget-object v2, v2, Ldkj;->b:Landroid/widget/ImageView;

    .line 521
    iget-object v3, p0, Ldkj$5;->d:Ldkj;

    .line 5055
    iget v3, v3, Ldkj;->f:I

    .line 522
    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 523
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    .line 6055
    iget-object v2, v2, Ldkj;->b:Landroid/widget/ImageView;

    .line 523
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 524
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    .line 7055
    iget-object v2, v2, Ldkj;->b:Landroid/widget/ImageView;

    .line 524
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 525
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    iget-object v3, p0, Ldkj$5;->d:Ldkj;

    .line 8055
    iget v3, v3, Ldkj;->f:I

    .line 525
    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 9055
    invoke-virtual {v2, v3}, Ldkj;->a(F)V

    .line 527
    iget v2, p0, Ldkj$5;->b:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    iget v2, p0, Ldkj$5;->b:F

    sub-float/2addr v2, v1

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 528
    :cond_0
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    iget v3, p0, Ldkj$5;->c:I

    invoke-static {v2, v3}, Ldkj;->a(Ldkj;I)V

    .line 533
    .end local v1    # "scale":F
    :cond_1
    :goto_0
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    .line 11055
    iget-object v2, v2, Ldkj;->b:Landroid/widget/ImageView;

    .line 533
    iget-object v3, p0, Ldkj$5;->d:Ldkj;

    const/16 v4, 0x3e8

    const/high16 v5, 0x41a00000    # 20.0f

    const v6, 0x3fc90fdb

    .line 534
    invoke-static {v3, v0, v4, v5, v6}, Ldkj;->a(Ldkj;IIFF)F

    move-result v3

    .line 533
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 537
    return-void

    .line 530
    :cond_2
    iget v2, p0, Ldkj$5;->a:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    .line 10055
    iget-boolean v2, v2, Ldkj;->h:Z

    .line 530
    if-nez v2, :cond_1

    .line 531
    iget-object v2, p0, Ldkj$5;->d:Ldkj;

    iget v3, p0, Ldkj$5;->c:I

    invoke-static {v2, v3}, Ldkj;->a(Ldkj;I)V

    goto :goto_0
.end method
