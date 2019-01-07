.class public Lcom/alipay/biometrics/ui/widget/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private backColorWidth:F

.field private backgroundColor:I

.field private endAngle:I

.field public mBitmapShader:Landroid/graphics/BitmapShader;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mWidth:I

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private radius:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundShader:Z

.field private roundWidth:F

.field private startAngle:I

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v8, -0xff0100

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput v6, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->style:I

    .line 83
    iput v6, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    .line 112
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 115
    sget-object v4, Lige$f;->bio_round_progressBar:[I

    .line 116
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 119
    .local v2, "mTypedArray":Landroid/content/res/TypedArray;
    sget v4, Lige$f;->bio_round_progressBar_bio_round_color:I

    const/high16 v5, -0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundColor:I

    .line 120
    sget v4, Lige$f;->bio_round_progressBar_bio_round_progress_color:I

    invoke-virtual {v2, v4, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundProgressColor:I

    .line 122
    sget v4, Lige$f;->bio_round_progressBar_bio_text_color:I

    invoke-virtual {v2, v4, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textColor:I

    .line 123
    sget v4, Lige$f;->bio_round_progressBar_bio_text_size:I

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textSize:F

    .line 124
    sget v4, Lige$f;->bio_round_progressBar_bio_round_width:I

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundWidth:F

    .line 125
    sget v4, Lige$f;->bio_round_progressBar_bio_max:I

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I

    .line 126
    sget v4, Lige$f;->bio_round_progressBar_bio_text_is_displayable:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textIsDisplayable:Z

    .line 128
    sget v4, Lige$f;->bio_round_progressBar_bio_style:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->style:I

    .line 129
    sget v4, Lige$f;->bio_round_progressBar_bio_progress_shader:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundShader:Z

    .line 130
    sget v4, Lige$f;->bio_round_progressBar_bio_color_bg_width:I

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->backColorWidth:F

    .line 132
    sget v4, Lige$f;->bio_round_progressBar_bio_start_angle:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bio startAngle:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 136
    sget v4, Lige$f;->bio_round_progressBar_bio_end_angle:I

    const/16 v5, 0x168

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->endAngle:I

    .line 137
    sget v4, Lige$f;->bio_round_progressBar_bio_background_color:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->backgroundColor:I

    .line 138
    iget v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->backColorWidth:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundShader:Z

    if-eqz v4, :cond_0

    .line 141
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 142
    sget v4, Lige$b;->circle_bg:I

    invoke-static {p1, v4}, Lcom/alipay/mobile/security/bio/utils/BitmapHelper;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 152
    iget v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->backColorWidth:F

    float-to-int v4, v4

    iput v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mWidth:I

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 156
    .local v0, "bSize":I
    iget v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 160
    .local v3, "scale":F
    iget-object v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 162
    iget-object v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 166
    .end local v0    # "bSize":I
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    return-void
.end method

.method private paintStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "oval"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 240
    :cond_0
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    add-int/lit8 v0, v0, 0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->endAngle:I

    iget v1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->progress:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I

    div-int/2addr v0, v1

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 242
    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    return v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 172
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 178
    .local v6, "centre":I
    int-to-float v0, v6

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    .line 179
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->backgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    int-to-float v0, v6

    int-to-float v2, v6

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 198
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->progress:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v7, v0

    .line 199
    .local v7, "percent":I
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 201
    .local v8, "textWidth":F
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 202
    iget-boolean v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textIsDisplayable:Z

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->style:I

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v6

    div-float v3, v8, v5

    sub-float/2addr v2, v3

    int-to-float v3, v6

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textSize:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    sub-int v0, v6, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    sub-int v2, v6, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->radius:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 215
    .local v1, "oval":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    add-int/lit8 v0, v0, 0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->endAngle:I

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 218
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->style:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 222
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paintStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->progress:I

    if-eqz v0, :cond_1

    .line 227
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    add-int/lit8 v0, v0, 0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->endAngle:I

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->startAngle:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->progress:I

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->backgroundColor:I

    .line 246
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->postInvalidate()V

    .line 247
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0
    .param p1, "cricleColor"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundColor:I

    .line 305
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .param p1, "cricleProgressColor"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundProgressColor:I

    .line 313
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    monitor-enter p0

    if-gez p1, :cond_0

    .line 265
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    monitor-enter p0

    if-gez p1, :cond_0

    .line 287
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 290
    iget p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I

    .line 292
    :cond_1
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_2

    .line 293
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->progress:I

    .line 294
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundColor:I

    .line 251
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->postInvalidate()V

    .line 252
    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .param p1, "roundWidth"    # F

    .prologue
    .line 336
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->roundWidth:F

    .line 337
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textColor:I

    .line 321
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 328
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->textSize:F

    .line 329
    return-void
.end method
