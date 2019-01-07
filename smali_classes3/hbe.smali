.class public final Lhbe;
.super Ljava/lang/Object;
.source "Blur.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "originBm"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 13
    .local v2, "originalBitmap":Landroid/graphics/Bitmap;
    if-gtz p1, :cond_0

    .line 14
    const/4 v2, 0x0

    .line 207
    .end local v2    # "originalBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 17
    .restart local v2    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 18
    .local v5, "bWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 20
    .local v9, "bHeight":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 21
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    add-int/lit8 v36, v5, -0x1

    .line 24
    .local v36, "tmpWM":I
    add-int/lit8 v24, v9, -0x1

    .line 25
    .local v24, "tmpHM":I
    mul-int v35, v5, v9

    .line 26
    .local v35, "tmpWH":I
    add-int v4, p1, p1

    add-int/lit8 v19, v4, 0x1

    .line 28
    .local v19, "tmpDIV":I
    move/from16 v0, v35

    new-array v14, v0, [I

    .line 29
    .local v14, "rgbR":[I
    move/from16 v0, v35

    new-array v12, v0, [I

    .line 30
    .local v12, "rgbG":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 32
    .local v10, "rgbB":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 34
    .local v34, "tmpVMin":[I
    add-int/lit8 v4, v19, 0x1

    shr-int/lit8 v21, v4, 0x1

    .line 35
    .local v21, "tmpDivSum":I
    mul-int v21, v21, v21

    .line 36
    move/from16 v0, v21

    mul-int/lit16 v4, v0, 0x100

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 37
    .local v20, "tmpDV":[I
    const/16 v25, 0x0

    .local v25, "tmpI":I
    :goto_1
    move/from16 v0, v21

    mul-int/lit16 v4, v0, 0x100

    move/from16 v0, v25

    if-ge v0, v4, :cond_1

    .line 38
    div-int v4, v25, v21

    aput v4, v20, v25

    .line 37
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 41
    :cond_1
    const/16 v39, 0x0

    .local v39, "tmpYI":I
    move/from16 v41, v39

    .line 43
    .local v41, "tmpYW":I
    const/4 v4, 0x3

    move/from16 v0, v19

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[I

    .line 48
    .local v16, "stacks":[[I
    add-int/lit8 v27, p1, 0x1

    .line 52
    .local v27, "tmpR1":I
    const/16 v38, 0x0

    .local v38, "tmpY":I
    :goto_2
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    .line 53
    const/4 v11, 0x0

    .local v11, "rgbBSum":I
    move v13, v11

    .local v13, "rgbGSum":I
    move v15, v11

    .local v15, "rgbRSum":I
    move/from16 v17, v11

    .local v17, "tmpBOutSum":I
    move/from16 v23, v11

    .local v23, "tmpGoutSum":I
    move/from16 v30, v11

    .local v30, "tmpRoutSum":I
    move/from16 v18, v11

    .local v18, "tmpBinSum":I
    move/from16 v22, v11

    .local v22, "tmpGinSum":I
    move/from16 v29, v11

    .line 54
    .local v29, "tmpRinSum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v25, v0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, p1

    if-gt v0, v1, :cond_3

    .line 55
    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v26, v3, v4

    .line 56
    .local v26, "tmpP":I
    add-int v4, v25, p1

    aget-object v31, v16, v4

    .line 57
    .local v31, "tmpSir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x10

    aput v6, v31, v4

    .line 58
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x8

    aput v6, v31, v4

    .line 59
    const/4 v4, 0x2

    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xff

    aput v6, v31, v4

    .line 60
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 61
    .local v28, "tmpRBS":I
    const/4 v4, 0x0

    aget v4, v31, v4

    mul-int v4, v4, v28

    add-int/2addr v15, v4

    .line 62
    const/4 v4, 0x1

    aget v4, v31, v4

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 63
    const/4 v4, 0x2

    aget v4, v31, v4

    mul-int v4, v4, v28

    add-int/2addr v11, v4

    .line 64
    if-lez v25, :cond_2

    .line 65
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 66
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v22, v22, v4

    .line 67
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 54
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 69
    :cond_2
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v30, v30, v4

    .line 70
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v23, v23, v4

    .line 71
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v17, v17, v4

    goto :goto_4

    .line 74
    .end local v26    # "tmpP":I
    .end local v28    # "tmpRBS":I
    .end local v31    # "tmpSir":[I
    :cond_3
    move/from16 v32, p1

    .line 76
    .local v32, "tmpStackPointer":I
    const/16 v37, 0x0

    .local v37, "tmpX":I
    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    .line 78
    aget v4, v20, v15

    aput v4, v14, v39

    .line 79
    aget v4, v20, v13

    aput v4, v12, v39

    .line 80
    aget v4, v20, v11

    aput v4, v10, v39

    .line 82
    sub-int v15, v15, v30

    .line 83
    sub-int v13, v13, v23

    .line 84
    sub-int v11, v11, v17

    .line 86
    sub-int v4, v32, p1

    add-int v33, v4, v19

    .line 87
    .local v33, "tmpStackStart":I
    rem-int v4, v33, v19

    aget-object v31, v16, v4

    .line 89
    .restart local v31    # "tmpSir":[I
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v30, v30, v4

    .line 90
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v23, v23, v4

    .line 91
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int v17, v17, v4

    .line 93
    if-nez v38, :cond_4

    .line 94
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 96
    :cond_4
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v26, v3, v4

    .line 98
    .restart local v26    # "tmpP":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x10

    aput v6, v31, v4

    .line 99
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x8

    aput v6, v31, v4

    .line 100
    const/4 v4, 0x2

    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xff

    aput v6, v31, v4

    .line 102
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 103
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v22, v22, v4

    .line 104
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 106
    add-int v15, v15, v29

    .line 107
    add-int v13, v13, v22

    .line 108
    add-int v11, v11, v18

    .line 110
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v19

    .line 111
    rem-int v4, v32, v19

    aget-object v31, v16, v4

    .line 113
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v30, v30, v4

    .line 114
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v23, v23, v4

    .line 115
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v17, v17, v4

    .line 117
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v29, v29, v4

    .line 118
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v22, v22, v4

    .line 119
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int v18, v18, v4

    .line 121
    add-int/lit8 v39, v39, 0x1

    .line 76
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 123
    .end local v26    # "tmpP":I
    .end local v31    # "tmpSir":[I
    .end local v33    # "tmpStackStart":I
    :cond_5
    add-int v41, v41, v5

    .line 52
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 125
    .end local v11    # "rgbBSum":I
    .end local v13    # "rgbGSum":I
    .end local v15    # "rgbRSum":I
    .end local v17    # "tmpBOutSum":I
    .end local v18    # "tmpBinSum":I
    .end local v22    # "tmpGinSum":I
    .end local v23    # "tmpGoutSum":I
    .end local v29    # "tmpRinSum":I
    .end local v30    # "tmpRoutSum":I
    .end local v32    # "tmpStackPointer":I
    .end local v37    # "tmpX":I
    :cond_6
    const/16 v37, 0x0

    .restart local v37    # "tmpX":I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    .line 126
    const/4 v11, 0x0

    .restart local v11    # "rgbBSum":I
    move v13, v11

    .restart local v13    # "rgbGSum":I
    move v15, v11

    .restart local v15    # "rgbRSum":I
    move/from16 v17, v11

    .restart local v17    # "tmpBOutSum":I
    move/from16 v23, v11

    .restart local v23    # "tmpGoutSum":I
    move/from16 v30, v11

    .restart local v30    # "tmpRoutSum":I
    move/from16 v18, v11

    .restart local v18    # "tmpBinSum":I
    move/from16 v22, v11

    .restart local v22    # "tmpGinSum":I
    move/from16 v29, v11

    .line 127
    .restart local v29    # "tmpRinSum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 128
    .local v40, "tmpYP":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v25, v0

    :goto_7
    move/from16 v0, v25

    move/from16 v1, p1

    if-gt v0, v1, :cond_9

    .line 129
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 131
    add-int v4, v25, p1

    aget-object v31, v16, v4

    .line 133
    .restart local v31    # "tmpSir":[I
    const/4 v4, 0x0

    aget v6, v14, v39

    aput v6, v31, v4

    .line 134
    const/4 v4, 0x1

    aget v6, v12, v39

    aput v6, v31, v4

    .line 135
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v31, v4

    .line 137
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 139
    .restart local v28    # "tmpRBS":I
    aget v4, v14, v39

    mul-int v4, v4, v28

    add-int/2addr v15, v4

    .line 140
    aget v4, v12, v39

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 141
    aget v4, v10, v39

    mul-int v4, v4, v28

    add-int/2addr v11, v4

    .line 143
    if-lez v25, :cond_8

    .line 144
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 145
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v22, v22, v4

    .line 146
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 153
    :goto_8
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 154
    add-int v40, v40, v5

    .line 128
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 148
    :cond_8
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v30, v30, v4

    .line 149
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v23, v23, v4

    .line 150
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v17, v17, v4

    goto :goto_8

    .line 157
    .end local v28    # "tmpRBS":I
    .end local v31    # "tmpSir":[I
    :cond_9
    move/from16 v39, v37

    .line 158
    move/from16 v32, p1

    .line 159
    .restart local v32    # "tmpStackPointer":I
    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    .line 161
    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v20, v15

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v20, v13

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v20, v11

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 163
    sub-int v15, v15, v30

    .line 164
    sub-int v13, v13, v23

    .line 165
    sub-int v11, v11, v17

    .line 167
    sub-int v4, v32, p1

    add-int v33, v4, v19

    .line 168
    .restart local v33    # "tmpStackStart":I
    rem-int v4, v33, v19

    aget-object v31, v16, v4

    .line 170
    .restart local v31    # "tmpSir":[I
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v30, v30, v4

    .line 171
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v23, v23, v4

    .line 172
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int v17, v17, v4

    .line 174
    if-nez v37, :cond_a

    .line 175
    add-int v4, v38, v27

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 177
    :cond_a
    aget v4, v34, v38

    add-int v26, v37, v4

    .line 179
    .restart local v26    # "tmpP":I
    const/4 v4, 0x0

    aget v6, v14, v26

    aput v6, v31, v4

    .line 180
    const/4 v4, 0x1

    aget v6, v12, v26

    aput v6, v31, v4

    .line 181
    const/4 v4, 0x2

    aget v6, v10, v26

    aput v6, v31, v4

    .line 183
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 184
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v22, v22, v4

    .line 185
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 187
    add-int v15, v15, v29

    .line 188
    add-int v13, v13, v22

    .line 189
    add-int v11, v11, v18

    .line 191
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v19

    .line 192
    aget-object v31, v16, v32

    .line 194
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v29, v29, v4

    .line 195
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v22, v22, v4

    .line 196
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int v18, v18, v4

    .line 198
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v30, v30, v4

    .line 199
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v23, v23, v4

    .line 200
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int v17, v17, v4

    .line 202
    add-int v39, v39, v5

    .line 159
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    .line 125
    .end local v26    # "tmpP":I
    .end local v31    # "tmpSir":[I
    .end local v33    # "tmpStackStart":I
    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 206
    .end local v11    # "rgbBSum":I
    .end local v13    # "rgbGSum":I
    .end local v15    # "rgbRSum":I
    .end local v17    # "tmpBOutSum":I
    .end local v18    # "tmpBinSum":I
    .end local v22    # "tmpGinSum":I
    .end local v23    # "tmpGoutSum":I
    .end local v29    # "tmpRinSum":I
    .end local v30    # "tmpRoutSum":I
    .end local v32    # "tmpStackPointer":I
    .end local v40    # "tmpYP":I
    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method
