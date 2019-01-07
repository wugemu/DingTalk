.class final Ljon$7;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 700
    iput-object p1, p0, Ljon$7;->a:Ljon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, -0x2

    const/high16 v5, 0x42b40000    # 90.0f

    .line 703
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 704
    .local v1, "value":F
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 705
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Ljon$7;->a:Ljon;

    iget v2, v2, Ljon;->o:I

    int-to-float v2, v2

    iget-object v3, p0, Ljon$7;->a:Ljon;

    iget v3, v3, Ljon;->m:I

    iget-object v4, p0, Ljon$7;->a:Ljon;

    iget v4, v4, Ljon;->o:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 706
    iget-object v2, p0, Ljon$7;->a:Ljon;

    iget v2, v2, Ljon;->p:I

    int-to-float v2, v2

    iget-object v3, p0, Ljon$7;->a:Ljon;

    iget v3, v3, Ljon;->n:I

    iget-object v4, p0, Ljon$7;->a:Ljon;

    iget v4, v4, Ljon;->p:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 707
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 708
    iget-object v2, p0, Ljon$7;->a:Ljon;

    invoke-static {v2}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    return-void
.end method
