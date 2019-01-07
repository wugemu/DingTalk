.class public Lctd;
.super Ljava/lang/Object;
.source "WaveScaleTools.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lctd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lctd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/Integer;I)[I
    .locals 24
    .param p0, "srcData"    # [Ljava/lang/Integer;
    .param p1, "desSize"    # I

    .prologue
    .line 27
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 28
    :cond_0
    const/4 v6, 0x0

    .line 88
    :goto_0
    return-object v6

    .line 30
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 32
    .local v4, "beginTime":J
    move/from16 v0, p1

    new-array v6, v0, [I

    .line 33
    .local v6, "desData":[I
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v20, v21

    .line 35
    .local v18, "scaleFactor":F
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v19, v20, -0x1

    .line 36
    .local v19, "srcSize":I
    const/4 v10, 0x1

    .end local v6    # "desData":[I
    .local v10, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v10, v0, :cond_8

    .line 37
    add-int/lit8 v20, v10, -0x1

    aget-object v20, p0, v20

    .line 1033
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v11

    .line 38
    .local v11, "last":I
    add-int/lit8 v20, v10, 0x1

    aget-object v20, p0, v20

    .line 2033
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v14

    .line 39
    .local v14, "next":I
    aget-object v20, p0, v10

    .line 3033
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v17

    .line 40
    .local v17, "now":I
    move/from16 v0, v17

    if-le v0, v11, :cond_5

    move/from16 v0, v17

    if-le v0, v14, :cond_5

    .line 41
    int-to-float v0, v10

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v8, v0

    .line 42
    .local v8, "desPos":I
    move/from16 v0, p1

    if-lt v8, v0, :cond_2

    add-int/lit8 v8, p1, -0x1

    .line 43
    :cond_2
    aget v20, v6, v8

    if-nez v20, :cond_4

    move-object v7, v6

    .line 46
    .end local v17    # "now":I
    :goto_2
    aput v17, v7, v8

    .line 36
    .end local v8    # "desPos":I
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 46
    .restart local v8    # "desPos":I
    .restart local v17    # "now":I
    :cond_4
    aget v20, v6, v8

    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_11

    aget v17, v6, v8

    .end local v17    # "now":I
    move-object v7, v6

    goto :goto_2

    .line 49
    .end local v8    # "desPos":I
    .restart local v17    # "now":I
    :cond_5
    move/from16 v0, v17

    if-ge v0, v11, :cond_3

    move/from16 v0, v17

    if-ge v0, v14, :cond_3

    .line 50
    int-to-float v0, v10

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v8, v0

    .line 51
    .restart local v8    # "desPos":I
    move/from16 v0, p1

    if-lt v8, v0, :cond_6

    add-int/lit8 v8, p1, -0x1

    .line 52
    :cond_6
    aget v20, v6, v8

    if-nez v20, :cond_7

    move-object v7, v6

    .line 55
    .end local v17    # "now":I
    :goto_4
    aput v17, v7, v8

    goto :goto_3

    .restart local v17    # "now":I
    :cond_7
    aget v20, v6, v8

    move/from16 v0, v20

    move/from16 v1, v17

    if-gt v0, v1, :cond_10

    aget v17, v6, v8

    .end local v17    # "now":I
    move-object v7, v6

    goto :goto_4

    .line 62
    .end local v8    # "desPos":I
    .end local v11    # "last":I
    .end local v14    # "next":I
    :cond_8
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v20, v21

    .line 63
    const/4 v10, 0x0

    :goto_5
    move/from16 v0, p1

    if-ge v10, v0, :cond_f

    .line 64
    if-nez v10, :cond_a

    .line 65
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-object v21, p0, v21

    .line 4033
    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v21

    .line 65
    aput v21, v6, v20

    .line 63
    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 66
    :cond_a
    add-int/lit8 v20, p1, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_b

    .line 67
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, p0, v20

    .line 5033
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v20

    .line 67
    aput v20, v6, v10

    goto :goto_6

    .line 69
    :cond_b
    aget v20, v6, v10

    if-nez v20, :cond_9

    .line 70
    int-to-float v0, v10

    move/from16 v20, v0

    mul-float v9, v20, v18

    .line 71
    .local v9, "desPosFloat":F
    float-to-int v13, v9

    .line 72
    .local v13, "lastPos":I
    const/high16 v20, 0x3f800000    # 1.0f

    add-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 73
    .local v16, "nextPos":I
    move/from16 v0, v19

    if-lt v13, v0, :cond_c

    add-int/lit8 v13, v19, -0x1

    .line 74
    :cond_c
    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    add-int/lit8 v16, v19, -0x1

    .line 75
    :cond_d
    move/from16 v0, v16

    if-ne v13, v0, :cond_e

    .line 76
    aget-object v20, p0, v13

    .line 6033
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v20

    .line 76
    aput v20, v6, v10

    goto :goto_6

    .line 77
    :cond_e
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 78
    int-to-float v0, v13

    move/from16 v20, v0

    sub-float v12, v9, v20

    .line 79
    .local v12, "lastDistance":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v15, v20, v9

    .line 80
    .local v15, "nextDistance":F
    aget-object v20, p0, v16

    .line 7033
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v20

    .line 80
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    aget-object v21, p0, v13

    .line 8033
    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v21

    .line 81
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v15

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v6, v10

    goto/16 :goto_6

    .line 87
    .end local v9    # "desPosFloat":F
    .end local v12    # "lastDistance":F
    .end local v13    # "lastPos":I
    .end local v15    # "nextDistance":F
    .end local v16    # "nextPos":I
    :cond_f
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "src size is "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", desSize "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", takes "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v4

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .restart local v8    # "desPos":I
    .restart local v11    # "last":I
    .restart local v14    # "next":I
    .restart local v17    # "now":I
    :cond_10
    move-object v7, v6

    .local v7, "desData":[I
    goto/16 :goto_4

    .end local v7    # "desData":[I
    :cond_11
    move-object v7, v6

    .restart local v7    # "desData":[I
    goto/16 :goto_2
.end method
