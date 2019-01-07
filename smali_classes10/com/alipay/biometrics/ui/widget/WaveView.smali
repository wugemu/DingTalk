.class public Lcom/alipay/biometrics/ui/widget/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;
    }
.end annotation


# static fields
.field private static final DEFAULT_AMPLITUDE_RATIO:F = 0.05f

.field public static final DEFAULT_BEHIND_WAVE_COLOR:I

.field public static final DEFAULT_FRONT_WAVE_COLOR:I

.field private static final DEFAULT_WATER_LEVEL_RATIO:F = 0.5f

.field private static final DEFAULT_WAVE_LENGTH_RATIO:F = 1.0f

.field public static final DEFAULT_WAVE_SHAPE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

.field private static final DEFAULT_WAVE_SHIFT_RATIO:F


# instance fields
.field private mAmplitudeRatio:F

.field private mBehindWaveColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDefaultAmplitude:F

.field private mDefaultAngularFrequency:D

.field private mDefaultWaterLevel:F

.field private mDefaultWaveLength:F

.field private mFrontWaveColor:I

.field private mShaderMatrix:Landroid/graphics/Matrix;

.field private mShapeType:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

.field private mShowWave:Z

.field private mViewPaint:Landroid/graphics/Paint;

.field private mWaterLevelRatio:F

.field private mWaveLengthRatio:F

.field private mWaveShader:Landroid/graphics/BitmapShader;

.field private mWaveShiftRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "#28FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_BEHIND_WAVE_COLOR:I

    .line 54
    const-string/jumbo v0, "#3CFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_FRONT_WAVE_COLOR:I

    .line 55
    sget-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->CIRCLE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    sput-object v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_WAVE_SHAPE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mAmplitudeRatio:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveLengthRatio:F

    .line 81
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaterLevelRatio:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShiftRatio:F

    .line 84
    sget v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_BEHIND_WAVE_COLOR:I

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBehindWaveColor:I

    .line 85
    sget v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_FRONT_WAVE_COLOR:I

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mFrontWaveColor:I

    .line 86
    sget-object v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_WAVE_SHAPE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShapeType:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    .line 90
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->init()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mAmplitudeRatio:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveLengthRatio:F

    .line 81
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaterLevelRatio:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShiftRatio:F

    .line 84
    sget v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_BEHIND_WAVE_COLOR:I

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBehindWaveColor:I

    .line 85
    sget v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_FRONT_WAVE_COLOR:I

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mFrontWaveColor:I

    .line 86
    sget-object v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_WAVE_SHAPE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShapeType:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    .line 95
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mAmplitudeRatio:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveLengthRatio:F

    .line 81
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaterLevelRatio:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShiftRatio:F

    .line 84
    sget v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_BEHIND_WAVE_COLOR:I

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBehindWaveColor:I

    .line 85
    sget v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_FRONT_WAVE_COLOR:I

    iput v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mFrontWaveColor:I

    .line 86
    sget-object v0, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_WAVE_SHAPE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShapeType:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    .line 100
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->init()V

    .line 101
    return-void
.end method

