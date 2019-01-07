.class public final Lhcq;
.super Ljava/lang/Object;
.source "DownsampleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lgzt$a;)I
    .locals 12
    .param p0, "options"    # Lgzt$a;

    .prologue
    const/4 v4, 0x2

    const v7, 0x3f2aaaab

    const-wide v10, 0x3fd5555560000000L    # 0.3333333432674408

    const/4 v2, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 37
    iget v3, p0, Lgzt$a;->outWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lgzt$a;->outHeight:I

    if-gtz v3, :cond_1

    .line 59
    :cond_0
    return v2

    .line 1063
    :cond_1
    iget v3, p0, Lgzt$a;->outHeight:I

    if-lez v3, :cond_2

    iget v3, p0, Lgzt$a;->outWidth:I

    if-lez v3, :cond_2

    iget v3, p0, Lgzt$a;->c:I

    if-eqz v3, :cond_2

    iget v3, p0, Lgzt$a;->b:I

    if-nez v3, :cond_4

    .line 1065
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .local v1, "ratio":F
    :goto_0
    iget-object v3, p0, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    sget-object v5, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->JPEG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    if-ne v3, v5, :cond_a

    .line 1094
    cmpl-float v3, v1, v7

    if-lez v3, :cond_9

    .line 51
    .local v2, "sampleSize":I
    :cond_3
    :goto_1
    iget v3, p0, Lgzt$a;->outWidth:I

    iget v4, p0, Lgzt$a;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    .local v0, "maxDimension":I
    :goto_2
    div-int v3, v0, v2

    int-to-float v3, v3

    const/high16 v4, 0x45000000    # 2048.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 53
    iget-object v3, p0, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    sget-object v4, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->JPEG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    if-ne v3, v4, :cond_d

    .line 54
    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 1068
    .end local v0    # "maxDimension":I
    .end local v1    # "ratio":F
    .end local v2    # "sampleSize":I
    :cond_4
    iget v3, p0, Lgzt$a;->d:I

    invoke-static {v3}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v3

    .line 1069
    const/16 v5, 0x5a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_6

    :cond_5
    move v6, v2

    .line 1070
    :goto_3
    if-eqz v6, :cond_7

    iget v3, p0, Lgzt$a;->outHeight:I

    move v5, v3

    .line 1071
    :goto_4
    if-eqz v6, :cond_8

    iget v3, p0, Lgzt$a;->outWidth:I

    .line 1073
    :goto_5
    iget v6, p0, Lgzt$a;->b:I

    int-to-float v6, v6

    int-to-float v5, v5

    div-float v5, v6, v5

    .line 1074
    iget v6, p0, Lgzt$a;->c:I

    int-to-float v6, v6

    int-to-float v3, v3

    div-float v3, v6, v3

    .line 1075
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    .line 1069
    :cond_6
    const/4 v3, 0x0

    move v6, v3

    goto :goto_3

    .line 1070
    :cond_7
    iget v3, p0, Lgzt$a;->outWidth:I

    move v5, v3

    goto :goto_4

    .line 1071
    :cond_8
    iget v3, p0, Lgzt$a;->outHeight:I

    goto :goto_5

    .restart local v1    # "ratio":F
    :cond_9
    move v2, v4

    .line 1099
    :goto_6
    mul-int/lit8 v3, v2, 0x2

    int-to-double v4, v3

    div-double v4, v8, v4

    .line 1100
    mul-int/lit8 v3, v2, 0x2

    int-to-double v6, v3

    div-double v6, v8, v6

    mul-double/2addr v4, v10

    add-double/2addr v4, v6

    .line 1101
    float-to-double v6, v1

    cmpg-double v3, v4, v6

    if-lez v3, :cond_3

    .line 1104
    mul-int/lit8 v2, v2, 0x2

    .line 1105
    goto :goto_6

    .line 2079
    :cond_a
    cmpl-float v3, v1, v7

    if-lez v3, :cond_b

    .line 46
    .restart local v2    # "sampleSize":I
    :goto_7
    goto :goto_1

    .end local v2    # "sampleSize":I
    :cond_b
    move v3, v4

    .line 2084
    :goto_8
    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v3

    sub-double/2addr v4, v6

    div-double v4, v8, v4

    .line 2085
    int-to-double v6, v3

    div-double v6, v8, v6

    mul-double/2addr v4, v10

    add-double/2addr v4, v6

    .line 2086
    float-to-double v6, v1

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_c

    .line 2087
    add-int/lit8 v2, v3, -0x1

    goto :goto_7

    .line 2089
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 2090
    goto :goto_8

    .line 56
    .restart local v0    # "maxDimension":I
    .restart local v2    # "sampleSize":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public static b(Lgzt$a;)F
    .locals 11
    .param p0, "options"    # Lgzt$a;

    .prologue
    const/high16 v10, 0x45000000    # 2048.0f

    const/high16 v7, 0x41000000    # 8.0f

    .line 130
    if-eqz p0, :cond_0

    iget v6, p0, Lgzt$a;->b:I

    if-lez v6, :cond_0

    iget v6, p0, Lgzt$a;->c:I

    if-gtz v6, :cond_2

    :cond_0
    move v1, v7

    .line 144
    :cond_1
    :goto_0
    return v1

    .line 134
    :cond_2
    iget v6, p0, Lgzt$a;->d:I

    invoke-static {v6}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v3

    .line 135
    .local v3, "rotationAngle":I
    const/16 v6, 0x5a

    if-eq v3, v6, :cond_3

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 136
    .local v4, "swapDimensions":Z
    :goto_1
    if-eqz v4, :cond_5

    iget v5, p0, Lgzt$a;->outHeight:I

    .line 137
    .local v5, "widthAfterRotation":I
    :goto_2
    if-eqz v4, :cond_6

    iget v0, p0, Lgzt$a;->outWidth:I

    .line 2110
    .local v0, "heightAfterRotation":I
    :goto_3
    if-nez p0, :cond_7

    .line 2111
    const/high16 v2, 0x3f800000    # 1.0f

    .line 140
    .local v2, "ratio":F
    :goto_4
    const v6, 0x3f2aaaab

    mul-float v8, v2, v7

    add-float v1, v6, v8

    .line 141
    .local v1, "numerator":F
    cmpl-float v6, v1, v7

    if-lez v6, :cond_1

    move v1, v7

    .line 142
    goto :goto_0

    .line 135
    .end local v0    # "heightAfterRotation":I
    .end local v1    # "numerator":F
    .end local v2    # "ratio":F
    .end local v4    # "swapDimensions":Z
    .end local v5    # "widthAfterRotation":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 136
    .restart local v4    # "swapDimensions":Z
    :cond_5
    iget v5, p0, Lgzt$a;->outWidth:I

    goto :goto_2

    .line 137
    .restart local v5    # "widthAfterRotation":I
    :cond_6
    iget v0, p0, Lgzt$a;->outHeight:I

    goto :goto_3

    .line 2114
    .restart local v0    # "heightAfterRotation":I
    :cond_7
    iget v6, p0, Lgzt$a;->b:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float/2addr v6, v8

    .line 2115
    iget v8, p0, Lgzt$a;->c:I

    int-to-float v8, v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    .line 2116
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2120
    int-to-float v8, v5

    mul-float/2addr v8, v6

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8

    .line 2121
    int-to-float v6, v5

    div-float v6, v10, v6

    .line 2123
    :cond_8
    int-to-float v8, v0

    mul-float/2addr v8, v6

    cmpl-float v8, v8, v10

    if-lez v8, :cond_9

    .line 2124
    int-to-float v6, v0

    div-float v6, v10, v6

    :cond_9
    move v2, v6

    .line 2126
    goto :goto_4
.end method
