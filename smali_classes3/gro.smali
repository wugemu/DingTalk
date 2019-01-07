.class public final Lgro;
.super Ljava/lang/Object;
.source "QuadConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 96
    :pswitch_0
    const/4 v0, 0x0

    .line 99
    .local v0, "rotateDegree":I
    :goto_0
    return v0

    .line 87
    .end local v0    # "rotateDegree":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 88
    .restart local v0    # "rotateDegree":I
    goto :goto_0

    .line 90
    .end local v0    # "rotateDegree":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 91
    .restart local v0    # "rotateDegree":I
    goto :goto_0

    .line 93
    .end local v0    # "rotateDegree":I
    :pswitch_3
    const/16 v0, -0x5a

    .line 94
    .restart local v0    # "rotateDegree":I
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a([FII)[F
    .locals 6
    .param p0, "fromQuad"    # [F
    .param p1, "translateX"    # I
    .param p2, "translateY"    # I

    .prologue
    .line 111
    if-eqz p0, :cond_0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 112
    :cond_0
    const/4 v2, 0x0

    .line 123
    :cond_1
    return-object v2

    .line 115
    :cond_2
    array-length v3, p0

    new-array v2, v3, [F

    .line 117
    .local v2, "result":[F
    array-length v3, p0

    div-int/lit8 v1, v3, 0x2

    .line 119
    .local v1, "pointNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 120
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    aget v4, p0, v4

    int-to-float v5, p1

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 121
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p0, v4

    int-to-float v5, p2

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([FIIIIII)[F
    .locals 11
    .param p0, "fromQuad"    # [F
    .param p1, "fromWidth"    # I
    .param p2, "fromHeight"    # I
    .param p3, "toWidth"    # I
    .param p4, "toHeight"    # I
    .param p5, "fromOrientation"    # I
    .param p6, "toOrientation"    # I

    .prologue
    .line 30
    if-eqz p0, :cond_0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 33
    :cond_1
    array-length v2, p0

    new-array v1, v2, [F

    .line 36
    .local v1, "result":[F
    sub-int v2, p2, p1

    sub-int v3, p4, p3

    mul-int/2addr v2, v3

    if-lez v2, :cond_4

    .line 37
    int-to-float v2, p3

    int-to-float v3, p1

    div-float v7, v2, v3

    .line 38
    .local v7, "xRate":F
    int-to-float v2, p4

    int-to-float v3, p2

    div-float v8, v2, v3

    .line 44
    .local v8, "yRate":F
    :goto_1
    invoke-static/range {p6 .. p6}, Lgro;->a(I)I

    move-result v2

    invoke-static/range {p5 .. p5}, Lgro;->a(I)I

    move-result v3

    sub-int v6, v2, v3

    .line 45
    .local v6, "rotateDegree":I
    const-string/jumbo v2, "QuadConverter"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "get rotateDegree = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/16 v2, 0xb4

    if-le v6, v2, :cond_5

    .line 49
    add-int/lit16 v6, v6, -0x168

    .line 54
    :cond_2
    :goto_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v2, 0xb4

    if-ne v6, v2, :cond_6

    .line 58
    int-to-float v2, v6

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 76
    :cond_3
    :goto_3
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 78
    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v3, p0

    div-int/lit8 v5, v3, 0x2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    goto :goto_0

    .line 40
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "rotateDegree":I
    .end local v7    # "xRate":F
    .end local v8    # "yRate":F
    :cond_4
    int-to-float v2, p4

    int-to-float v3, p1

    div-float v7, v2, v3

    .line 41
    .restart local v7    # "xRate":F
    int-to-float v2, p3

    int-to-float v3, p2

    div-float v8, v2, v3

    .restart local v8    # "yRate":F
    goto :goto_1

    .line 50
    .restart local v6    # "rotateDegree":I
    :cond_5
    const/16 v2, -0xb4

    if-gt v6, v2, :cond_2

    .line 51
    add-int/lit16 v6, v6, 0x168

    goto :goto_2

    .line 59
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    const/16 v2, 0x5a

    if-ne v6, v2, :cond_8

    .line 60
    if-gt p1, p2, :cond_7

    .line 61
    int-to-float v2, v6

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 62
    sub-int v2, p2, p1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    .line 63
    :cond_7
    if-le p1, p2, :cond_3

    .line 64
    int-to-float v2, v6

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_3

    .line 66
    :cond_8
    const/16 v2, -0x5a

    if-ne v6, v2, :cond_3

    .line 67
    if-gt p1, p2, :cond_9

    .line 68
    int-to-float v2, v6

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_3

    .line 69
    :cond_9
    if-le p1, p2, :cond_3

    .line 70
    int-to-float v2, v6

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 71
    const/4 v2, 0x0

    sub-int v3, p1, p2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3
.end method
