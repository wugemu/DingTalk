.class public Lcom/alibaba/android/teleconf/widget/DataCircleView;
.super Landroid/view/View;
.source "DataCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/DataCircleView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:F

.field private j:Z

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/teleconf/widget/DataCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->a:I

    .line 41
    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->b:I

    .line 42
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->c:I

    .line 43
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->d:F

    .line 44
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->e:F

    .line 46
    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->f:F

    .line 47
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->g:F

    .line 48
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->h:Z

    .line 49
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->i:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->j:Z

    .line 59
    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->p:F

    .line 1083
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leuj$n;->DataCircleView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1085
    sget v1, Leuj$n;->DataCircleView_dataCircleBgColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->a:I

    .line 1086
    sget v1, Leuj$n;->DataCircleView_dataCircleFgColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->b:I

    .line 1087
    sget v1, Leuj$n;->DataCircleView_dataCircleBgStrokeWidth:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->d:F

    .line 1088
    sget v1, Leuj$n;->DataCircleView_dataCircleFgStrokeWidth:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->e:F

    .line 1089
    sget v1, Leuj$n;->DataCircleView_dataCircleBlankAngle:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->f:F

    .line 1090
    sget v1, Leuj$n;->DataCircleView_dataCircleStartAngle:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->g:F

    .line 1091
    sget v1, Leuj$n;->DataCircleView_dataCircleClockwise:I

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->h:Z

    .line 1092
    sget v1, Leuj$n;->DataCircleView_dataCircleWarnValid:I

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->j:Z

    .line 1093
    sget v1, Leuj$n;->DataCircleView_dataCircleWarnLowestValue:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->i:F

    .line 1094
    sget v1, Leuj$n;->DataCircleView_dataCircleWarnFgColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->c:I

    .line 1096
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->k:Landroid/graphics/Paint;

    .line 1097
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1098
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1099
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->d:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1100
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    .line 1103
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1104
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1105
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->e:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1106
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1108
    new-instance v1, Lcom/alibaba/android/teleconf/widget/DataCircleView$a;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView$a;-><init>(Lcom/alibaba/android/teleconf/widget/DataCircleView;)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->q:Ljava/lang/Runnable;

    .line 1110
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->r:Landroid/graphics/RectF;

    .line 1111
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->s:Landroid/graphics/RectF;

    .line 1113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 174
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->q:Ljava/lang/Runnable;

    .line 179
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getPaddingLeft()I

    move-result v30

    .line 125
    .local v30, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getPaddingTop()I

    move-result v32

    .line 126
    .local v32, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getPaddingRight()I

    move-result v31

    .line 127
    .local v31, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getPaddingBottom()I

    move-result v29

    .line 129
    .local v29, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getWidth()I

    move-result v4

    sub-int v4, v4, v30

    sub-int v23, v4, v31

    .line 130
    .local v23, "contentWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getHeight()I

    move-result v4

    sub-int v4, v4, v32

    sub-int v21, v4, v29

    .line 133
    .local v21, "contentHeight":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 134
    .local v22, "contentSize":I
    div-int/lit8 v4, v22, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->e:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v15, v4, v5

    .line 135
    .local v15, "bgCircleRadius":F
    div-int/lit8 v4, v22, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->e:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v25, v4, v5

    .line 138
    .local v25, "fgCircleRadius":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v19, v0

    .line 139
    .local v19, "bigCircleDotX":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v20, v0

    .line 142
    .local v20, "bigCircleDotY":F
    sub-float v16, v19, v15

    .line 143
    .local v16, "bgLeft":F
    sub-float v18, v20, v15

    .line 144
    .local v18, "bgTop":F
    add-float v17, v19, v15

    .line 145
    .local v17, "bgRight":F
    add-float v14, v20, v15

    .line 146
    .local v14, "bgBottom":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->r:Landroid/graphics/RectF;

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v4, v0, v1, v2, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    sub-float v26, v19, v25

    .line 149
    .local v26, "fgLeft":F
    sub-float v28, v20, v25

    .line 150
    .local v28, "fgTop":F
    add-float v27, v19, v25

    .line 151
    .local v27, "fgRight":F
    add-float v24, v20, v25

    .line 152
    .local v24, "fgBottom":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->s:Landroid/graphics/RectF;

    move/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v27

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    const/high16 v4, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->f:F

    sub-float v7, v4, v5

    .line 156
    .local v7, "bgSweepAngle":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->h:Z

    if-nez v4, :cond_1

    .line 157
    neg-float v7, v7

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->g:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->f:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->k:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 161
    const/4 v11, 0x0

    .line 162
    .local v11, "sweepAngle":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->m:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 163
    const/high16 v4, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->f:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->m:F

    div-float v11, v4, v5

    .line 165
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->h:Z

    if-nez v4, :cond_3

    .line 166
    neg-float v11, v11

    .line 168
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->s:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->g:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->f:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v10, v4, v5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setCurrentValue(F)V
    .locals 3
    .param p1, "value"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->n:F

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->o:F

    .line 190
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->n:F

    .line 192
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->j:Z

    if-eqz v1, :cond_0

    .line 193
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->n:F

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->i:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v0, 0x1

    .line 194
    .local v0, "needWarn":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 193
    .end local v0    # "needWarn":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 197
    .restart local v0    # "needWarn":Z
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setMaxValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 182
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView;->m:F

    .line 183
    return-void
.end method
