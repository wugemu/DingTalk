.class public Lcom/alibaba/android/user/widget/DashboardView;
.super Landroid/view/View;
.source "DashboardView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/animation/ValueAnimator;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/widget/DashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/widget/DashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v7, 0x423296fa

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v5, p0, Lcom/alibaba/android/user/widget/DashboardView;->f:F

    .line 51
    sget-object v1, Lezg$n;->DashboardView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lezg$n;->DashboardView_fontColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->b:I

    .line 54
    sget v1, Lezg$n;->DashboardView_viewStrokeWidth:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/DashboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->c:F

    .line 55
    sget v1, Lezg$n;->DashboardView_mRadius:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/DashboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->e:F

    .line 56
    sget v1, Lezg$n;->DashboardView_percentage:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->d:F

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1062
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->a:Landroid/graphics/Paint;

    .line 1063
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1064
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/user/widget/DashboardView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1065
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/user/widget/DashboardView;->c:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1066
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1067
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1069
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->k:Landroid/graphics/Paint;

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1071
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/DashboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1073
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1074
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1076
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->l:Landroid/graphics/Paint;

    .line 1077
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1078
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1079
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/DashboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1080
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1081
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1083
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->j:Landroid/graphics/RectF;

    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/DashboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->m:F

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/widget/DashboardView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/DashboardView;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/alibaba/android/user/widget/DashboardView;->f:F

    return p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 140
    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/android/user/widget/DashboardView;->d:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->g:Landroid/animation/ValueAnimator;

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/android/user/widget/DashboardView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/widget/DashboardView$1;-><init>(Lcom/alibaba/android/user/widget/DashboardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 151
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v2, 0x43070000    # 135.0f

    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/android/user/widget/DashboardView;->e:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/alibaba/android/user/widget/DashboardView;->i:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/alibaba/android/user/widget/DashboardView;->e:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/alibaba/android/user/widget/DashboardView;->h:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/user/widget/DashboardView;->e:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/user/widget/DashboardView;->i:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/alibaba/android/user/widget/DashboardView;->e:F

    add-float/2addr v6, v7

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->j:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    iget-object v5, p0, Lcom/alibaba/android/user/widget/DashboardView;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1112
    iget v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->h:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    .line 1114
    iget v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->i:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->e:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->c:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    add-float v7, v0, v1

    .line 1116
    iget v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->m:F

    add-float v9, v7, v0

    move v0, v4

    .line 1117
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 1118
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1119
    iget-object v10, p0, Lcom/alibaba/android/user/widget/DashboardView;->l:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1121
    :cond_0
    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/DashboardView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/DashboardView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v1, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    iget v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView;->j:Landroid/graphics/RectF;

    iget v3, p0, Lcom/alibaba/android/user/widget/DashboardView;->f:F

    iget-object v5, p0, Lcom/alibaba/android/user/widget/DashboardView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/alibaba/android/user/widget/DashboardView;->h:I

    .line 91
    iput p2, p0, Lcom/alibaba/android/user/widget/DashboardView;->i:I

    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/DashboardView;->a()V

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 94
    return-void
.end method

.method public setScorePercentage(F)V
    .locals 1
    .param p1, "scorePercentage"    # F

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/android/user/widget/DashboardView;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iput p1, p0, Lcom/alibaba/android/user/widget/DashboardView;->d:F

    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/DashboardView;->a()V

    goto :goto_0
.end method
