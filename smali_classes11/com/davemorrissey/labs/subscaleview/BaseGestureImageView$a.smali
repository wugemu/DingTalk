.class final Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
.super Ljava/lang/Object;
.source "BaseGestureImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;,
        Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

.field private b:Z

.field private c:Z

.field private d:Landroid/graphics/PointF;

.field private e:Landroid/graphics/PointF;

.field private f:F

.field private g:Landroid/animation/ValueAnimator;

.field private h:Z

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b:Z

    .line 251
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c:Z

    .line 255
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    .line 258
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->e:Landroid/graphics/PointF;

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->f:F

    .line 273
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;

    invoke-direct {v2, p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->j:Landroid/view/GestureDetector;

    .line 753
    return-void
.end method

.method synthetic constructor <init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private a(FFFF)V
    .locals 5
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 466
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v1

    aget v1, v1, v4

    .line 467
    invoke-static {p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(FFFF)F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->f:F

    .line 469
    invoke-static {p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->b(FFFF)[F

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    .line 470
    invoke-virtual {v2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v2

    .line 2799
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2800
    new-array v0, v3, [F

    .line 2801
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 2802
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2803
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 471
    .local v0, "center":[F
    :goto_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->e:Landroid/graphics/PointF;

    aget v2, v0, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 472
    return-void

    .line 2806
    .end local v0    # "center":[F
    :cond_0
    new-array v0, v3, [F

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 8
    .param p1, "xDiff"    # F
    .param p2, "yDiff"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 400
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v4

    .line 404
    :cond_1
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getImageFitMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 405
    .local v1, "current":Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 407
    new-instance v0, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 409
    .local v0, "bound":Landroid/graphics/RectF;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 411
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v3, v5

    .line 412
    .local v3, "displayWidth":F
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    .line 414
    .local v2, "displayHeight":F
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v3

    if-ltz v5, :cond_7

    .line 417
    iget v5, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, p1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    .line 419
    iget v5, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    .line 420
    iget v5, v0, Landroid/graphics/RectF;->left:F

    neg-float p1, v5

    .line 436
    :cond_2
    :goto_1
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v2

    if-ltz v5, :cond_a

    .line 438
    iget v5, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, p2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_9

    .line 439
    iget v5, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    .line 440
    iget v5, v0, Landroid/graphics/RectF;->top:F

    neg-float p2, v5

    .line 452
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 454
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->invalidate()V

    .line 456
    cmpl-float v5, p1, v7

    if-nez v5, :cond_4

    cmpl-float v5, p2, v7

    if-eqz v5, :cond_0

    .line 457
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 423
    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 426
    :cond_6
    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, p1

    cmpg-float v5, v5, v3

    if-gez v5, :cond_2

    .line 428
    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_7

    .line 429
    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float p1, v3, v5

    goto :goto_1

    .line 432
    :cond_7
    const/4 p1, 0x0

    goto :goto_1

    .line 442
    :cond_8
    const/4 p2, 0x0

    goto :goto_2

    .line 444
    :cond_9
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, p2

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 445
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_a

    .line 446
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float p2, v2, v5

    goto :goto_2

    .line 448
    :cond_a
    const/4 p2, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
    .param p1, "x1"    # Z

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)V
    .locals 3
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 245
    .line 3382
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b:Z

    .line 3383
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c:Z

    .line 3384
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    .line 3385
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->e:Landroid/graphics/PointF;

    .line 3386
    const/4 v0, 0x0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->f:F

    .line 3387
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3388
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3389
    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    .line 3391
    :cond_0
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    .line 3392
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 3393
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3394
    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    .line 245
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;FF)V
    .locals 7
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    const/4 v2, 0x2

    const/high16 v6, 0x447a0000    # 1000.0f

    const/high16 v5, 0x41800000    # 16.0f

    .line 245
    .line 3720
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3722
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    .line 3723
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;

    new-array v2, v2, [F

    const/4 v3, 0x0

    div-float v4, p1, v6

    mul-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    div-float v4, p2, v6

    mul-float/2addr v4, v5

    aput v4, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$a;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;[F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3724
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0xf4240

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3725
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 245
    :cond_0
    return-void

    .line 3722
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;FF)V
    .locals 12
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 245
    .line 4520
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4521
    :cond_0
    :goto_0
    return-void

    .line 4524
    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getImageFitMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 4526
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v2

    aget v2, v2, v10

    .line 4528
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v3

    aget v3, v3, v10

    .line 4530
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v4}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    .line 4531
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    .line 4533
    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v6

    cmpl-float v6, v2, v6

    if-gez v6, :cond_0

    .line 4537
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 4538
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v7}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4540
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 4542
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_8

    .line 4544
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v3

    div-float/2addr v3, v2

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v8

    div-float v2, v8, v2

    invoke-virtual {v7, v3, v2, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4546
    div-float v2, v4, v9

    sub-float/2addr v2, p1

    div-float v3, v5, v9

    sub-float/2addr v3, p2

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4548
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 4549
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4550
    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 4551
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v3, v1, v1, v0, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4552
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4556
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 4557
    div-float v0, v4, v9

    iget v2, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    div-float/2addr v2, v9

    sub-float/2addr v0, v2

    .line 4563
    :goto_1
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    .line 4564
    div-float v1, v5, v9

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    .line 4571
    :cond_2
    :goto_2
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4572
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v0, v11}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;Z)Z

    .line 4577
    :goto_3
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 4578
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    .line 4582
    :cond_3
    iput-boolean v11, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    .line 4583
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    .line 4584
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;

    invoke-direct {v1, p0, v6, v7}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4585
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$2;

    invoke-direct {v1, p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$2;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4606
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4607
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 4558
    :cond_4
    iget v0, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 4559
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1

    .line 4560
    :cond_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_9

    .line 4561
    iget v0, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v4, v0

    goto :goto_1

    .line 4565
    :cond_6
    iget v2, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7

    .line 4566
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_2

    .line 4567
    :cond_7
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    .line 4568
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v5, v1

    goto :goto_2

    .line 4574
    :cond_8
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v0, v10}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;Z)Z

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_1

    .line 4583
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->j:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 309
    .local v2, "action":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_10

    .line 310
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b:Z

    .line 311
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c:Z

    if-eqz v5, :cond_1

    .line 1613
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    .line 314
    :cond_1
    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c:Z

    .line 377
    :cond_2
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 1617
    :cond_3
    const/4 v5, 0x0

    .line 1618
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 1620
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getImageFitMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 1621
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1623
    invoke-static {v10}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v6

    const/4 v7, 0x0

    aget v11, v6, v7

    .line 1625
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-static {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v6

    const/4 v7, 0x0

    aget v12, v6, v7

    .line 1627
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredWidth()I

    move-result v6

    int-to-float v13, v6

    .line 1628
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v14, v6

    .line 1630
    new-instance v15, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v15, v6, v7, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1632
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1634
    const/4 v6, 0x0

    .line 1635
    const/4 v7, 0x0

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v16

    cmpl-float v16, v11, v16

    if-lez v16, :cond_4

    .line 1638
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v16

    mul-float v8, v8, v16

    div-float/2addr v8, v11

    .line 1641
    :cond_4
    mul-float v11, v12, v8

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v11, v11, v16

    if-gez v11, :cond_5

    .line 1642
    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v11, v8

    mul-float/2addr v8, v12

    div-float v8, v11, v8

    .line 1645
    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v11

    if-eqz v11, :cond_6

    .line 1646
    const/4 v5, 0x1

    .line 1649
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v8, v8, v11, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1651
    invoke-virtual {v10, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1653
    iget v10, v15, Landroid/graphics/RectF;->right:F

    iget v11, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    cmpg-float v10, v10, v13

    if-gez v10, :cond_c

    .line 1654
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v13, v6

    iget v10, v15, Landroid/graphics/RectF;->right:F

    iget v11, v15, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v6, v10

    .line 1660
    :cond_7
    :goto_2
    iget v10, v15, Landroid/graphics/RectF;->bottom:F

    iget v11, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    cmpg-float v10, v10, v14

    if-gez v10, :cond_e

    .line 1661
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v14, v7

    iget v10, v15, Landroid/graphics/RectF;->bottom:F

    iget v11, v15, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v7, v10

    .line 1668
    :cond_8
    :goto_3
    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-nez v10, :cond_9

    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-eqz v10, :cond_a

    .line 1669
    :cond_9
    const/4 v5, 0x1

    .line 1672
    :cond_a
    if-eqz v5, :cond_1

    .line 1674
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_b

    .line 1675
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1676
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    .line 1679
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v8, v8, v5, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1680
    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1682
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1683
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1685
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1686
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v7}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1687
    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1689
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    .line 1690
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    .line 1691
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v5, v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$b;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$3;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1714
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1655
    :cond_c
    iget v10, v15, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_d

    .line 1656
    iget v6, v15, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    goto/16 :goto_2

    .line 1657
    :cond_d
    iget v10, v15, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v13

    if-gez v10, :cond_7

    .line 1658
    iget v6, v15, Landroid/graphics/RectF;->right:F

    sub-float v6, v13, v6

    goto/16 :goto_2

    .line 1662
    :cond_e
    iget v10, v15, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_f

    .line 1663
    iget v7, v15, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    goto/16 :goto_3

    .line 1664
    :cond_f
    iget v10, v15, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v10, v14

    if-gez v10, :cond_8

    .line 1665
    iget v7, v15, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v14, v7

    goto/16 :goto_3

    .line 315
    :cond_10
    const/4 v5, 0x6

    if-ne v2, v5, :cond_12

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_11

    .line 320
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(FFFF)V

    goto/16 :goto_1

    .line 322
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 323
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(FFFF)V

    goto/16 :goto_1

    .line 327
    :cond_12
    if-nez v2, :cond_14

    .line 329
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    if-nez v5, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_13

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 333
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    .line 335
    :cond_13
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b:Z

    .line 336
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    .line 339
    :cond_14
    const/4 v5, 0x5

    if-ne v2, v5, :cond_17

    .line 341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_15

    .line 342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 343
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->i:Landroid/animation/ValueAnimator;

    .line 346
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_16

    .line 347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 348
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->g:Landroid/animation/ValueAnimator;

    .line 350
    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b:Z

    .line 351
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c:Z

    .line 352
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(FFFF)V

    goto/16 :goto_1

    .line 353
    :cond_17
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->h:Z

    if-nez v5, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b:Z

    if-eqz v5, :cond_18

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(FF)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    .line 362
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c:Z

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 364
    const/4 v5, 0x0

    .line 365
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x1

    .line 366
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 365
    invoke-static {v5, v6, v7, v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(FFFF)F

    move-result v3

    .line 368
    .local v3, "distance":F
    const/4 v5, 0x0

    .line 369
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x1

    .line 370
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 369
    invoke-static {v5, v6, v7, v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->b(FFFF)[F

    move-result-object v4

    .line 371
    .local v4, "lineCenter":[F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 373
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->e:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->f:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->d:Landroid/graphics/PointF;

    .line 2482
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2486
    mul-float/2addr v5, v3

    .line 2489
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getImageFitMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 2491
    invoke-static {v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    .line 2494
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_19

    .line 2495
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2498
    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v9}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_1b

    .line 2499
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2504
    :cond_1a
    :goto_4
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 2506
    iget v9, v6, Landroid/graphics/PointF;->x:F

    neg-float v9, v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    invoke-virtual {v8, v9, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2507
    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2508
    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2510
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6, v8}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->setMatrixBaseFit(Landroid/graphics/Matrix;)V

    .line 2512
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-virtual {v6}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->invalidate()V

    .line 2514
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1c

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;Z)Z

    goto/16 :goto_1

    .line 2500
    :cond_1b
    mul-float v9, v5, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v10}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1a

    .line 2501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F

    move-result v5

    div-float/2addr v5, v8

    goto :goto_4

    .line 2514
    :cond_1c
    const/4 v5, 0x0

    goto :goto_5

    .line 1690
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
