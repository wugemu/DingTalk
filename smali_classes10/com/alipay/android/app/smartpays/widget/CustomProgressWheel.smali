.class public Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;
.super Landroid/view/View;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;,
        Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
    }
.end annotation


# static fields
.field private static final INIT_LOCK:Ljava/lang/Object;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isDrawFirstLine:Z

.field private isDrawSecondLine:Z

.field private isRunning:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private lineProgress:F

.field private lineSpeed:F

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinSpeed:F

.field private tickSize:I

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    .line 36
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 37
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barLength:I

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barMaxLength:I

    .line 42
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    .line 44
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    .line 45
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    .line 46
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    .line 49
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    .line 50
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pauseGrowingTime:J

    .line 53
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    .line 54
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 65
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 72
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 73
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 74
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 77
    const/16 v0, 0x40

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 78
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 79
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    .line 80
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    .line 81
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 398
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    .line 36
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 37
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barLength:I

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barMaxLength:I

    .line 42
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    .line 44
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    .line 45
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    .line 46
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    .line 49
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    .line 50
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pauseGrowingTime:J

    .line 53
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    .line 54
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 65
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 72
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 73
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 74
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 77
    const/16 v0, 0x40

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 78
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 79
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    .line 80
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    .line 81
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 398
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    .line 36
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 37
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barLength:I

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barMaxLength:I

    .line 42
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    .line 44
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    .line 45
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    .line 46
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    .line 49
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    .line 50
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pauseGrowingTime:J

    .line 53
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    .line 54
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 65
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 72
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 73
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 74
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 77
    const/16 v0, 0x40

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 78
    iput v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 79
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    .line 80
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    .line 81
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 398
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    .line 87
    return-void
.end method

.method private runCallback()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 447
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    if-eqz v1, :cond_0

    .line 448
    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    mul-float/2addr v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v3

    .line 449
    .local v0, "normalizedProgress":F
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 451
    .end local v0    # "normalizedProgress":F
    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 444
    :cond_0
    return-void
.end method

.method private setupBounds(II)V
    .locals 14
    .param p1, "layout_width"    # I
    .param p2, "layout_height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingTop()I

    move-result v5

    .line 177
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingBottom()I

    move-result v2

    .line 178
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingLeft()I

    move-result v3

    .line 179
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingRight()I

    move-result v4

    .line 181
    .local v4, "paddingRight":I
    iget-boolean v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    if-nez v8, :cond_0

    .line 183
    sub-int v8, p1, v3

    sub-int/2addr v8, v4

    sub-int v9, p2, v2

    sub-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 187
    .local v1, "minValue":I
    iget v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    .local v0, "circleDiameter":I
    sub-int v8, p1, v3

    sub-int/2addr v8, v4

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    add-int v6, v8, v3

    .line 192
    .local v6, "xOffset":I
    sub-int v8, p2, v5

    sub-int/2addr v8, v2

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    add-int v7, v8, v5

    .line 195
    .local v7, "yOffset":I
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    iget v10, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    add-int/2addr v10, v7

    int-to-float v10, v10

    add-int v11, v6, v0

    iget v12, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    add-int v12, v7, v0

    iget v13, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 205
    .end local v0    # "circleDiameter":I
    .end local v1    # "minValue":I
    .end local v6    # "xOffset":I
    .end local v7    # "yOffset":I
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    add-int/2addr v10, v5

    int-to-float v10, v10

    sub-int v11, p1, v4

    iget v12, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-int v12, p2, v2

    iget v13, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private setupPaints()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    return-void
.end method

