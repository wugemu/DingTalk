.class public Lcom/amap/api/maps/model/Gradient;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/Gradient$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[I

.field private c:[F

.field private d:Z


# direct methods
.method public constructor <init>([I[F)V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/maps/model/Gradient;-><init>([I[FI)V

    .line 48
    return-void
.end method

.method private constructor <init>([I[FI)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->d:Z

    .line 52
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "colors and startPoints should not be null"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    iput-boolean v4, p0, Lcom/amap/api/maps/model/Gradient;->d:Z

    .line 72
    const-string/jumbo v1, "amap"

    invoke-virtual {v0}, Lcom/amap/api/maps/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v0}, Lcom/amap/api/maps/AMapException;->printStackTrace()V

    .line 75
    :goto_0
    return-void

    .line 54
    :cond_1
    :try_start_1
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    .line 55
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "colors and startPoints should be same length"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    array-length v1, p1

    if-nez v1, :cond_4

    .line 57
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "No colors have been defined"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    array-length v1, p2

    if-ge v0, v1, :cond_5

    .line 60
    aget v1, p2, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 61
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "startPoints should be in increasing order"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_5
    iput p3, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    .line 65
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    .line 66
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    .line 67
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->d:Z
    :try_end_1
    .catch Lcom/amap/api/maps/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static a(IIF)I
    .locals 10

    .prologue
    const/high16 v9, 0x43b40000    # 360.0f

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 125
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 127
    new-array v2, v7, [F

    .line 128
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 129
    new-array v3, v7, [F

    .line 130
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 132
    aget v4, v2, v0

    aget v5, v3, v0

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1

    .line 133
    aget v4, v3, v0

    add-float/2addr v4, v9

    aput v4, v3, v0

    .line 138
    :cond_0
    :goto_0
    new-array v4, v7, [F

    .line 139
    :goto_1
    if-ge v0, v7, :cond_2

    .line 140
    aget v5, v3, v0

    aget v6, v2, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    aget v6, v2, v0

    add-float/2addr v5, v6

    aput v5, v4, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_1
    aget v4, v3, v0

    aget v5, v2, v0

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v8

    if-lez v4, :cond_0

    .line 135
    aget v4, v2, v0

    add-float/2addr v4, v9

    aput v4, v2, v0

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {v1, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method private a()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/maps/model/Gradient$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 78
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 79
    iget-object v0, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v0, v0, v8

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v0, v0, v8

    .line 81
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v1, v1, v8

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v2, v2, v8

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 80
    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 82
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v3, v1, v8

    iget v1, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v4, v4, v8

    mul-float/2addr v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/Gradient$a;-><init>(Lcom/amap/api/maps/model/Gradient;IIFLcom/amap/api/maps/model/Gradient$1;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    const/4 v0, 0x1

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 86
    iget v0, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    add-int/lit8 v2, v6, -0x1

    aget v2, v1, v2

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v3, v1, v6

    iget v1, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v4, v4, v6

    iget-object v9, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    add-int/lit8 v10, v6, -0x1

    aget v9, v9, v10

    sub-float/2addr v4, v9

    mul-float/2addr v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/Gradient$a;-><init>(Lcom/amap/api/maps/model/Gradient;IIFLcom/amap/api/maps/model/Gradient$1;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 93
    iget v0, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v2, v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v2, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v4, v4

    iget-object v8, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v1, v8, v1

    sub-float v1, v11, v1

    mul-float/2addr v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/Gradient$a;-><init>(Lcom/amap/api/maps/model/Gradient;IIFLcom/amap/api/maps/model/Gradient$1;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2
    return-object v7
.end method


# virtual methods
.method protected generateColorMap(D)[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lcom/amap/api/maps/model/Gradient;->a()Ljava/util/HashMap;

    move-result-object v5

    .line 101
    iget v0, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    new-array v6, v0, [I

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Gradient$a;

    move v1, v2

    move-object v3, v0

    move v0, v2

    .line 104
    :goto_0
    iget v4, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    if-ge v1, v4, :cond_0

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Gradient$a;

    move v3, v1

    move-object v4, v0

    .line 109
    :goto_1
    sub-int v0, v1, v3

    int-to-float v0, v0

    invoke-static {v4}, Lcom/amap/api/maps/model/Gradient$a;->a(Lcom/amap/api/maps/model/Gradient$a;)F

    move-result v7

    div-float/2addr v0, v7

    .line 110
    invoke-static {v4}, Lcom/amap/api/maps/model/Gradient$a;->b(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v7

    invoke-static {v4}, Lcom/amap/api/maps/model/Gradient$a;->c(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v8

    invoke-static {v7, v8, v0}, Lcom/amap/api/maps/model/Gradient;->a(IIF)I

    move-result v0

    aput v0, v6, v1

    .line 104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    move-object v3, v4

    goto :goto_0

    .line 112
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_1

    .line 113
    :goto_2
    iget v0, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    if-ge v2, v0, :cond_1

    .line 114
    aget v0, v6, v2

    .line 115
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, p1

    double-to-int v1, v4

    .line 116
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 115
    invoke-static {v1, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v6, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    :cond_1
    return-object v6

    :cond_2
    move-object v4, v3

    move v3, v0

    goto :goto_1
.end method

.method protected isAvailable()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->d:Z

    return v0
.end method
