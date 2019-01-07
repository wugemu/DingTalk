.class final Lkfc$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkfc$c;

.field final synthetic b:Lkfc;


# direct methods
.method constructor <init>(Lkfc;Lkfc$c;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lkfc$3;->b:Lkfc;

    iput-object p2, p0, Lkfc$3;->a:Lkfc$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 354
    iget-object v0, p0, Lkfc$3;->a:Lkfc$c;

    invoke-virtual {v0}, Lkfc$c;->a()V

    .line 355
    iget-object v0, p0, Lkfc$3;->a:Lkfc$c;

    invoke-virtual {v0}, Lkfc$c;->b()V

    .line 356
    iget-object v0, p0, Lkfc$3;->a:Lkfc$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkfc$c;->a(Z)V

    .line 357
    iget-object v0, p0, Lkfc$3;->b:Lkfc;

    invoke-static {v0}, Lkfc;->b(Lkfc;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lkfc$3;->b:Lkfc;

    invoke-static {v1}, Lkfc;->a(Lkfc;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 350
    return-void
.end method
