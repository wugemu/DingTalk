.class final Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;
.super Ljava/lang/Object;
.source "AppBarLayoutOverScrollViewBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/AppBarLayout;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;->b:Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;->a:Landroid/support/design/widget/AppBarLayout;

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
    .line 395
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 396
    .local v0, "value":F
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;->b:Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;F)V

    .line 397
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;->a:Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;->b:Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;->b:Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;->b:Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->b(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->setBottom(I)V

    .line 398
    return-void
.end method
