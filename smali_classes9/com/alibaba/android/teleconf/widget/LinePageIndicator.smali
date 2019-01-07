.class public Lcom/alibaba/android/teleconf/widget/LinePageIndicator;
.super Landroid/view/View;
.source "LinePageIndicator.java"

# interfaces
.implements Lezb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/support/v4/view/ViewPager$d;

.field private e:I

.field private f:Z

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    sget v0, Leuj$d;->vpiLinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->a:Landroid/graphics/Paint;

    .line 45
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    .line 54
    const/high16 v10, -0x40800000    # -1.0f

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->j:F

    .line 55
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 74
    .local v9, "res":Landroid/content/res/Resources;
    sget v10, Leuj$f;->default_line_indicator_selected_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 75
    .local v6, "defaultSelectedColor":I
    sget v10, Leuj$f;->default_line_indicator_unselected_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 76
    .local v8, "defaultUnselectedColor":I
    sget v10, Leuj$g;->default_line_indicator_line_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 77
    .local v5, "defaultLineWidth":F
    sget v10, Leuj$g;->default_line_indicator_gap_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 78
    .local v4, "defaultGapWidth":F
    sget v10, Leuj$g;->default_line_indicator_stroke_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 79
    .local v7, "defaultStrokeWidth":F
    sget v10, Leuj$e;->default_line_indicator_centered:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 82
    .local v3, "defaultCentered":Z
    sget-object v10, Leuj$n;->LinePageIndicator:[I

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v10, Leuj$n;->LinePageIndicator_lineCentered:I

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->f:Z

    .line 85
    sget v10, Leuj$n;->LinePageIndicator_lineLineWidth:I

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->g:F

    .line 86
    sget v10, Leuj$n;->LinePageIndicator_lineGapWidth:I

    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->h:F

    .line 87
    sget v10, Leuj$n;->LinePageIndicator_linesStrokeWidth:I

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {p0, v10}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->setStrokeWidth(F)V

    .line 88
    iget-object v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->a:Landroid/graphics/Paint;

    sget v11, Leuj$n;->LinePageIndicator_lineUnselectedColor:I

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    sget v11, Leuj$n;->LinePageIndicator_lineSelectedColor:I

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    sget v10, Leuj$n;->LinePageIndicator_android_background:I

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 99
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v2}, Lgo;->a(Landroid/view/ViewConfiguration;)I

    move-result v10

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->i:I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    return v0
.end method

.method public getGapWidth()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->h:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->g:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    invoke-virtual {v0}, Lgl;->getCount()I

    move-result v6

    .line 166
    .local v6, "count":I
    if-eqz v6, :cond_0

    .line 170
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    if-lt v0, v6, :cond_2

    .line 171
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 175
    :cond_2
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->g:F

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->h:F

    add-float v10, v0, v4

    .line 176
    .local v10, "lineWidthAndGap":F
    int-to-float v0, v6

    mul-float/2addr v0, v10

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->h:F

    sub-float v9, v0, v4

    .line 177
    .local v9, "indicatorWidth":F
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v13, v0

    .line 178
    .local v13, "paddingTop":F
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v11, v0

    .line 179
    .local v11, "paddingLeft":F
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingRight()I

    move-result v0

    int-to-float v12, v0

    .line 181
    .local v12, "paddingRight":F
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v13

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v5

    add-float v2, v13, v0

    .line 182
    .local v2, "verticalOffset":F
    move v7, v11

    .line 183
    .local v7, "horizontalOffset":F
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->f:Z

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v11

    sub-float/2addr v0, v12

    div-float/2addr v0, v5

    div-float v4, v9, v5

    sub-float/2addr v0, v4

    add-float v7, v11, v0

    .line 188
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 189
    int-to-float v0, v8

    mul-float/2addr v0, v10

    add-float v1, v7, v0

    .line 190
    .local v1, "dx1":F
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->g:F

    add-float v3, v1, v0

    .line 191
    .local v3, "dx2":F
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    if-ne v8, v0, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    :goto_2
    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 191
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->a:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 352
    .line 8364
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8365
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8367
    if-eq v1, v7, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_3

    .line 8369
    :cond_0
    int-to-float v0, v2

    .line 8379
    :cond_1
    :goto_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 8391
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8392
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8394
    if-ne v2, v7, :cond_4

    .line 8396
    int-to-float v0, v3

    .line 8405
    :cond_2
    :goto_1
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 352
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->setMeasuredDimension(II)V

    .line 353
    return-void

    .line 8372
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    invoke-virtual {v0}, Lgl;->getCount()I

    move-result v0

    .line 8373
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->g:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->h:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 8375
    if-ne v1, v6, :cond_1

    .line 8376
    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 8399
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 8401
    if-ne v2, v6, :cond_2

    .line 8402
    int-to-float v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$d;->onPageScrollStateChanged(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$d;->onPageScrolled(IFI)V

    .line 333
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$d;->onPageSelected(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 410
    move-object v0, p1

    check-cast v0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;

    .line 411
    .local v0, "savedState":Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 412
    iget v1, v0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    .line 413
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->requestLayout()V

    .line 414
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 418
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 419
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 420
    .local v0, "savedState":Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator$SavedState;->currentPage:I

    .line 421
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 197
    const/4 v12, 0x1

    .line 275
    :goto_0
    return v12

    .line 199
    :cond_0
    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v12

    invoke-virtual {v12}, Lgl;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 200
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 204
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v12, 0x0

    .line 1499
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 206
    iput v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->j:F

    goto :goto_1

    .line 211
    :pswitch_2
    iget v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    .line 2488
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2510
    .local v1, "activePointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 213
    .local v11, "x":F
    iget v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->j:F

    sub-float v3, v11, v12

    .line 215
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->l:Z

    if-nez v12, :cond_4

    .line 216
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->i:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 217
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->l:Z

    .line 221
    :cond_4
    iget-boolean v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->l:Z

    if-eqz v12, :cond_3

    .line 222
    iput v11, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->j:F

    .line 223
    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 224
    :cond_5
    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 233
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->l:Z

    if-nez v12, :cond_9

    .line 234
    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v12

    invoke-virtual {v12}, Lgl;->getCount()I

    move-result v2

    .line 235
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->getWidth()I

    move-result v10

    .line 236
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 237
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 239
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 240
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 241
    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 243
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 244
    :cond_7
    iget v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 245
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 246
    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 248
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 252
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->l:Z

    .line 253
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    .line 254
    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 3477
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 3510
    .local v5, "index":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 259
    iput v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->j:F

    .line 4499
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 260
    iput v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    goto/16 :goto_1

    .line 5477
    .end local v5    # "index":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 5499
    .local v8, "pointerIndex":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 267
    .local v7, "pointerId":I
    iget v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    if-ne v7, v12, :cond_a

    .line 268
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 6499
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 269
    iput v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    .line 271
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->k:I

    .line 7488
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 7510
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 271
    iput v12, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->j:F

    goto/16 :goto_1

    .line 268
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->f:Z

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 106
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 307
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->e:I

    .line 308
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 309
    return-void
.end method

.method public setGapWidth(F)V
    .locals 0
    .param p1, "gapWidth"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->h:F

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 152
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->g:F

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 133
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$d;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$d;

    .line 348
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 124
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "lineHeight"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 143
    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1
    .param p1, "unselectedColor"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    .line 115
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/LinePageIndicator;->invalidate()V

    goto :goto_0
.end method
