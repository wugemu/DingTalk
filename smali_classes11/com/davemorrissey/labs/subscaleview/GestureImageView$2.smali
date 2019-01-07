.class final Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 611
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->g(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 614
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/content/Context;)V

    .line 615
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 619
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 620
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;F)F

    .line 621
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v2, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Z)Z

    .line 622
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v2, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Z)Z

    .line 623
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->i(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 624
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;F)F

    .line 625
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->j(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->j(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 626
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v1, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Z)Z

    .line 635
    :goto_0
    return v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move v0, v1

    .line 632
    goto :goto_0

    .line 635
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43fa0000    # 500.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v6, 0x3e800000    # 0.25f

    const/4 v3, 0x1

    .line 590
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_3

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v8

    if-gtz v4, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 591
    new-instance v2, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float v5, p3, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, p4

    add-float/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 592
    .local v2, "vTranslateEnd":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)F

    move-result v5

    div-float v0, v4, v5

    .line 593
    .local v0, "sCenterXEnd":F
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)F

    move-result v5

    div-float v1, v4, v5

    .line 594
    .local v1, "sCenterYEnd":F
    new-instance v4, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v5, v6, v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;B)V

    .line 3656
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f()Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3657
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unknown easing type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3659
    :cond_2
    iput v3, v4, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a:I

    .line 4670
    iput-boolean v9, v4, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->c:Z

    .line 594
    invoke-virtual {v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a()V

    .line 597
    .end local v0    # "sCenterXEnd":F
    .end local v1    # "sCenterYEnd":F
    .end local v2    # "vTranslateEnd":Landroid/graphics/PointF;
    :goto_0
    return v3

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    goto :goto_0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 602
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->performClick()Z

    .line 603
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 606
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
