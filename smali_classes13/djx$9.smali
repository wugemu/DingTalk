.class final Ldjx$9;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjx;


# direct methods
.method constructor <init>(Ldjx;)V
    .locals 0
    .param p1, "this$0"    # Ldjx;

    .prologue
    .line 490
    iput-object p1, p0, Ldjx$9;->a:Ldjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 504
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 497
    iget-object v0, p0, Ldjx$9;->a:Ldjx;

    iget-object v1, p0, Ldjx$9;->a:Ldjx;

    .line 1046
    iget-object v1, v1, Ldjx;->h:Landroid/view/View;

    .line 497
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2046
    iput-object v1, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 498
    iget-object v0, p0, Ldjx$9;->a:Ldjx;

    .line 3046
    iget-object v0, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 498
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 499
    iget-object v0, p0, Ldjx$9;->a:Ldjx;

    .line 4046
    iget-object v0, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 499
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 500
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 508
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 493
    return-void
.end method