.method private updateBarLength(J)V
    .locals 7
    .param p1, "deltaTimeInMilliSeconds"    # J

    .prologue
    const/high16 v6, 0x437e0000    # 254.0f

    .line 353
    iget-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 354
    iget-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    long-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    .line 356
    iget-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 359
    iget-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    .line 361
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    .line 363
    iget-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    .line 366
    :cond_0
    iget-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v0, v2, v3

    .line 369
    .local v0, "distance":F
    iget-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    if-eqz v2, :cond_2

    .line 370
    mul-float v2, v0, v6

    iput v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    .line 379
    .end local v0    # "distance":F
    :goto_1
    return-void

    .line 363
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 372
    .restart local v0    # "distance":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v1, v6, v2

    .line 373
    .local v1, "newLength":F
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    iget v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    sub-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 374
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    goto :goto_1

    .line 377
    .end local v0    # "distance":F
    .end local v1    # "newLength":F
    :cond_3
    iget-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    goto :goto_1
.end method


# virtual methods
.method public beginDrawTick()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 340
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 341
    return-void
.end method

.method public getBarColor()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 673
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    sget-object v5, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 223
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    if-nez v4, :cond_1

    .line 224
    monitor-exit v5

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    const/16 v17, 0x0

    .line 229
    .local v17, "mustInvalidate":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    const-wide v8, 0x3ff999999999999aL    # 1.6

    div-double/2addr v4, v8

    double-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 232
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    if-nez v4, :cond_3

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    .line 234
    .local v14, "centerX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    .line 236
    .local v15, "centerY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 237
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v5, v14, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    add-float v6, v15, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v14, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v8, v9

    add-float v7, v4, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    add-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 240
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 242
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 243
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 244
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 247
    :cond_2
    const/16 v17, 0x1

    .line 331
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    :goto_1
    if-eqz v17, :cond_0

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    goto/16 :goto_0

    .line 226
    .end local v17    # "mustInvalidate":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 248
    .restart local v17    # "mustInvalidate":Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    if-eqz v4, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    .line 250
    .restart local v14    # "centerX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    .line 252
    .restart local v15    # "centerY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 253
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v5, v14, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    add-float v6, v15, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    sub-float v7, v14, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v8, v15, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    sub-float v5, v14, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v6, v15, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    sub-float v4, v14, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    mul-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0xc

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v8, v9

    add-float v7, v4, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v8, v9

    sub-float v8, v4, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 259
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 260
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 262
    :cond_4
    const/16 v17, 0x1

    .line 264
    goto/16 :goto_1

    .line 265
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 267
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-eqz v4, :cond_8

    .line 269
    const/16 v17, 0x1

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    sub-long v18, v4, v8

    .line 272
    .local v18, "deltaTime":J
    move-wide/from16 v0, v18

    long-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v16, v4, v5

    .line 274
    .local v16, "deltaNormalized":F
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->updateBarLength(J)V

    .line 276
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    add-float v4, v4, v16

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 277
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 283
    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback(F)V

    .line 285
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 287
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float v6, v4, v5

    .line 288
    .local v6, "from":F
    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    add-float v7, v4, v5

    .line 290
    .local v7, "length":F
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 291
    const/4 v6, 0x0

    .line 292
    const/high16 v7, 0x43070000    # 135.0f

    .line 295
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 297
    .end local v6    # "from":F
    .end local v7    # "length":F
    .end local v16    # "deltaNormalized":F
    .end local v18    # "deltaTime":J
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    move/from16 v21, v0

    .line 299
    .local v21, "oldProgress":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 301
    const/16 v17, 0x1

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v4, v8

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v18, v4, v5

    .line 304
    .local v18, "deltaTime":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    mul-float v16, v18, v4

    .line 306
    .restart local v16    # "deltaNormalized":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    add-float v4, v4, v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 310
    .end local v16    # "deltaNormalized":F
    .end local v18    # "deltaTime":F
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    cmpl-float v4, v21, v4

    if-eqz v4, :cond_a

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback()V

    .line 314
    :cond_a
    const/16 v20, 0x0

    .line 315
    .local v20, "offset":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 316
    .local v11, "progress":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    if-nez v4, :cond_b

    .line 318
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v10, 0x43b40000    # 360.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v4, v8

    double-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v20, v4, v5

    .line 319
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v10, 0x43b40000    # 360.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v4, v8

    double-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v11, v4, v5

    .line 322
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 323
    const/high16 v11, 0x43b40000    # 360.0f

    .line 326
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v10, v20, v4

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v11, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    .line 99
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 101
    iget v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingRight()I

    move-result v9

    add-int v4, v8, v9

    .line 102
    .local v4, "viewWidth":I
    iget v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingBottom()I

    move-result v9

    add-int v3, v8, v9

    .line 104
    .local v3, "viewHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 105
    .local v6, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 106
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 107
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 113
    .local v2, "heightSize":I
    if-ne v6, v10, :cond_1

    .line 115
    move v5, v7

    .line 125
    .local v5, "width":I
    :goto_0
    if-eq v1, v10, :cond_0

    if-ne v6, v10, :cond_3

    .line 127
    :cond_0
    move v0, v2

    .line 136
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setMeasuredDimension(II)V

    .line 137
    return-void

    .line 116
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_1
    if-ne v6, v11, :cond_2

    .line 118
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_0

    .line 121
    .end local v5    # "width":I
    :cond_2
    move v5, v4

    .restart local v5    # "width":I
    goto :goto_0

    .line 128
    :cond_3
    if-ne v1, v11, :cond_4

    .line 130
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 133
    .end local v0    # "height":I
    :cond_4
    move v0, v3

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    instance-of v1, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    if-nez v1, :cond_0

    .line 543
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 563
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 547
    check-cast v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    .line 548
    .local v0, "ss":Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 550
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 551
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 552
    iget-boolean v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 553
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    .line 554
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 555
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    .line 556
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    .line 557
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 558
    iget v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    .line 559
    iget-boolean v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    .line 560
    iget-boolean v1, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 520
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 522
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 525
    .local v0, "ss":Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    .line 526
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 527
    iget-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    iput-boolean v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    .line 528
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    .line 529
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    .line 530
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    .line 531
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    .line 532
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    .line 533
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    iput v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    .line 534
    iget-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    iput-boolean v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    .line 535
    iget-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    iput-boolean v2, v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    .line 537
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupBounds(II)V

    .line 149
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupPaints()V

    .line 150
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 151
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 347
    if-nez p2, :cond_0

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 350
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    sget-object v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    .line 411
    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    .line 414
    const-wide/16 v2, 0xd2

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    .line 415
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 418
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 394
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 395
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 396
    return-void
