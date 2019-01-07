.class final Landroid/support/v4/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/CircularProgressDrawable$a;

.field final synthetic b:Landroid/support/v4/widget/CircularProgressDrawable;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$a;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/CircularProgressDrawable;

    .prologue
    .line 573
    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->b:Landroid/support/v4/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 588
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 583
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 592
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->b:Landroid/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->a(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$a;Z)V

    .line 593
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->c()V

    .line 594
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 1810
    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(I)V

    .line 595
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->b:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->a(Landroid/support/v4/widget/CircularProgressDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->b:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v0, v4}, Landroid/support/v4/widget/CircularProgressDrawable;->a(Landroid/support/v4/widget/CircularProgressDrawable;Z)Z

    .line 599
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 600
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 601
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 602
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(Z)V

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->b:Landroid/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->b:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v1}, Landroid/support/v4/widget/CircularProgressDrawable;->b(Landroid/support/v4/widget/CircularProgressDrawable;)F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->a(Landroid/support/v4/widget/CircularProgressDrawable;F)F

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 577
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->b:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->a(Landroid/support/v4/widget/CircularProgressDrawable;F)F

    .line 578
    return-void
.end method
