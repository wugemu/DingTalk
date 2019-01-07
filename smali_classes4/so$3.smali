.class final Lso$3;
.super Ljava/lang/Object;
.source "BasePopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lso;


# direct methods
.method constructor <init>(Lso;)V
    .locals 0
    .param p1, "this$0"    # Lso;

    .prologue
    .line 786
    iput-object p1, p0, Lso$3;->a:Lso;

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
    .line 794
    iget-object v0, p0, Lso$3;->a:Lso;

    iget-object v0, v0, Lso;->e:Lsq;

    invoke-virtual {v0}, Lsq;->a()V

    .line 795
    iget-object v0, p0, Lso$3;->a:Lso;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lso;->a(Lso;Z)Z

    .line 796
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 801
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 790
    return-void
.end method