.end method

.method public setBarColor(I)V
    .locals 1
    .param p1, "barColor"    # I

    .prologue
    .line 640
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    .line 641
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupPaints()V

    .line 642
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 645
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1
    .param p1, "barWidth"    # I

    .prologue
    .line 621
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 622
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 625
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;)V
    .locals 1
    .param p1, "progressCallback"    # Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    .line 210
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback()V

    .line 213
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1
    .param p1, "circleRadius"    # I

    .prologue
    .line 602
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    .line 603
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 606
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 496
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 497
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 501
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 502
    sub-float/2addr p1, v2

    .line 507
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 515
    :goto_1
    return-void

    .line 503
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 504
    const/4 p1, 0x0

    goto :goto_0

    .line 511
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 512
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 514
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1
    .param p1, "isLinear"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    .line 584
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 587
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 460
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 461
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 464
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback()V

    .line 467
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 468
    sub-float/2addr p1, v2

    .line 473
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 487
    :goto_1
    return-void

    .line 469
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 470
    const/4 p1, 0x0

    goto :goto_0

    .line 480
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 484
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 486
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1
    .param p1, "rimColor"    # I

    .prologue
    .line 660
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 661
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupPaints()V

    .line 662
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 665
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1
    .param p1, "rimWidth"    # I

    .prologue
    .line 700
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    .line 701
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 704
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1
    .param p1, "spinSpeed"    # F

    .prologue
    .line 684
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    .line 685
    return-void
.end method

.method public spin()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 437
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 438
    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    sget-object v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    .line 405
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSpinning()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 426
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 427
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 428
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    .line 429
    return-void
.end method
