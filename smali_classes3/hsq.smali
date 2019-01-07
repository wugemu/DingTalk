.class public final Lhsq;
.super Ljava/lang/Object;
.source "MasicUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 40
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "precent"    # D

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 62
    .local v26, "start":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 63
    .local v5, "bmpW":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 64
    .local v9, "bmpH":I
    mul-int v2, v9, v5

    new-array v3, v2, [I

    .line 65
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 66
    int-to-double v6, v5

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v10

    double-to-int v0, v6

    move/from16 v24, v0

    .line 68
    .local v24, "raw":I
    if-nez v24, :cond_2

    .line 69
    move/from16 v25, v5

    .line 73
    .local v25, "unit":I
    :goto_0
    move/from16 v0, v25

    if-ge v0, v5, :cond_0

    move/from16 v0, v25

    if-lt v0, v9, :cond_7

    .line 74
    :cond_0
    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 1021
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    .line 1022
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1023
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1024
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1026
    const-wide/16 v12, 0x0

    cmpl-double v2, v6, v12

    if-nez v2, :cond_3

    .line 1027
    move/from16 v0, v29

    int-to-double v6, v0

    .line 1031
    :goto_1
    move/from16 v0, v29

    int-to-double v12, v0

    div-double v34, v12, v6

    .line 1032
    move/from16 v0, v32

    int-to-double v12, v0

    div-double v36, v12, v6

    .line 1033
    const/4 v2, 0x0

    move/from16 v28, v2

    :goto_2
    move/from16 v0, v28

    int-to-double v12, v0

    cmpg-double v2, v12, v36

    if-gez v2, :cond_6

    .line 1034
    const/4 v2, 0x0

    move v8, v2

    :goto_3
    int-to-double v12, v8

    cmpg-double v2, v12, v34

    if-gez v2, :cond_5

    .line 1035
    int-to-double v12, v8

    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    add-double v12, v12, v38

    mul-double/2addr v12, v6

    double-to-int v2, v12

    .line 1036
    move/from16 v0, v28

    int-to-double v12, v0

    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    add-double v12, v12, v38

    mul-double/2addr v12, v6

    double-to-int v11, v12

    .line 1038
    move/from16 v0, v29

    if-ge v2, v0, :cond_1

    move/from16 v0, v32

    if-lt v11, v0, :cond_4

    .line 1039
    :cond_1
    div-int/lit8 v2, v29, 0x2

    div-int/lit8 v11, v32, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 1043
    :goto_4
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    int-to-double v12, v8

    mul-double/2addr v12, v6

    double-to-int v2, v12

    int-to-float v11, v2

    move/from16 v0, v28

    int-to-double v12, v0

    mul-double/2addr v12, v6

    double-to-int v2, v12

    int-to-float v12, v2

    add-int/lit8 v2, v8, 0x1

    int-to-double v0, v2

    move-wide/from16 v38, v0

    mul-double v38, v38, v6

    move-wide/from16 v0, v38

    double-to-int v2, v0

    int-to-float v13, v2

    add-int/lit8 v2, v28, 0x1

    int-to-double v0, v2

    move-wide/from16 v38, v0

    mul-double v38, v38, v6

    move-wide/from16 v0, v38

    double-to-int v2, v0

    int-to-float v14, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1034
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3

    .line 71
    .end local v25    # "unit":I
    :cond_2
    div-int v25, v5, v24

    .restart local v25    # "unit":I
    goto/16 :goto_0

    .line 1029
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v6, v12, v6

    goto :goto_1

    .line 1041
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    goto :goto_4

    .line 1033
    :cond_5
    add-int/lit8 v2, v28, 0x1

    move/from16 v28, v2

    goto :goto_2

    .line 1047
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "DrawTime:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v6, v30

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v4

    .line 93
    :goto_5
    return-object v2

    .line 76
    :cond_7
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v9, :cond_c

    .line 77
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_7
    move/from16 v0, v19

    if-ge v0, v5, :cond_b

    .line 78
    mul-int v2, v18, v5

    add-int v21, v2, v19

    .line 79
    .local v21, "leftTopPoint":I
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 80
    const/16 v22, 0x0

    .local v22, "m":I
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 81
    add-int v2, v18, v20

    mul-int/2addr v2, v5

    add-int v4, v19, v22

    add-int v23, v2, v4

    .line 82
    .local v23, "point":I
    array-length v2, v3

    move/from16 v0, v23

    if-ge v0, v2, :cond_8

    .line 83
    aget v2, v3, v21

    aput v2, v3, v23

    .line 80
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 79
    .end local v23    # "point":I
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 87
    .end local v22    # "m":I
    :cond_a
    add-int v19, v19, v25

    .line 88
    goto :goto_7

    .line 89
    .end local v20    # "k":I
    .end local v21    # "leftTopPoint":I
    :cond_b
    add-int v18, v18, v25

    goto :goto_6

    .line 91
    .end local v19    # "j":I
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 92
    .local v16, "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DrawTime:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v16, v26

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_5
.end method
