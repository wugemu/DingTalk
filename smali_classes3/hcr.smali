.class public final Lhcr;
.super Ljava/lang/Object;
.source "Exif.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lhcu;IIZ)I
    .locals 5
    .param p0, "bytes"    # Lhcu;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "littleEndian"    # Z

    .prologue
    .line 189
    const/4 v1, 0x1

    .line 190
    .local v1, "step":I
    if-eqz p3, :cond_0

    .line 191
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 192
    const/4 v1, -0x1

    .line 195
    :cond_0
    const/4 v2, 0x0

    .local v2, "value":I
    move v0, p2

    .line 196
    .end local p2    # "length":I
    .local v0, "length":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "length":I
    .restart local p2    # "length":I
    if-lez v0, :cond_1

    .line 197
    shl-int/lit8 v3, v2, 0x8

    invoke-virtual {p0, p1}, Lhcu;->a(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 198
    add-int/2addr p1, v1

    move v0, p2

    .end local p2    # "length":I
    .restart local v0    # "length":I
    goto :goto_0

    .line 200
    .end local v0    # "length":I
    .restart local p2    # "length":I
    :cond_1
    return v2
.end method

.method public static a(Ljava/io/InputStream;J)I
    .locals 17
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "byteSize"    # J

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v13, 0x0

    .line 184
    :goto_0
    return v13

    .line 71
    :cond_0
    new-instance v4, Lhcu;

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14}, Lhcu;-><init>(Ljava/io/InputStream;IZ)V

    .line 73
    .local v4, "jpeg":Lhcu;
    const/4 v8, 0x0

    .line 74
    .local v8, "offset":I
    const/4 v5, 0x0

    .line 76
    .local v5, "length":I
    const/4 v13, 0x1

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v13}, Lhcr;->a(Lhcu;JI)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 78
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lhcu;->a(I)B

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    .line 79
    invoke-virtual {v4, v13}, Lhcu;->a(I)B

    move-result v13

    const/16 v14, -0x28

    if-ne v13, v14, :cond_1

    const/4 v11, 0x1

    .line 80
    .local v11, "possibleJpegFormat":Z
    :goto_1
    if-nez v11, :cond_3

    .line 81
    const/4 v13, 0x0

    goto :goto_0

    .line 79
    .end local v11    # "possibleJpegFormat":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 125
    .local v7, "marker":I
    :cond_2
    add-int/2addr v8, v5

    .line 126
    const/4 v5, 0x0

    .line 129
    add-int/lit8 v13, v8, -0x4

    invoke-virtual {v4, v13}, Lhcu;->c(I)V

    .line 86
    .end local v7    # "marker":I
    :cond_3
    :goto_2
    add-int/lit8 v13, v8, 0x3

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v13}, Lhcr;->a(Lhcu;JI)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    invoke-virtual {v4, v8}, Lhcu;->a(I)B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0xff

    if-ne v13, v14, :cond_10

    .line 87
    invoke-virtual {v4, v9}, Lhcu;->a(I)B

    move-result v13

    and-int/lit16 v7, v13, 0xff

    .line 90
    .restart local v7    # "marker":I
    const/16 v13, 0xff

    if-eq v7, v13, :cond_f

    .line 93
    add-int/lit8 v8, v9, 0x1

    .line 96
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    const/16 v13, 0xd8

    if-eq v7, v13, :cond_3

    const/4 v13, 0x1

    if-eq v7, v13, :cond_3

    .line 100
    const/16 v13, 0xd9

    if-eq v7, v13, :cond_4

    const/16 v13, 0xda

    if-ne v7, v13, :cond_6

    .line 102
    :cond_4
    add-int/lit8 v13, v8, -0x4

    invoke-virtual {v4, v13}, Lhcu;->c(I)V

    .line 133
    .end local v7    # "marker":I
    :cond_5
    :goto_3
    const/16 v13, 0x8

    if-le v5, v13, :cond_e

    .line 135
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static {v4, v8, v13, v14}, Lhcr;->a(Lhcu;IIZ)I

    move-result v12

    .line 136
    .local v12, "tag":I
    const v13, 0x49492a00    # 823968.0f

    if-eq v12, v13, :cond_9

    const v13, 0x4d4d002a    # 2.14958752E8f

    if-eq v12, v13, :cond_9

    .line 137
    const-string/jumbo v13, "CameraExif"

    const-string/jumbo v14, "Invalid byte order"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 107
    .end local v12    # "tag":I
    .restart local v7    # "marker":I
    :cond_6
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v4, v8, v13, v14}, Lhcr;->a(Lhcu;IIZ)I

    move-result v5

    .line 108
    const/4 v13, 0x2

    if-lt v5, v13, :cond_7

    add-int v13, v8, v5

    add-int/lit8 v13, v13, -0x1

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v13}, Lhcr;->a(Lhcu;JI)Z

    move-result v13

    if-nez v13, :cond_8

    .line 109
    :cond_7
    const-string/jumbo v13, "CameraExif"

    const-string/jumbo v14, "Invalid length"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 114
    :cond_8
    const/16 v13, 0xe1

    if-ne v7, v13, :cond_2

    const/16 v13, 0x8

    if-lt v5, v13, :cond_2

    add-int/lit8 v13, v8, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 115
    invoke-static {v4, v13, v14, v15}, Lhcr;->a(Lhcu;IIZ)I

    move-result v13

    const v14, 0x45786966

    if-ne v13, v14, :cond_2

    add-int/lit8 v13, v8, 0x6

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 116
    invoke-static {v4, v13, v14, v15}, Lhcr;->a(Lhcu;IIZ)I

    move-result v13

    if-nez v13, :cond_2

    .line 117
    add-int/lit8 v8, v8, 0x8

    .line 118
    add-int/lit8 v5, v5, -0x8

    .line 120
    add-int/lit8 v13, v8, -0x4

    invoke-virtual {v4, v13}, Lhcu;->c(I)V

    goto :goto_3

    .line 140
    .end local v7    # "marker":I
    .restart local v12    # "tag":I
    :cond_9
    const v13, 0x49492a00    # 823968.0f

    if-ne v12, v13, :cond_b

    const/4 v6, 0x1

    .line 143
    .local v6, "littleEndian":Z
    :goto_4
    add-int/lit8 v13, v8, 0x4

    const/4 v14, 0x4

    invoke-static {v4, v13, v14, v6}, Lhcr;->a(Lhcu;IIZ)I

    move-result v13

    add-int/lit8 v2, v13, 0x2

    .line 144
    .local v2, "count":I
    const/16 v13, 0xa

    if-lt v2, v13, :cond_a

    if-le v2, v5, :cond_c

    .line 145
    :cond_a
    const-string/jumbo v13, "CameraExif"

    const-string/jumbo v14, "Invalid offset"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 140
    .end local v2    # "count":I
    .end local v6    # "littleEndian":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 148
    .restart local v2    # "count":I
    .restart local v6    # "littleEndian":Z
    :cond_c
    add-int/2addr v8, v2

    .line 149
    sub-int/2addr v5, v2

    .line 152
    add-int/lit8 v13, v8, -0x4

    invoke-virtual {v4, v13}, Lhcu;->c(I)V

    .line 155
    add-int/lit8 v13, v8, -0x2

    const/4 v14, 0x2

    invoke-static {v4, v13, v14, v6}, Lhcr;->a(Lhcu;IIZ)I

    move-result v2

    move v3, v2

    .line 157
    .end local v2    # "count":I
    .local v3, "count":I
    :goto_5
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    if-lez v3, :cond_e

    const/16 v13, 0xc

    if-lt v5, v13, :cond_e

    .line 159
    const/4 v13, 0x2

    invoke-static {v4, v8, v13, v6}, Lhcr;->a(Lhcu;IIZ)I

    move-result v12

    .line 160
    const/16 v13, 0x112

    if-ne v12, v13, :cond_d

    .line 162
    add-int/lit8 v13, v8, 0x8

    const/4 v14, 0x2

    invoke-static {v4, v13, v14, v6}, Lhcr;->a(Lhcu;IIZ)I

    move-result v10

    .line 163
    .local v10, "orientation":I
    packed-switch v10, :pswitch_data_0

    .line 174
    :pswitch_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 165
    :pswitch_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 167
    :pswitch_2
    const/16 v13, 0xb4

    goto/16 :goto_0

    .line 169
    :pswitch_3
    const/16 v13, 0x5a

    goto/16 :goto_0

    .line 171
    :pswitch_4
    const/16 v13, 0x10e

    goto/16 :goto_0

    .line 176
    .end local v10    # "orientation":I
    :cond_d
    add-int/lit8 v8, v8, 0xc

    .line 177
    add-int/lit8 v5, v5, -0xc

    .line 180
    add-int/lit8 v13, v8, -0x4

    invoke-virtual {v4, v13}, Lhcu;->c(I)V

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_5

    .line 184
    .end local v3    # "count":I
    .end local v6    # "littleEndian":Z
    .end local v12    # "tag":I
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_0

    .end local v8    # "offset":I
    .restart local v7    # "marker":I
    .restart local v9    # "offset":I
    :cond_f
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_2

    .end local v7    # "marker":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_10
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_3

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lhcu;JI)Z
    .locals 3
    .param p0, "jpeg"    # Lhcu;
    .param p1, "byteSize"    # J
    .param p3, "index"    # I

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 205
    int-to-long v0, p3

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0, p3}, Lhcu;->b(I)Z

    move-result v0

    goto :goto_0
.end method
