.class public Lorg/webrtc/ali/RendererCommon;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/RendererCommon$ScalingType;,
        Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;,
        Lorg/webrtc/ali/RendererCommon$YuvUploader;,
        Lorg/webrtc/ali/RendererCommon$GlDrawer;,
        Lorg/webrtc/ali/RendererCommon$RendererEvents;
    }
.end annotation


# static fields
.field private static BALANCED_VISIBLE_FRACTION:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const/high16 v0, 0x3f100000    # 0.5625f

    sput v0, Lorg/webrtc/ali/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustOrigin([F)V
    .locals 6
    .param p0, "matrix"    # [F

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xc

    const/high16 v3, 0x3f000000    # 0.5f

    .line 277
    aget v0, p0, v4

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x4

    aget v2, p0, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p0, v4

    .line 278
    aget v0, p0, v5

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x5

    aget v2, p0, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p0, v5

    .line 280
    aget v0, p0, v4

    add-float/2addr v0, v3

    aput v0, p0, v4

    .line 281
    aget v0, p0, v5

    add-float/2addr v0, v3

    aput v0, p0, v5

    .line 282
    return-void
.end method

.method private static convertScalingTypeToVisibleFraction(Lorg/webrtc/ali/RendererCommon$ScalingType;)F
    .locals 2
    .param p0, "scalingType"    # Lorg/webrtc/ali/RendererCommon$ScalingType;

    .prologue
    .line 289
    sget-object v0, Lorg/webrtc/ali/RendererCommon$1;->$SwitchMap$org$webrtc$ali$RendererCommon$ScalingType:[I

    invoke-virtual {p0}, Lorg/webrtc/ali/RendererCommon$ScalingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 291
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 295
    :goto_0
    return v0

    .line 293
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :pswitch_2
    sget v0, Lorg/webrtc/ali/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getDisplaySize(FFII)Landroid/graphics/Point;
    .locals 4
    .param p0, "minVisibleFraction"    # F
    .param p1, "videoAspectRatio"    # F
    .param p2, "maxDisplayWidth"    # I
    .param p3, "maxDisplayHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 308
    cmpl-float v2, p0, v3

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v3

    if-nez v2, :cond_1

    .line 309
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 316
    :goto_0
    return-object v2

    .line 312
    :cond_1
    int-to-float v2, p3

    div-float/2addr v2, p0

    mul-float/2addr v2, p1

    .line 313
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 312
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 314
    .local v1, "width":I
    int-to-float v2, p2

    div-float/2addr v2, p0

    div-float/2addr v2, p1

    .line 315
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 314
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 316
    .local v0, "height":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public static getDisplaySize(Lorg/webrtc/ali/RendererCommon$ScalingType;FII)Landroid/graphics/Point;
    .locals 1
    .param p0, "scalingType"    # Lorg/webrtc/ali/RendererCommon$ScalingType;
    .param p1, "videoAspectRatio"    # F
    .param p2, "maxDisplayWidth"    # I
    .param p3, "maxDisplayHeight"    # I

    .prologue
    .line 266
    invoke-static {p0}, Lorg/webrtc/ali/RendererCommon;->convertScalingTypeToVisibleFraction(Lorg/webrtc/ali/RendererCommon$ScalingType;)F

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lorg/webrtc/ali/RendererCommon;->getDisplaySize(FFII)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutMatrix(ZFF)[F
    .locals 5
    .param p0, "mirror"    # Z
    .param p1, "videoAspectRatio"    # F
    .param p2, "displayAspectRatio"    # F

    .prologue
    const/4 v4, 0x0

    .line 242
    const/high16 v1, 0x3f800000    # 1.0f

    .line 243
    .local v1, "scaleX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 245
    .local v2, "scaleY":F
    cmpl-float v3, p2, p1

    if-lez v3, :cond_1

    .line 246
    div-float v2, p1, p2

    .line 251
    :goto_0
    if-eqz p0, :cond_0

    .line 252
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v1, v3

    .line 254
    :cond_0
    const/16 v3, 0x10

    new-array v0, v3, [F

    .line 255
    .local v0, "matrix":[F
    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 256
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 257
    invoke-static {v0}, Lorg/webrtc/ali/RendererCommon;->adjustOrigin([F)V

    .line 258
    return-object v0

    .line 248
    .end local v0    # "matrix":[F
    :cond_1
    div-float v1, p2, p1

    goto :goto_0
.end method

.method public static final horizontalFlipMatrix()[F
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final identityMatrix()[F
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static multiplyMatrices([F[F)[F
    .locals 6
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v1, 0x0

    .line 231
    const/16 v2, 0x10

    new-array v0, v2, [F

    .local v0, "resultMatrix":[F
    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 232
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 233
    return-object v0
.end method

.method public static rotateTextureMatrix([FF)[F
    .locals 6
    .param p0, "textureMatrix"    # [F
    .param p1, "rotationDegree"    # F

    .prologue
    const/4 v3, 0x0

    .line 221
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 222
    .local v0, "rotationMatrix":[F
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 223
    invoke-static {v0}, Lorg/webrtc/ali/RendererCommon;->adjustOrigin([F)V

    .line 224
    invoke-static {p0, v0}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v1

    return-object v1
.end method

.method public static final verticalFlipMatrix()[F
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
