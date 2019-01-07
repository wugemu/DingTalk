.class public Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;
.super Landroid/view/View;
.source "ShareViewpagerIndicator.java"

# interfaces
.implements Lgwf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$d;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    sget v0, Lgvn$a;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b:Landroid/graphics/Paint;

    .line 51
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    .line 52
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->d:Landroid/graphics/Paint;

    .line 64
    const/high16 v10, -0x40800000    # -1.0f

    iput v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->o:F

    .line 65
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 116
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 83
    .local v9, "res":Landroid/content/res/Resources;
    sget v10, Lgvn$b;->default_viewpager_indicator_page_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 84
    .local v5, "defaultPageColor":I
    sget v10, Lgvn$b;->default_viewpager_indicator_fill_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 85
    .local v3, "defaultFillColor":I
    sget v10, Lgvn$f;->default_viewpager_indicator_orientation:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 86
    .local v4, "defaultOrientation":I
    sget v10, Lgvn$b;->default_viewpager_indicator_stroke_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 87
    .local v7, "defaultStrokeColor":I
    sget v10, Lgvn$c;->default_viewpager_indicator_stroke_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 88
    .local v8, "defaultStrokeWidth":F
    sget v10, Lgvn$c;->default_viewpager_indicator_radius:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 93
    .local v6, "defaultRadius":F
    sget-object v10, Lgvn$j;->ShareViewpagerIndicator:[I

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v10, Lgvn$j;->ShareViewpagerIndicator_centered:I

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->l:Z

    .line 96
    sget v10, Lgvn$j;->ShareViewpagerIndicator_android_orientation:I

    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->k:I

    .line 97
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b:Landroid/graphics/Paint;

    sget v11, Lgvn$j;->ShareViewpagerIndicator_pageColor:I

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    sget v11, Lgvn$j;->ShareViewpagerIndicator_strokeColor:I

    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    sget v11, Lgvn$j;->ShareViewpagerIndicator_strokeWidth:I

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->d:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->d:Landroid/graphics/Paint;

    sget v11, Lgvn$j;->ShareViewpagerIndicator_fillColor:I

    invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget v10, Lgvn$j;->ShareViewpagerIndicator_indiradius:I

    invoke-virtual {v0, v10, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    .line 105
    sget v10, Lgvn$j;->ShareViewpagerIndicator_snap:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->m:Z

    .line 107
    sget v10, Lgvn$j;->ShareViewpagerIndicator_android_background:I

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 115
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v2}, Lgo;->a(Landroid/view/ViewConfiguration;)I

    move-result v10

    iput v10, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->n:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 470
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 471
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 473
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 475
    :cond_0
    move v1, v3

    .line 486
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 478
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v4

    invoke-virtual {v4}, Lgl;->getCount()I

    move-result v0

    .line 479
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 482
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 483
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private b(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 498
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 499
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 501
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 503
    move v0, v2

    .line 512
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 506
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 508
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 509
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgl;->getCount()I

    move-result v3

    .line 207
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 212
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 220
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->k:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getWidth()I

    move-result v12

    .line 222
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingLeft()I

    move-result v11

    .line 223
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingRight()I

    move-result v10

    .line 224
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingTop()I

    move-result v15

    .line 232
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 233
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 234
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 235
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->l:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 236
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 242
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    .line 243
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 248
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-ge v8, v3, :cond_9

    .line 249
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 250
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->k:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 251
    move v5, v7

    .line 252
    .local v5, "dX":F
    move v6, v14

    .line 258
    .local v6, "dY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 248
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 226
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getHeight()I

    move-result v12

    .line 227
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingTop()I

    move-result v11

    .line 228
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingBottom()I

    move-result v10

    .line 229
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 254
    .restart local v7    # "drawLong":F
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_8
    move v5, v14

    .line 255
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_3

    .line 269
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->m:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->h:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 270
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->m:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->i:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 273
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->k:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 274
    add-float v5, v9, v4

    .line 275
    .restart local v5    # "dX":F
    move v6, v14

    .line 280
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->d:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 269
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    move/from16 v17, v0

    goto :goto_4

    .line 277
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 278
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->k:I

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setMeasuredDimension(II)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->j:I

    .line 413
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->f:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->f:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$d;->onPageScrollStateChanged(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    .line 421
    iput p2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->i:F

    .line 422
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 424
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->f:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->f:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$d;->onPageScrolled(IFI)V

    .line 427
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->j:I

    if-nez v0, :cond_1

    .line 432
    :cond_0
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    .line 433
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->h:I

    .line 434
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->f:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->f:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$d;->onPageSelected(I)V

    .line 440
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 517
    move-object v0, p1

    check-cast v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;

    .line 518
    .local v0, "savedState":Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    iget v1, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    .line 520
    iget v1, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->h:I

    .line 521
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->requestLayout()V

    .line 522
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 526
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 527
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 528
    .local v0, "savedState":Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;
    iget v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    iput v2, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator$SavedState;->currentPage:I

    .line 529
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 285
    const/4 v14, 0x1

    .line 369
    :goto_0
    return v14

    .line 287
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v14

    invoke-virtual {v14}, Lgl;->getCount()I

    move-result v14

    if-nez v14, :cond_2

    .line 288
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v1, v14, 0xff

    .line 292
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 369
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v14, 0x1

    goto :goto_0

    .line 294
    :pswitch_1
    const/4 v14, 0x0

    .line 1499
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 294
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->o:F

    goto :goto_1

    .line 299
    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    .line 2488
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2510
    .local v2, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 301
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->o:F

    sub-float v4, v13, v14

    .line 303
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->q:Z

    if-nez v14, :cond_4

    .line 304
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->n:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 305
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->q:Z

    .line 309
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->q:Z

    if-eqz v14, :cond_3

    .line 310
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->o:F

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 314
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14, v4}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v8

    .line 317
    .local v8, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 327
    .end local v2    # "activePointerIndex":I
    .end local v4    # "deltaX":F
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    .end local v13    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->q:Z

    if-nez v14, :cond_9

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v14

    invoke-virtual {v14}, Lgl;->getCount()I

    move-result v3

    .line 329
    .local v3, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->getWidth()I

    move-result v12

    .line 330
    .local v12, "width":I
    int-to-float v14, v12

    const/high16 v15, 0x40000000    # 2.0f

    div-float v5, v14, v15

    .line 331
    .local v5, "halfWidth":F
    int-to-float v14, v12

    const/high16 v15, 0x40c00000    # 6.0f

    div-float v11, v14, v15

    .line 333
    .local v11, "sixthWidth":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    if-lez v14, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    sub-float v15, v5, v11

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    .line 334
    const/4 v14, 0x3

    if-eq v1, v14, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 337
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    add-int/lit8 v15, v3, -0x1

    if-ge v14, v15, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    add-float v15, v5, v11

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    .line 339
    const/4 v14, 0x3

    if-eq v1, v14, :cond_8

    .line 340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 342
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 346
    .end local v3    # "count":I
    .end local v5    # "halfWidth":F
    .end local v11    # "sixthWidth":F
    .end local v12    # "width":I
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->q:Z

    .line 347
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 3477
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 3510
    .local v6, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 353
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->o:F

    .line 4499
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 354
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    goto/16 :goto_1

    .line 5477
    .end local v6    # "index":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 5499
    .local v10, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 361
    .local v9, "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    if-ne v9, v14, :cond_a

    .line 362
    if-nez v10, :cond_b

    const/4 v7, 0x1

    .line 6499
    .local v7, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 363
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    .line 365
    .end local v7    # "newPointerIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->p:I

    .line 7488
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 7510
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 365
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->o:F

    goto/16 :goto_1

    .line 362
    :cond_b
    const/4 v7, 0x0

    goto :goto_2

    .line 292
    nop

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
    .line 120
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->l:Z

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 122
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 400
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->g:I

    .line 401
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 402
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 140
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$d;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->f:Landroid/support/v4/view/ViewPager$d;

    .line 445
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_0
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->k:I

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->requestLayout()V

    .line 152
    return-void

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 131
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 182
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->a:F

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 184
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->m:Z

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 193
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 166
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    .line 175
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 380
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_2
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 384
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->invalidate()V

    goto :goto_0
.end method
