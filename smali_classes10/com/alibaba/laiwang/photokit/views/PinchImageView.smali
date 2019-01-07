.class public Lcom/alibaba/laiwang/photokit/views/PinchImageView;
.super Landroid/widget/ImageView;
.source "PinchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;,
        Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;,
        Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnLongClickListener;

.field private c:Landroid/graphics/Matrix;

.field private d:I

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:F

.field private h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

.field private i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

.field private j:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->f:Landroid/graphics/PointF;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->g:F

    .line 250
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;-><init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->j:Landroid/view/GestureDetector;

    .line 1096
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->f:Landroid/graphics/PointF;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->g:F

    .line 250
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;-><init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->j:Landroid/view/GestureDetector;

    .line 2096
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->f:Landroid/graphics/PointF;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->g:F

    .line 250
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;-><init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->j:Landroid/view/GestureDetector;

    .line 3096
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->b:Landroid/view/View$OnLongClickListener;

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

    .line 410
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v1

    aget v1, v1, v4

    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(FFFF)F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->g:F

    .line 412
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->b(FFFF)[F

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    .line 6681
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 6682
    new-array v0, v3, [F

    .line 6683
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 6684
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6685
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 413
    .local v0, "center":[F
    :goto_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->f:Landroid/graphics/PointF;

    aget v2, v0, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 414
    return-void

    .line 6688
    .end local v0    # "center":[F
    :cond_0
    new-array v0, v3, [F

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/views/PinchImageView;FF)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/views/PinchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    const/high16 v4, 0x41800000    # 16.0f

    .line 19
    .line 7591
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7592
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    if-eqz v0, :cond_1

    .line 7593
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->cancel()V

    .line 7594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    .line 7596
    :cond_1
    new-instance v0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    div-float v3, p1, v5

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    div-float v3, p2, v5

    mul-float/2addr v3, v4

    aput v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;-><init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;[F)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    .line 7597
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->start()V

    .line 19
    :cond_2
    return-void
.end method

.method private a(FF)Z
    .locals 7
    .param p1, "xDiff"    # F
    .param p2, "yDiff"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v3

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getImageBound()Landroid/graphics/RectF;

    move-result-object v0

    .line 355
    .local v0, "bound":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v2, v4

    .line 356
    .local v2, "displayWidth":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v1, v4

    .line 358
    .local v1, "displayHeight":F
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v2

    if-ltz v4, :cond_7

    .line 361
    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p1

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6

    .line 363
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_5

    .line 364
    iget v4, v0, Landroid/graphics/RectF;->left:F

    neg-float p1, v4

    .line 380
    :cond_2
    :goto_1
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v1

    if-ltz v4, :cond_a

    .line 382
    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p2

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    .line 383
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_8

    .line 384
    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float p2, v4

    .line 396
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6233
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a()V

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->invalidate()V

    .line 401
    cmpl-float v4, p1, v6

    if-nez v4, :cond_4

    cmpl-float v4, p2, v6

    if-eqz v4, :cond_0

    .line 402
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 367
    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 370
    :cond_6
    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, p1

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    .line 372
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_7

    .line 373
    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float p1, v2, v4

    goto :goto_1

    .line 376
    :cond_7
    const/4 p1, 0x0

    goto :goto_1

    .line 386
    :cond_8
    const/4 p2, 0x0

    goto :goto_2

    .line 388
    :cond_9
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3

    .line 389
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_a

    .line 390
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float p2, v1, v4

    goto :goto_2

    .line 392
    :cond_a
    const/4 p2, 0x0

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/views/PinchImageView;FF)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/views/PinchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 19
    .line 8446
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8447
    :cond_1
    :goto_0
    return-void

    .line 8450
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getInnerMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 8452
    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v0

    aget v0, v0, v5

    .line 8453
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v1

    aget v5, v1, v5

    .line 8454
    mul-float v6, v0, v5

    .line 8456
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v7, v1

    .line 8457
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v8, v1

    .line 8459
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMaxScale()F

    move-result v1

    .line 9223
    mul-float/2addr v5, v0

    .line 9224
    cmpg-float v5, v5, v2

    if-gez v5, :cond_5

    .line 8463
    :goto_1
    cmpg-float v5, v2, v0

    if-gez v5, :cond_6

    .line 8469
    :goto_2
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 8471
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-direct {v2, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 8473
    div-float v5, v0, v6

    div-float/2addr v0, v6

    invoke-virtual {v2, v5, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 8475
    div-float v0, v7, v9

    sub-float/2addr v0, p1

    div-float v5, v8, v9

    sub-float/2addr v5, p2

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 8477
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 8478
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 8479
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8480
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8484
    iget v0, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v5

    cmpg-float v0, v0, v7

    if-gez v0, :cond_7

    .line 8485
    div-float v0, v7, v9

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    div-float/2addr v5, v9

    sub-float/2addr v0, v5

    .line 8491
    :goto_3
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v8

    if-gez v5, :cond_9

    .line 8492
    div-float v3, v8, v9

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    .line 8499
    :cond_3
    :goto_4
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 8501
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    if-eqz v0, :cond_4

    .line 8502
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->cancel()V

    .line 8503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    .line 8506
    :cond_4
    new-instance v0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;-><init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    .line 8507
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->start()V

    goto/16 :goto_0

    :cond_5
    move v2, v0

    .line 9227
    goto/16 :goto_1

    .line 8465
    :cond_6
    cmpl-float v0, v2, v1

    if-lez v0, :cond_c

    move v0, v1

    .line 8466
    goto/16 :goto_2

    .line 8486
    :cond_7
    iget v0, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 8487
    iget v0, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_3

    .line 8488
    :cond_8
    iget v0, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_b

    .line 8489
    iget v0, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v0

    goto :goto_3

    .line 8493
    :cond_9
    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_a

    .line 8494
    iget v3, v4, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    goto :goto_4

    .line 8495
    :cond_a
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_3

    .line 8496
    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v8, v3

    goto :goto_4

    :cond_b
    move v0, v3

    goto :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/laiwang/photokit/views/PinchImageView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/views/PinchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(FF)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lhdc;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getImageBound()Landroid/graphics/RectF;

    move-result-object v0

    .line 239
    .local v0, "bound":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 242
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredWidth()I

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredHeight()I

    .line 245
    .end local v0    # "bound":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public getCurrentImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getInnerMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 174
    .local v0, "result":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 175
    return-object v0
.end method

.method public getImageBound()Landroid/graphics/RectF;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getCurrentImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 184
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 185
    .local v0, "bound":Landroid/graphics/RectF;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public getInnerMatrix()Landroid/graphics/Matrix;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 145
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 146
    .local v4, "result":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredWidth()I

    move-result v6

    int-to-float v1, v6

    .line 149
    .local v1, "displayWidth":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v0, v6

    .line 150
    .local v0, "displayHeight":F
    cmpl-float v6, v1, v7

    if-lez v6, :cond_0

    cmpl-float v6, v0, v7

    if-lez v6, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v3, v6

    .line 153
    .local v3, "imageWidth":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v2, v6

    .line 154
    .local v2, "imageHeight":F
    cmpl-float v6, v3, v7

    if-lez v6, :cond_0

    cmpl-float v6, v2, v7

    if-lez v6, :cond_0

    .line 157
    div-float v6, v3, v2

    div-float v7, v1, v0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 158
    div-float v5, v1, v3

    .line 163
    .local v5, "scale":F
    :goto_0
    div-float v6, v3, v8

    div-float v7, v2, v8

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 164
    sub-float v6, v1, v3

    div-float/2addr v6, v8

    sub-float v7, v0, v2

    div-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 168
    .end local v0    # "displayHeight":F
    .end local v1    # "displayWidth":F
    .end local v2    # "imageHeight":F
    .end local v3    # "imageWidth":F
    .end local v5    # "scale":F
    :cond_0
    return-object v4

    .line 160
    .restart local v0    # "displayHeight":F
    .restart local v1    # "displayWidth":F
    .restart local v2    # "imageHeight":F
    .restart local v3    # "imageWidth":F
    :cond_1
    div-float v5, v0, v2

    .restart local v5    # "scale":F
    goto :goto_0
.end method

.method protected getMaxScale()F
    .locals 1

    .prologue
    .line 218
    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public getOuterMatrix()Landroid/graphics/Matrix;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getPinchMode()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getCurrentImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a()V

    .line 135
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 277
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 279
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->j:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 282
    .local v0, "action":I
    if-eq v0, v4, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    .line 283
    :cond_0
    iget v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    if-ne v3, v8, :cond_2

    .line 3513
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_4

    .line 286
    :cond_2
    :goto_0
    iput v5, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    .line 344
    :cond_3
    :goto_1
    return v4

    .line 3519
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getCurrentImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 3521
    invoke-static {v8}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v3

    aget v3, v3, v5

    .line 3523
    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-static {v9}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(Landroid/graphics/Matrix;)[F

    move-result-object v9

    aget v9, v9, v5

    .line 3525
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    .line 3526
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    .line 3527
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getMaxScale()F

    move-result v12

    .line 3534
    cmpl-float v13, v3, v12

    if-lez v13, :cond_1b

    .line 3535
    div-float v3, v12, v3

    .line 3538
    :goto_2
    mul-float v12, v9, v3

    cmpg-float v12, v12, v6

    if-gez v12, :cond_1a

    .line 3539
    div-float v3, v6, v9

    move v9, v3

    .line 3542
    :goto_3
    cmpl-float v3, v9, v6

    if-eqz v3, :cond_19

    move v3, v4

    .line 3546
    :goto_4
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3547
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v9, v9, v8, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3548
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v8, v7, v7, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3550
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3552
    iget v6, v8, Landroid/graphics/RectF;->right:F

    iget v12, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v12

    cmpg-float v6, v6, v10

    if-gez v6, :cond_8

    .line 3553
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v10, v6

    iget v10, v8, Landroid/graphics/RectF;->right:F

    iget v12, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    sub-float/2addr v6, v10

    .line 3559
    :goto_5
    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    iget v12, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    .line 3560
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v11, v10

    iget v11, v8, Landroid/graphics/RectF;->bottom:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    sub-float v8, v10, v8

    .line 3567
    :goto_6
    cmpl-float v10, v6, v7

    if-nez v10, :cond_5

    cmpl-float v7, v8, v7

    if-eqz v7, :cond_6

    :cond_5
    move v3, v4

    .line 3571
    :cond_6
    if-eqz v3, :cond_2

    .line 3573
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    if-eqz v3, :cond_7

    .line 3574
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->cancel()V

    .line 3575
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    .line 3578
    :cond_7
    new-instance v3, Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-direct {v3, v7}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3580
    new-instance v7, Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    invoke-direct {v7, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3581
    iget-object v10, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v9, v10, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3582
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3584
    new-instance v6, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-direct {v6, p0, v3, v7}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;-><init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    iput-object v6, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    .line 3585
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->start()V

    goto/16 :goto_0

    .line 3554
    :cond_8
    iget v6, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 3555
    iget v6, v8, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    goto :goto_5

    .line 3556
    :cond_9
    iget v6, v8, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_18

    .line 3557
    iget v6, v8, Landroid/graphics/RectF;->right:F

    sub-float v6, v10, v6

    goto :goto_5

    .line 3561
    :cond_a
    iget v10, v8, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v7

    if-lez v10, :cond_b

    .line 3562
    iget v8, v8, Landroid/graphics/RectF;->top:F

    neg-float v8, v8

    goto :goto_6

    .line 3563
    :cond_b
    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_17

    .line 3564
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v11, v8

    goto :goto_6

    .line 287
    :cond_c
    const/4 v3, 0x6

    if-ne v0, v3, :cond_e

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v8, :cond_3

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_d

    .line 292
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(FFFF)V

    goto/16 :goto_1

    .line 294
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    if-ne v3, v4, :cond_3

    .line 295
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(FFFF)V

    goto/16 :goto_1

    .line 299
    :cond_e
    if-nez v0, :cond_11

    .line 301
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->isRunning()Z

    move-result v3

    if-nez v3, :cond_3

    .line 303
    :cond_f
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    if-eqz v3, :cond_10

    .line 304
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->cancel()V

    .line 305
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    .line 307
    :cond_10
    iput v4, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    .line 308
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    .line 311
    :cond_11
    const/4 v3, 0x5

    if-ne v0, v3, :cond_14

    .line 313
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    if-eqz v3, :cond_12

    .line 314
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;->cancel()V

    .line 315
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->i:Lcom/alibaba/laiwang/photokit/views/PinchImageView$a;

    .line 318
    :cond_12
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    if-eqz v3, :cond_13

    .line 319
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->cancel()V

    .line 320
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    .line 322
    :cond_13
    iput v8, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    .line 323
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(FFFF)V

    goto/16 :goto_1

    .line 324
    :cond_14
    if-ne v0, v8, :cond_3

    .line 325
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->h:Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$c;->isRunning()Z

    move-result v3

    if-nez v3, :cond_3

    .line 327
    :cond_15
    iget v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    if-ne v3, v4, :cond_16

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v3, v5}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(FF)Z

    .line 331
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    .line 333
    :cond_16
    iget v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->d:I

    if-ne v3, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 335
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->a(FFFF)F

    move-result v1

    .line 337
    .local v1, "distance":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;->b(FFFF)[F

    move-result-object v2

    .line 338
    .local v2, "lineCenter":[F
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    aget v5, v2, v5

    aget v6, v2, v4

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 340
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->f:Landroid/graphics/PointF;

    iget v5, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->g:F

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->e:Landroid/graphics/PointF;

    .line 4424
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 4428
    mul-float/2addr v5, v1

    .line 4429
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 4431
    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4432
    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v8

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v6, v3

    invoke-virtual {v7, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4434
    iput-object v7, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->c:Landroid/graphics/Matrix;

    .line 5233
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a()V

    .line 4437
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->invalidate()V

    goto/16 :goto_1

    .end local v1    # "distance":F
    .end local v2    # "lineCenter":[F
    :cond_17
    move v8, v7

    goto/16 :goto_6

    :cond_18
    move v6, v7

    goto/16 :goto_5

    :cond_19
    move v3, v5

    goto/16 :goto_4

    :cond_1a
    move v9, v3

    goto/16 :goto_3

    :cond_1b
    move v3, v6

    goto/16 :goto_2
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a()V

    .line 130
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a:Landroid/view/View$OnClickListener;

    .line 114
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->b:Landroid/view/View$OnLongClickListener;

    .line 120
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 124
    return-void
.end method
