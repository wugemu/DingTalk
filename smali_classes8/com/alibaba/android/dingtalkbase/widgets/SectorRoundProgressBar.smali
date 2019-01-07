.class public Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;
.super Landroid/view/View;
.source "SectorRoundProgressBar.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/16 v1, 0x64

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->e:I

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->f:I

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->g:Landroid/graphics/RectF;

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    .line 60
    sget-object v1, Lcig$l;->BaseSectorRoundProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->BaseSectorRoundProgressBar_roundColor:I

    const/high16 v2, -0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->b:I

    .line 63
    sget v1, Lcig$l;->BaseSectorRoundProgressBar_progressColor:I

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->c:I

    .line 64
    sget v1, Lcig$l;->BaseSectorRoundProgressBar_roundWidth:I

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->d:F

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(II)V
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 117
    monitor-enter p0

    if-gez p2, :cond_0

    .line 118
    :try_start_0
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 119
    const/4 p2, 0x0

    .line 124
    :cond_0
    if-le p2, p1, :cond_1

    .line 125
    move p2, p1

    .line 127
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->e:I

    .line 128
    if-gt p2, p1, :cond_2

    .line 129
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->f:I

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_2
    monitor-exit p0

    return-void

    .line 121
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 77
    .local v6, "centre":I
    int-to-float v0, v6

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v7, v0

    .line 78
    .local v7, "radius":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    int-to-float v0, v6

    int-to-float v1, v6

    int-to-float v2, v7

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->g:Landroid/graphics/RectF;

    sub-int v1, v6, v7

    int-to-float v1, v1

    sub-int v2, v6, v7

    int-to-float v2, v2

    add-int v3, v6, v7

    int-to-float v3, v3

    add-int v5, v6, v7

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->f:I

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->g:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const-wide/16 v8, 0x168

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->f:I

    int-to-long v10, v0

    mul-long/2addr v8, v10

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->e:I

    int-to-long v10, v0

    div-long/2addr v8, v10

    long-to-float v3, v8

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    :cond_0
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 100
    monitor-enter p0

    if-gez p1, :cond_0

    .line 101
    const/16 p1, 0x64

    .line 103
    :cond_0
    :try_start_0
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
