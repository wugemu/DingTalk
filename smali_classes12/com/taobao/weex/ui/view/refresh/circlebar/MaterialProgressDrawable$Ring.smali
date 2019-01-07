.class Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 474
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 475
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 479
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 480
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 481
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    .line 482
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 483
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 500
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 505
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 507
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 508
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 509
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 511
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 512
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 513
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "bounds"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 556
    iget-boolean v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v3, :cond_1

    .line 558
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 559
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 566
    :goto_0
    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v0, v3, v4

    .line 567
    .local v0, "inset":F
    iget-wide v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 568
    .local v1, "x":F
    iget-wide v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 574
    .local v2, "y":F
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 575
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 576
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 578
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float v4, v1, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 579
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 581
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 582
    add-float v3, p2, p3

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 583
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 582
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 584
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 586
    .end local v0    # "inset":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    return-void

    .line 561
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method private getNextColorIndex()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 627
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private invalidateSelf()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 794
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 795
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 534
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 535
    .local v1, "arcBounds":Landroid/graphics/RectF;
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 536
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 538
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v2, v0, v5

    .line 539
    .local v2, "startAngle":F
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v6, v0, v5

    .line 540
    .local v6, "endAngle":F
    sub-float v3, v6, v2

    .line 542
    .local v3, "sweepAngle":F
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 545
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 547
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v4, 0xff

    if-ge v0, v4, :cond_0

    .line 548
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    rsub-int v4, v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 550
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v7, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 553
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 741
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getNextColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 623
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 691
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 636
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 785
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 786
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 787
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 788
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 789
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 790
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 791
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 647
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 648
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 526
    float-to-int v0, p1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 527
    float-to-int v0, p2

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 528
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 758
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 759
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 760
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 762
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 517
    return-void
.end method

.method public setCenterRadius(D)V
    .locals 1
    .param p1, "centerRadius"    # D

    .prologue
    .line 737
    iput-wide p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 738
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 607
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 608
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 640
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 641
    return-void
.end method

.method public setColorIndex(I)V
    .locals 2
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 615
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 616
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 617
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 594
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 597
    return-void
.end method

.method public setEndTrim(F)V
    .locals 0
    .param p1, "endTrim"    # F

    .prologue
    .line 696
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 697
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 698
    return-void
.end method

.method public setInsets(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 717
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v2

    .line 719
    .local v1, "minEdge":F
    iget-wide v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 720
    :cond_0
    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 724
    .local v0, "insets":F
    :goto_0
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 725
    return-void

    .line 722
    .end local v0    # "insets":F
    :cond_1
    div-float v2, v1, v6

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "insets":F
    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 707
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    .line 708
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 709
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 749
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 750
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 752
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0
    .param p1, "startTrim"    # F

    .prologue
    .line 673
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 674
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 675
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 661
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 662
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 663
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 664
    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 777
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 778
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 779
    return-void
.end method
