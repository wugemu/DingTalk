.class public final Lcbo;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static a:C

.field private static b:[B

.field private static c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x3d

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 12
    sput-char v6, Lcbo;->a:C

    .line 13
    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcbo;->b:[B

    .line 14
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcbo;->c:[C

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    .line 18
    sget-object v2, Lcbo;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 21
    sget-object v2, Lcbo;->b:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 23
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 24
    sget-object v2, Lcbo;->b:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 27
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 28
    sget-object v2, Lcbo;->b:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 31
    :cond_3
    sget-object v2, Lcbo;->b:[B

    aput-byte v7, v2, v4

    .line 32
    sget-object v2, Lcbo;->b:[B

    aput-byte v8, v2, v5

    .line 34
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 35
    sget-object v2, Lcbo;->c:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 38
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 39
    sget-object v2, Lcbo;->c:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 42
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    if-gt v0, v6, :cond_6

    .line 43
    sget-object v2, Lcbo;->c:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 45
    :cond_6
    sget-object v2, Lcbo;->c:[C

    aput-char v4, v2, v7

    .line 46
    sget-object v2, Lcbo;->c:[C

    aput-char v5, v2, v8

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)Z
    .locals 1
    .param p0, "octect"    # C

    .prologue
    .line 55
    sget-char v0, Lcbo;->a:C

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 27
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    const/16 v21, 0x0

    .line 243
    :goto_0
    return-object v21

    .line 158
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 1254
    .local v8, "base64Data":[C
    if-nez v8, :cond_1

    .line 1255
    const/16 v19, 0x0

    .line 162
    .local v19, "len":I
    :goto_1
    rem-int/lit8 v22, v19, 0x4

    if-eqz v22, :cond_5

    .line 163
    const/16 v21, 0x0

    goto :goto_0

    .line 1259
    .end local v19    # "len":I
    :cond_1
    const/16 v23, 0x0

    .line 1260
    array-length v0, v8

    move/from16 v25, v0

    .line 1261
    const/16 v22, 0x0

    move/from16 v24, v22

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 1262
    aget-char v22, v8, v24

    .line 2051
    const/16 v26, 0x20

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0xd

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0xa

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0x9

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 v22, 0x1

    .line 1262
    :goto_3
    if-nez v22, :cond_13

    .line 1263
    add-int/lit8 v22, v23, 0x1

    aget-char v26, v8, v24

    aput-char v26, v8, v23

    .line 1261
    :goto_4
    add-int/lit8 v23, v24, 0x1

    move/from16 v24, v23

    move/from16 v23, v22

    goto :goto_2

    .line 2051
    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    :cond_4
    move/from16 v19, v23

    .line 1266
    goto :goto_1

    .line 166
    .restart local v19    # "len":I
    :cond_5
    div-int/lit8 v20, v19, 0x4

    .line 168
    .local v20, "numberQuadruple":I
    if-nez v20, :cond_6

    .line 169
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    goto :goto_0

    .line 176
    :cond_6
    const/16 v18, 0x0

    .line 177
    .local v18, "i":I
    const/16 v16, 0x0

    .line 178
    .local v16, "encodedIndex":I
    const/4 v13, 0x0

    .line 179
    .local v13, "dataIndex":I
    mul-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    new-array v15, v0, [B

    .local v15, "decodedData":[B
    move v14, v13

    .end local v13    # "dataIndex":I
    .local v14, "dataIndex":I
    move/from16 v17, v16

    .line 181
    .end local v16    # "encodedIndex":I
    .local v17, "encodedIndex":I
    :goto_5
    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 183
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    .local v9, "d1":C
    invoke-static {v9}, Lcbo;->b(C)Z

    move-result v22

    if-eqz v22, :cond_8

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    .line 184
    .local v10, "d2":C
    invoke-static {v10}, Lcbo;->b(C)Z

    move-result v22

    if-eqz v22, :cond_7

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    .line 185
    .local v11, "d3":C
    invoke-static {v11}, Lcbo;->b(C)Z

    move-result v22

    if-eqz v22, :cond_8

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v12, v8, v13

    .line 186
    .local v12, "d4":C
    invoke-static {v12}, Lcbo;->b(C)Z

    move-result v22

    if-nez v22, :cond_9

    .end local v11    # "d3":C
    .end local v12    # "d4":C
    :cond_7
    move v13, v14

    .line 187
    .end local v10    # "d2":C
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 190
    .end local v13    # "dataIndex":I
    .restart local v10    # "d2":C
    .restart local v11    # "d3":C
    .restart local v12    # "d4":C
    .restart local v14    # "dataIndex":I
    :cond_9
    sget-object v22, Lcbo;->b:[B

    aget-byte v4, v22, v9

    .line 191
    .local v4, "b1":B
    sget-object v22, Lcbo;->b:[B

    aget-byte v5, v22, v10

    .line 192
    .local v5, "b2":B
    sget-object v22, Lcbo;->b:[B

    aget-byte v6, v22, v11

    .line 193
    .local v6, "b3":B
    sget-object v22, Lcbo;->b:[B

    aget-byte v7, v22, v12

    .line 195
    .local v7, "b4":B
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 196
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 197
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 181
    add-int/lit8 v18, v18, 0x1

    move/from16 v17, v16

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    goto :goto_5

    .line 200
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v7    # "b4":B
    .end local v9    # "d1":C
    .end local v10    # "d2":C
    .end local v11    # "d3":C
    .end local v12    # "d4":C
    :cond_a
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    .restart local v9    # "d1":C
    invoke-static {v9}, Lcbo;->b(C)Z

    move-result v22

    if-eqz v22, :cond_b

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    .line 201
    .restart local v10    # "d2":C
    invoke-static {v10}, Lcbo;->b(C)Z

    move-result v22

    if-nez v22, :cond_c

    move v13, v14

    .line 202
    .end local v10    # "d2":C
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 205
    .end local v13    # "dataIndex":I
    .restart local v10    # "d2":C
    .restart local v14    # "dataIndex":I
    :cond_c
    sget-object v22, Lcbo;->b:[B

    aget-byte v4, v22, v9

    .line 206
    .restart local v4    # "b1":B
    sget-object v22, Lcbo;->b:[B

    aget-byte v5, v22, v10

    .line 208
    .restart local v5    # "b2":B
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    .line 209
    .restart local v11    # "d3":C
    aget-char v12, v8, v13

    .line 210
    .restart local v12    # "d4":C
    invoke-static {v11}, Lcbo;->b(C)Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-static {v12}, Lcbo;->b(C)Z

    move-result v22

    if-nez v22, :cond_12

    .line 211
    :cond_d
    invoke-static {v11}, Lcbo;->a(C)Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-static {v12}, Lcbo;->a(C)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 212
    and-int/lit8 v22, v5, 0xf

    if-eqz v22, :cond_e

    .line 214
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 216
    :cond_e
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 217
    .local v21, "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    goto/16 :goto_0

    .line 220
    .end local v21    # "tmp":[B
    :cond_f
    invoke-static {v11}, Lcbo;->a(C)Z

    move-result v22

    if-nez v22, :cond_11

    invoke-static {v12}, Lcbo;->a(C)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 221
    sget-object v22, Lcbo;->b:[B

    aget-byte v6, v22, v11

    .line 222
    .restart local v6    # "b3":B
    and-int/lit8 v22, v6, 0x3

    if-eqz v22, :cond_10

    .line 224
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 226
    :cond_10
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 227
    .restart local v21    # "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    .line 229
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v16

    goto/16 :goto_0

    .line 232
    .end local v6    # "b3":B
    .end local v16    # "encodedIndex":I
    .end local v21    # "tmp":[B
    .restart local v17    # "encodedIndex":I
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 235
    :cond_12
    sget-object v22, Lcbo;->b:[B

    aget-byte v6, v22, v11

    .line 236
    .restart local v6    # "b3":B
    sget-object v22, Lcbo;->b:[B

    aget-byte v7, v22, v12

    .line 237
    .restart local v7    # "b4":B
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 238
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 239
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    move-object/from16 v21, v15

    .line 243
    goto/16 :goto_0

    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v7    # "b4":B
    .end local v9    # "d1":C
    .end local v10    # "d2":C
    .end local v11    # "d3":C
    .end local v12    # "d4":C
    .end local v13    # "dataIndex":I
    .end local v15    # "decodedData":[B
    .end local v17    # "encodedIndex":I
    .end local v18    # "i":I
    .end local v19    # "len":I
    .end local v20    # "numberQuadruple":I
    :cond_13
    move/from16 v22, v23

    goto/16 :goto_4
.end method

.method private static b(C)Z
    .locals 2
    .param p0, "octect"    # C

    .prologue
    .line 59
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcbo;->b:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
