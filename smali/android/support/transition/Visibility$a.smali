.class final Landroid/support/transition/Visibility$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Lab$a;
.implements Landroid/support/transition/Transition$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:Landroid/view/ViewGroup;

.field private final e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "suppressLayout"    # Z

    .prologue
    const/4 v1, 0x1

    .line 481
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/Visibility$a;->a:Z

    .line 482
    iput-object p1, p0, Landroid/support/transition/Visibility$a;->b:Landroid/view/View;

    .line 483
    iput p2, p0, Landroid/support/transition/Visibility$a;->c:I

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/transition/Visibility$a;->d:Landroid/view/ViewGroup;

    .line 485
    iput-boolean v1, p0, Landroid/support/transition/Visibility$a;->e:Z

    .line 487
    invoke-direct {p0, v1}, Landroid/support/transition/Visibility$a;->a(Z)V

    .line 488
    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/support/transition/Visibility$a;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/transition/Visibility$a;->f:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/Visibility$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 565
    iput-boolean p1, p0, Landroid/support/transition/Visibility$a;->f:Z

    .line 566
    iget-object v0, p0, Landroid/support/transition/Visibility$a;->d:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lbn;->a(Landroid/view/ViewGroup;Z)V

    .line 568
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 552
    iget-boolean v0, p0, Landroid/support/transition/Visibility$a;->a:Z

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/support/transition/Visibility$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/Visibility$a;->c:I

    invoke-static {v0, v1}, Lbs;->a(Landroid/view/View;I)V

    .line 555
    iget-object v0, p0, Landroid/support/transition/Visibility$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Landroid/support/transition/Visibility$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 560
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$a;->a(Z)V

    .line 561
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public final a(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 533
    invoke-direct {p0}, Landroid/support/transition/Visibility$a;->e()V

    .line 534
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    .line 535
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$a;->a(Z)V

    .line 544
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$a;->a(Z)V

    .line 549
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/Visibility$a;->a:Z

    .line 511
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 523
    invoke-direct {p0}, Landroid/support/transition/Visibility$a;->e()V

    .line 524
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/support/transition/Visibility$a;->a:Z

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/support/transition/Visibility$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/Visibility$a;->c:I

    invoke-static {v0, v1}, Lbs;->a(Landroid/view/View;I)V

    .line 497
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 515
    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 503
    iget-boolean v0, p0, Landroid/support/transition/Visibility$a;->a:Z

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/support/transition/Visibility$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbs;->a(Landroid/view/View;I)V

    .line 506
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 519
    return-void
.end method
