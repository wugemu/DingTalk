.class final Ldkj$4;
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

.field final synthetic b:I

.field final synthetic c:Ldkj;


# direct methods
.method constructor <init>(Ldkj;II)V
    .locals 0
    .param p1, "this$0"    # Ldkj;

    .prologue
    .line 445
    iput-object p1, p0, Ldkj$4;->c:Ldkj;

    iput p2, p0, Ldkj$4;->a:I

    iput p3, p0, Ldkj$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 451
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 452
    .local v1, "currentValue":I
    const/16 v3, 0x5dc

    if-gt v1, v3, :cond_1

    .line 453
    int-to-float v3, v1

    mul-float/2addr v3, v6

    const v4, 0x44bb8000    # 1500.0f

    div-float v2, v3, v4

    .line 454
    .local v2, "scale":F
    const v3, 0x3f4ccccd    # 0.8f

    mul-float v0, v2, v3

    .line 455
    .local v0, "alteredScale":F
    iget-object v3, p0, Ldkj$4;->c:Ldkj;

    .line 1055
    iget-object v3, v3, Ldkj;->b:Landroid/widget/ImageView;

    .line 455
    iget v4, p0, Ldkj$4;->a:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 457
    iget-object v3, p0, Ldkj$4;->c:Ldkj;

    .line 2055
    iget-object v3, v3, Ldkj;->b:Landroid/widget/ImageView;

    .line 457
    iget v4, p0, Ldkj$4;->b:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 459
    iget-object v3, p0, Ldkj$4;->c:Ldkj;

    .line 3055
    iget-object v3, v3, Ldkj;->b:Landroid/widget/ImageView;

    .line 459
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 460
    iget-object v3, p0, Ldkj$4;->c:Ldkj;

    .line 4055
    iget-object v3, v3, Ldkj;->b:Landroid/widget/ImageView;

    .line 460
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 461
    iget-object v3, p0, Ldkj$4;->c:Ldkj;

    iget v4, p0, Ldkj$4;->b:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 5055
    invoke-virtual {v3, v4}, Ldkj;->a(F)V

    .line 465
    .end local v0    # "alteredScale":F
    .end local v2    # "scale":F
    :cond_0
    :goto_0
    iget-object v3, p0, Ldkj$4;->c:Ldkj;

    .line 6055
    iget-object v3, v3, Ldkj;->b:Landroid/widget/ImageView;

    .line 465
    iget-object v4, p0, Ldkj$4;->c:Ldkj;

    const/16 v5, 0x64

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    .line 466
    invoke-static {v4, v1, v5, v6, v7}, Ldkj;->a(Ldkj;IIFF)F

    move-result v4

    .line 465
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 468
    return-void

    .line 462
    :cond_1
    const/16 v3, 0x1388

    if-ne v1, v3, :cond_0

    .line 463
    iget-object v3, p0, Ldkj$4;->c:Ldkj;

    invoke-static {v3}, Ldkj;->c(Ldkj;)V

    goto :goto_0
.end method
