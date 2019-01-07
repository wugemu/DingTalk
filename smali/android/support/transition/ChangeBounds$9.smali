.class final Landroid/support/transition/ChangeBounds$9;
.super Lbd;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/support/transition/ChangeBounds;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/transition/ChangeBounds;

    .prologue
    .line 390
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$9;->c:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$9;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lbd;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds$9;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbn;->a(Landroid/view/ViewGroup;Z)V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds$9;->a:Z

    .line 397
    return-void
.end method

.method public final a(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds$9;->a:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbn;->a(Landroid/view/ViewGroup;Z)V

    .line 404
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    .line 405
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbn;->a(Landroid/view/ViewGroup;Z)V

    .line 410
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbn;->a(Landroid/view/ViewGroup;Z)V

    .line 415
    return-void
.end method
