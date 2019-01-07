.class final Lco$2;
.super Lco$b;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lco;


# direct methods
.method constructor <init>(Lco;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "this$0"    # Lco;
    .param p2, "wrapped"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1602
    iput-object p1, p0, Lco$2;->b:Lco;

    iput-object p3, p0, Lco$2;->a:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lco$b;-><init>(Landroid/view/animation/Animation$AnimationListener;B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1605
    invoke-super {p0, p1}, Lco$b;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1606
    iget-object v0, p0, Lco$2;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lco$2;->a:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1608
    iget-object v0, p0, Lco$2;->b:Lco;

    iget-object v1, p0, Lco$2;->a:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lco$2;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1610
    :cond_0
    return-void
.end method
