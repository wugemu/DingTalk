.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;
.super Ljava/lang/Object;
.source "ArActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    iput p2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 484
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 485
    .local v0, "current":F
    const/high16 v1, -0x3bea0000    # -600.0f

    sub-float v1, v0, v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->m(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lov$a;->scan_down:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Z)Z

    .line 492
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)F

    .line 494
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    iget-object v2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->m(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)F

    .line 499
    :goto_1
    return-void

    .line 488
    :cond_1
    iget v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->a:F

    sub-float/2addr v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->m(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lov$a;->scan_up:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Z)Z

    goto :goto_0

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    iget-object v2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->m(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)F

    .line 497
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;->b:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)F

    goto :goto_1
.end method
