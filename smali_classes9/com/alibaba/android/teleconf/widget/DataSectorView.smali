.class public Lcom/alibaba/android/teleconf/widget/DataSectorView;
.super Landroid/view/View;
.source "DataSectorView.java"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:F

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/teleconf/widget/DataSectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->a:I

    .line 37
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->b:F

    .line 38
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->c:F

    .line 40
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->d:F

    .line 41
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->e:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->m:F

    .line 1069
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->f:Landroid/graphics/Paint;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->b:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1075
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->g:Landroid/graphics/Paint;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1081
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->h:Landroid/graphics/RectF;

    .line 1082
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->i:Landroid/graphics/RectF;

    .line 66
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getPaddingLeft()I

    move-result v26

    .line 94
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getPaddingTop()I

    move-result v28

    .line 95
    .local v28, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getPaddingRight()I

    move-result v27

    .line 96
    .local v27, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getPaddingBottom()I

    move-result v25

    .line 98
    .local v25, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getWidth()I

    move-result v4

    sub-int v4, v4, v26

    sub-int v19, v4, v27

    .line 99
    .local v19, "contentWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getHeight()I

    move-result v4

    sub-int v4, v4, v28

    sub-int v17, v4, v25

    .line 102
    .local v17, "contentHeight":I
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 103
    .local v18, "contentSize":I
    div-int/lit8 v4, v18, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->c:F

    sub-float v11, v4, v5

    .line 104
    .local v11, "bgCircleRadius":F
    div-int/lit8 v4, v18, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->c:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v21, v4, v5

    .line 107
    .local v21, "fgCircleRadius":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v15, v4

    .line 108
    .local v15, "bigCircleDotX":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataSectorView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v16, v0

    .line 111
    .local v16, "bigCircleDotY":F
    sub-float v12, v15, v11

    .line 112
    .local v12, "bgLeft":F
    sub-float v14, v16, v11

    .line 113
    .local v14, "bgTop":F
    add-float v13, v15, v11

    .line 114
    .local v13, "bgRight":F
    add-float v10, v16, v11

    .line 115
    .local v10, "bgBottom":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->h:Landroid/graphics/RectF;

    invoke-virtual {v4, v12, v14, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    sub-float v22, v15, v21

    .line 118
    .local v22, "fgLeft":F
    sub-float v24, v16, v21

    .line 119
    .local v24, "fgTop":F
    add-float v23, v15, v21

    .line 120
    .local v23, "fgRight":F
    add-float v20, v16, v21

    .line 121
    .local v20, "fgBottom":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->i:Landroid/graphics/RectF;

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->h:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->e:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->d:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v4

    const/high16 v4, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->d:F

    sub-float v7, v4, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->f:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, "sweepAngle":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->j:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 128
    const/high16 v4, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->d:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->j:F

    div-float v7, v4, v5

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->i:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->e:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->d:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->g:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setCurrentValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 139
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->k:F

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->l:F

    .line 143
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->k:F

    goto :goto_0
.end method

.method public setMaxValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/DataSectorView;->j:F

    .line 136
    return-void
.end method
