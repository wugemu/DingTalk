.class final Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

.field private b:[F


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;[F)V
    .locals 2
    .param p2, "vector"    # [F

    .prologue
    .line 606
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    .line 607
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 608
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->setFloatValues([F)V

    .line 609
    const-wide/32 v0, 0xf4240

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 610
    invoke-virtual {p0, p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 611
    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->b:[F

    .line 612
    return-void

    .line 608
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v7, 0x3f666666    # 0.9f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 616
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->b:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->b:[F

    aget v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c(Lcom/alibaba/laiwang/photokit/views/PinchImageView;FF)Z

    move-result v0

    .line 617
    .local v0, "result":Z
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->b:[F

    aget v2, v1, v4

    mul-float/2addr v2, v7

    aput v2, v1, v4

    .line 618
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->b:[F

    aget v2, v1, v5

    mul-float/2addr v2, v7

    aput v2, v1, v5

    .line 619
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->b:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->b:[F

    aget v2, v2, v5

    invoke-static {v6, v6, v1, v2}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(FFFF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 622
    :cond_1
    return-void
.end method
