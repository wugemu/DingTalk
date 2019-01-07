.class public Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;
.super Landroid/widget/ListView;
.source "ConstraintHeightListView.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v5, 0x42c80000    # 100.0f

    iput v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->a:F

    .line 45
    if-eqz p2, :cond_2

    .line 46
    sget-object v5, Leuj$n;->ConstraintHeightListView:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, v6, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 48
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 50
    .local v4, "type":I
    sget v5, Leuj$n;->ConstraintHeightListView_maxHeight:I

    if-ne v4, v5, :cond_0

    .line 52
    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->a:F

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "type":I
    :cond_1
    sget v5, Leuj$n;->ConstraintHeightListView_cornerRadius:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 56
    .local v3, "radius":F
    sget v5, Leuj$n;->ConstraintHeightListView_topLeftRadius:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->b:F

    .line 57
    sget v5, Leuj$n;->ConstraintHeightListView_topRightRadius:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->c:F

    .line 58
    sget v5, Leuj$n;->ConstraintHeightListView_bottomLeftRadius:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->d:F

    .line 59
    sget v5, Leuj$n;->ConstraintHeightListView_bottomRightRadius:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->e:F

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "radius":F
    :cond_2
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    .line 64
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->g:Landroid/graphics/Paint;

    .line 70
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->g:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->g:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 87
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1096
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->b:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_0

    .line 1097
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1098
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->b:F

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1099
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1100
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->b:F

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1101
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->b:F

    mul-float/2addr v2, v8

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->b:F

    mul-float/2addr v3, v8

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v5, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1103
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1104
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1109
    :cond_0
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->c:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->getWidth()I

    move-result v0

    .line 1111
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1112
    int-to-float v2, v0

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1113
    int-to-float v2, v0

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1114
    int-to-float v2, v0

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->c:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1115
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->c:F

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    int-to-float v0, v0

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->c:F

    mul-float/2addr v4, v8

    invoke-direct {v2, v3, v7, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2, v7, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1117
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1123
    :cond_1
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->d:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    .line 1124
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->getHeight()I

    move-result v0

    .line 1125
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1126
    int-to-float v2, v0

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->d:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1127
    int-to-float v2, v0

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1128
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->d:F

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1129
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->d:F

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->d:F

    mul-float/2addr v4, v8

    int-to-float v0, v0

    invoke-direct {v2, v7, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2, v9, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1131
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1137
    :cond_2
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->e:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    .line 1138
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->getHeight()I

    move-result v0

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->getWidth()I

    move-result v1

    .line 1140
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1141
    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->e:F

    sub-float/2addr v3, v4

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1142
    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1143
    int-to-float v3, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->e:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1144
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->e:F

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    int-to-float v5, v0

    iget v6, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->e:F

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3, v7, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1146
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 77
    .local v0, "specSize":I
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->a:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->a:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 78
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ConstraintHeightListView;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 82
    return-void
.end method