.method private createShader()V
    .locals 24

    .prologue
    .line 220
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v3

    int-to-double v10, v3

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultAngularFrequency:D

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultAmplitude:F

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultWaterLevel:F

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultWaveLength:F

    .line 227
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 232
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 235
    .local v7, "wavePaint":Landroid/graphics/Paint;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v3

    add-int/lit8 v17, v3, 0x1

    .line 241
    .local v17, "endX":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    .line 243
    .local v18, "endY":I
    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 245
    .local v20, "waveY":[F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBehindWaveColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    const/4 v14, 0x0

    .local v14, "beginX":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 247
    int-to-double v8, v14

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultAngularFrequency:D

    mul-double v22, v8, v10

    .line 248
    .local v22, "wx":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultWaterLevel:F

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultAmplitude:F

    float-to-double v10, v3

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v4, v8

    .line 249
    .local v4, "beginY":F
    int-to-float v3, v14

    int-to-float v5, v14

    move/from16 v0, v18

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    aput v4, v20, v14

    .line 246
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "beginY":F
    .end local v7    # "wavePaint":Landroid/graphics/Paint;
    .end local v14    # "beginX":I
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "endX":I
    .end local v18    # "endY":I
    .end local v20    # "waveY":[F
    .end local v22    # "wx":D
    :catch_0
    move-exception v16

    .line 229
    .local v16, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 263
    .end local v16    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    return-void

    .line 254
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "wavePaint":Landroid/graphics/Paint;
    .restart local v14    # "beginX":I
    .restart local v15    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "endX":I
    .restart local v18    # "endY":I
    .restart local v20    # "waveY":[F
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mFrontWaveColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultWaveLength:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v19, v0

    .line 256
    .local v19, "wave2Shift":I
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    .line 257
    int-to-float v9, v14

    add-int v3, v14, v19

    rem-int v3, v3, v17

    aget v10, v20, v3

    int-to-float v11, v14

    move/from16 v0, v18

    int-to-float v12, v0

    move-object v8, v2

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 256
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 261
    :cond_1
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v15, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    return-void
.end method

.method private paintCircleShape(Landroid/graphics/Canvas;F)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "borderWidth"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 320
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    .line 322
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p2

    div-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    .line 321
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float v0, v1, p2

    .line 325
    .local v0, "radius":F
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 326
    return-void
.end method

.method private paintSquare(Landroid/graphics/Canvas;F)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "borderWidth"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    .line 307
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 308
    div-float v1, p2, v4

    div-float v2, p2, v4

    .line 311
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, p2, v4

    sub-float/2addr v0, v3

    sub-float v3, v0, v5

    .line 312
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, p2, v4

    sub-float/2addr v0, v4

    sub-float v4, v0, v5

    iget-object v5, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 308
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, p2

    .line 316
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, p2

    iget-object v5, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p2

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 317
    return-void
.end method


# virtual methods
.method public getAmplitudeRatio()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mAmplitudeRatio:F

    return v0
.end method

.method public getWaterLevelRatio()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaterLevelRatio:F

    return v0
.end method

.method public getWaveLengthRatio()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveLengthRatio:F

    return v0
.end method

.method public getWaveShiftRatio()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShiftRatio:F

    return v0
.end method

.method public isShowWave()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShowWave:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-boolean v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShowWave:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveLengthRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mAmplitudeRatio:F

    const v4, 0x3d4ccccd    # 0.05f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mDefaultWaterLevel:F

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 283
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShiftRatio:F

    .line 284
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaterLevelRatio:F

    sub-float/2addr v3, v4

    .line 285
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 283
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 288
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 290
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 291
    .local v0, "borderWidth":F
    :goto_0
    sget-object v1, Lcom/alipay/biometrics/ui/widget/WaveView$1;->$SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType:[I

    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShapeType:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    invoke-virtual {v2}, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 304
    .end local v0    # "borderWidth":F
    :goto_1
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    goto :goto_0

    .line 293
    .restart local v0    # "borderWidth":F
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/biometrics/ui/widget/WaveView;->paintCircleShape(Landroid/graphics/Canvas;F)V

    goto :goto_1

    .line 296
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/alipay/biometrics/ui/widget/WaveView;->paintSquare(Landroid/graphics/Canvas;F)V

    goto :goto_1

    .line 302
    .end local v0    # "borderWidth":F
    :cond_2
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mViewPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 213
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->createShader()V

    .line 214
    return-void
.end method

.method public setAmplitudeRatio(F)V
    .locals 1
    .param p1, "amplitudeRatio"    # F

    .prologue
    .line 154
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mAmplitudeRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 155
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mAmplitudeRatio:F

    .line 156
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->invalidate()V

    .line 158
    :cond_0
    return-void
.end method

.method public setBorder(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->invalidate()V

    .line 192
    return-void
.end method

.method public setShapeType(Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;)V
    .locals 0
    .param p1, "shapeType"    # Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShapeType:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    .line 206
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->invalidate()V

    .line 207
    return-void
.end method

.method public setShowWave(Z)V
    .locals 0
    .param p1, "showWave"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mShowWave:Z

    .line 180
    return-void
.end method

.method public setWaterLevelRatio(F)V
    .locals 1
    .param p1, "waterLevelRatio"    # F

    .prologue
    .line 137
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaterLevelRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 138
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaterLevelRatio:F

    .line 139
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->invalidate()V

    .line 141
    :cond_0
    return-void
.end method

.method public setWaveColor(II)V
    .locals 1
    .param p1, "behindWaveColor"    # I
    .param p2, "frontWaveColor"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mBehindWaveColor:I

    .line 196
    iput p2, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mFrontWaveColor:I

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    .line 200
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->createShader()V

    .line 201
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->invalidate()V

    .line 202
    return-void
.end method

.method public setWaveLengthRatio(F)V
    .locals 0
    .param p1, "waveLengthRatio"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveLengthRatio:F

    .line 172
    return-void
.end method

.method public setWaveShiftRatio(F)V
    .locals 1
    .param p1, "waveShiftRatio"    # F

    .prologue
    .line 120
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShiftRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 121
    iput p1, p0, Lcom/alipay/biometrics/ui/widget/WaveView;->mWaveShiftRatio:F

    .line 122
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/WaveView;->invalidate()V

    .line 124
    :cond_0
    return-void
.end method
