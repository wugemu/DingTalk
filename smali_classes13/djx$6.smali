.class final Ldjx$6;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Ldjx;


# direct methods
.method constructor <init>(Ldjx;FF)V
    .locals 0
    .param p1, "this$0"    # Ldjx;

    .prologue
    .line 405
    iput-object p1, p0, Ldjx$6;->c:Ldjx;

    iput p2, p0, Ldjx$6;->a:F

    iput p3, p0, Ldjx$6;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 408
    iget-object v3, p0, Ldjx$6;->c:Ldjx;

    .line 1046
    iget-object v3, v3, Ldjx;->e:Landroid/view/View;

    .line 408
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 409
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Ldjx$6;->a:F

    iget-object v3, p0, Ldjx$6;->c:Ldjx;

    .line 2046
    iget-object v3, v3, Ldjx;->i:Landroid/view/View;

    .line 409
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Ldjx$6;->a:F

    sub-float v5, v3, v5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 410
    .local v2, "width":I
    if-gez v2, :cond_0

    .line 411
    const/4 v2, 0x0

    .line 413
    :cond_0
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 414
    iget v4, p0, Ldjx$6;->b:F

    iget-object v3, p0, Ldjx$6;->c:Ldjx;

    .line 3046
    iget-object v3, v3, Ldjx;->i:Landroid/view/View;

    .line 414
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Ldjx$6;->b:F

    sub-float v5, v3, v5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 415
    .local v0, "height":I
    if-gez v0, :cond_1

    .line 416
    const/4 v0, 0x0

    .line 418
    :cond_1
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 419
    iget-object v3, p0, Ldjx$6;->c:Ldjx;

    .line 4046
    iget-object v3, v3, Ldjx;->e:Landroid/view/View;

    .line 419
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    return-void
.end method
