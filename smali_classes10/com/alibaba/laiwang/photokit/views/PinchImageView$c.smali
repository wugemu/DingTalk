.class final Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;
.super Landroid/animation/ValueAnimator;
.source "PinchImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/views/PinchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

.field private b:[F

.field private c:[F


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 2
    .param p2, "start"    # Landroid/graphics/Matrix;
    .param p3, "end"    # Landroid/graphics/Matrix;

    .prologue
    const/16 v1, 0x9

    .line 631
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    .line 632
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 628
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->b:[F

    .line 629
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->c:[F

    .line 633
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->setFloatValues([F)V

    .line 634
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 635
    invoke-virtual {p0, p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 636
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->b:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 637
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->c:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 638
    return-void

    .line 633
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x9

    .line 642
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 643
    .local v2, "value":F
    new-array v1, v6, [F

    .line 644
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 645
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->b:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->c:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->b:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, v1, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :cond_0
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 648
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    .line 1233
    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a()V

    .line 649
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->invalidate()V

    .line 650
    return-void
.end method
