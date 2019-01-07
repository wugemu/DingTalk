.class final Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

.field private b:[F


# direct methods
.method public constructor <init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;[F)V
    .locals 0
    .param p2, "vector"    # [F

    .prologue
    .line 734
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->b:[F

    .line 736
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->b:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->b:[F

    aget v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;FF)Z

    move-result v0

    .line 741
    .local v0, "result":Z
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->b:[F

    aget v2, v1, v4

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v1, v4

    .line 742
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->b:[F

    aget v2, v1, v5

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v1, v5

    .line 743
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->b:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->b:[F

    aget v2, v2, v5

    invoke-static {v8, v8, v1, v2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(FFFF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 746
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 749
    :cond_1
    return-void
.end method
