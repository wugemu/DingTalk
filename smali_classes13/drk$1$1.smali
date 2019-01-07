.class final Ldrk$1$1;
.super Ljava/lang/Object;
.source "InputSwitchManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldrk$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrk$1;


# direct methods
.method constructor <init>(Ldrk$1;)V
    .locals 0
    .param p1, "this$1"    # Ldrk$1;

    .prologue
    .line 90
    iput-object p1, p0, Ldrk$1$1;->a:Ldrk$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Ldrk$1$1;->a:Ldrk$1;

    iget v0, v0, Ldrk$1;->a:I

    iget-object v1, p0, Ldrk$1$1;->a:Ldrk$1;

    iget-object v1, v1, Ldrk$1;->d:Ldrk;

    .line 2010
    iget v1, v1, Ldrk;->a:I

    .line 100
    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Ldrk$1$1;->a:Ldrk$1;

    iget-object v0, v0, Ldrk$1;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 102
    iget-object v0, p0, Ldrk$1$1;->a:Ldrk$1;

    iget-object v0, v0, Ldrk$1;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Ldrk$1$1;->a:Ldrk$1;

    iget v0, v0, Ldrk$1;->a:I

    iget-object v1, p0, Ldrk$1$1;->a:Ldrk$1;

    iget-object v1, v1, Ldrk$1;->d:Ldrk;

    .line 1010
    iget v1, v1, Ldrk;->a:I

    .line 93
    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Ldrk$1$1;->a:Ldrk$1;

    iget-object v0, v0, Ldrk$1;->b:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 96
    :cond_0
    return-void
.end method
