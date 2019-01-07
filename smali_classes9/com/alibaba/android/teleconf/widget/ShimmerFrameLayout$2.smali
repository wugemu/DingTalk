.class final Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;
.super Ljava/lang/Object;
.source "ShimmerFrameLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getShimmerAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 925
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 926
    .local v0, "value":F
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->a:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;I)V

    .line 927
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->b:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->d:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;I)V

    .line 928
    return-void
.end method
