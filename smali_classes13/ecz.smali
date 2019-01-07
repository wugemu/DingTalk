.class public final Lecz;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 12
    .param p0, "argb"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    const/4 v6, 0x5

    const-wide v10, 0x406fe00000000000L    # 255.0

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 64
    .line 1073
    const/4 v0, -0x1

    .line 1086
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v10

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 1087
    invoke-virtual {v1, v6, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1088
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 1089
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 1090
    invoke-virtual {v2, v6, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1091
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 1093
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float v5, v7, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1094
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float v6, v7, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 1095
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v6, v7, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    .line 1096
    sub-float v1, v7, v1

    sub-float v2, v7, v2

    mul-float/2addr v1, v2

    sub-float v1, v7, v1

    .line 1098
    div-float v2, v3, v1

    add-float/2addr v2, v8

    float-to-int v2, v2

    .line 1099
    div-float v3, v4, v1

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 1100
    div-float/2addr v0, v1

    add-float/2addr v0, v8

    float-to-int v0, v0

    .line 1101
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    add-float/2addr v1, v8

    float-to-int v1, v1

    .line 1103
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 64
    return v0
.end method

.method public static a(IF)I
    .locals 4
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1034
    .local v0, "alphaCalc":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 41
    return v1
.end method
