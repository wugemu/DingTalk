.class final Lhdz$4;
.super Ljava/lang/Object;
.source "FloatingLayerDelegate.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdz;


# direct methods
.method constructor <init>(Lhdz;)V
    .locals 0
    .param p1, "this$0"    # Lhdz;

    .prologue
    .line 479
    iput-object p1, p0, Lhdz$4;->a:Lhdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 497
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 487
    iget-object v0, p0, Lhdz$4;->a:Lhdz;

    invoke-static {v0}, Lhdz;->m(Lhdz;)V

    .line 488
    iget-object v0, p0, Lhdz$4;->a:Lhdz;

    invoke-static {v0}, Lhdz;->n(Lhdz;)V

    .line 489
    iget-object v0, p0, Lhdz$4;->a:Lhdz;

    invoke-static {v0}, Lhdz;->o(Lhdz;)V

    .line 491
    iget-object v0, p0, Lhdz$4;->a:Lhdz;

    invoke-static {v0}, Lhdz;->p(Lhdz;)V

    .line 492
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 502
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 483
    return-void
.end method
