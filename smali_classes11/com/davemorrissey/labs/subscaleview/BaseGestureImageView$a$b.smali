.class final Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;
.super Ljava/lang/Object;
.source "BaseGestureImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

.field private b:[F

.field private c:[F


# direct methods
.method public constructor <init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 2
    .param p2, "start"    # Landroid/graphics/Matrix;
    .param p3, "end"    # Landroid/graphics/Matrix;

    .prologue
    const/16 v1, 0x9

    .line 758
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->b:[F

    .line 756
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->c:[F

    .line 759
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->b:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 760
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->c:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 761
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
    const/16 v6, 0x9

    .line 765
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 766
    .local v2, "value":F
    new-array v1, v6, [F

    .line 767
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 768
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->b:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->c:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->b:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, v1, v0

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_0
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v3, v3, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 771
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v3, v3, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->invalidate()V

    .line 772
    return-void
.end method
