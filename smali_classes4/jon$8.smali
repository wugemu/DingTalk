.class final Ljon$8;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljon;


# direct methods
.method constructor <init>(Ljon;)V
    .locals 0
    .param p1, "this$0"    # Ljon;

    .prologue
    .line 717
    iput-object p1, p0, Ljon$8;->a:Ljon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 742
    iget-object v0, p0, Ljon$8;->a:Ljon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljon;->h:Z

    .line 743
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 725
    iget-object v0, p0, Ljon$8;->a:Ljon;

    iput-boolean v4, v0, Ljon;->h:Z

    .line 726
    iget-object v0, p0, Ljon$8;->a:Ljon;

    iget-object v0, v0, Ljon;->l:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Ljon$8;->a:Ljon;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Ljon$8;->a:Ljon;

    iget v2, v2, Ljon;->o:I

    iget-object v3, p0, Ljon$8;->a:Ljon;

    iget v3, v3, Ljon;->p:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, v0, Ljon;->l:Landroid/view/ViewGroup$LayoutParams;

    .line 728
    iget-object v0, p0, Ljon$8;->a:Ljon;

    iget-object v0, v0, Ljon;->l:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 730
    :cond_0
    iget-object v0, p0, Ljon$8;->a:Ljon;

    iget-object v0, v0, Ljon;->k:Landroid/widget/FrameLayout;

    iget-object v1, p0, Ljon$8;->a:Ljon;

    invoke-static {v1}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 731
    iget-object v0, p0, Ljon$8;->a:Ljon;

    iget-object v0, v0, Ljon;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Ljon$8;->a:Ljon;

    invoke-static {v1}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v1

    iget-object v2, p0, Ljon$8;->a:Ljon;

    iget v2, v2, Ljon;->q:I

    iget-object v3, p0, Ljon$8;->a:Ljon;

    iget-object v3, v3, Ljon;->l:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v0, p0, Ljon$8;->a:Ljon;

    invoke-static {v0}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v0

    iget-object v1, p0, Ljon$8;->a:Ljon;

    iget v1, v1, Ljon;->f:F

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setTranslationX(F)V

    .line 733
    iget-object v0, p0, Ljon$8;->a:Ljon;

    invoke-static {v0}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v0

    iget-object v1, p0, Ljon$8;->a:Ljon;

    iget v1, v1, Ljon;->g:F

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setTranslationY(F)V

    .line 734
    iget-object v0, p0, Ljon$8;->a:Ljon;

    invoke-static {v0}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->requestLayout()V

    .line 735
    iget-object v0, p0, Ljon$8;->a:Ljon;

    invoke-static {v0, v4}, Ljon;->a(Ljon;Z)Z

    .line 736
    iget-object v0, p0, Ljon$8;->a:Ljon;

    invoke-static {v0}, Ljon;->d(Ljon;)Ljom;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Ljon$8;->a:Ljon;

    invoke-static {v0}, Ljon;->d(Ljon;)Ljom;

    move-result-object v0

    iget-object v1, p0, Ljon$8;->a:Ljon;

    invoke-virtual {v0, v1}, Ljom;->a(Ljom$a;)V

    .line 738
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 748
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 721
    return-void
.end method
