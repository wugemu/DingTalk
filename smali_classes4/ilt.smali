.class public final Lilt;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lilt;->a:[B

    .line 20
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lilt;->b:[C

    move v1, v0

    .line 23
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 24
    sget-object v2, Lilt;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    .line 27
    sget-object v2, Lilt;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    .line 30
    sget-object v2, Lilt;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 33
    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    .line 34
    sget-object v2, Lilt;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 37
    :cond_3
    sget-object v1, Lilt;->a:[B

    aput-byte v7, v1, v5

    .line 38
    sget-object v1, Lilt;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 40
    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    .line 41
    sget-object v2, Lilt;->b:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 44
    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    .line 45
    sget-object v3, Lilt;->b:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 48
    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    .line 49
    sget-object v2, Lilt;->b:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 51
    :cond_6
    sget-object v0, Lilt;->b:[C

    aput-char v5, v0, v7

    .line 52
    sget-object v0, Lilt;->b:[C

    aput-char v6, v0, v8

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)Z
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 160
    if-nez p0, :cond_0

    move-object v0, v3

    .line 249
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1260
    if-nez v6, :cond_2

    move v1, v2

    .line 168
    :cond_1
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_5

    move-object v0, v3

    .line 169
    goto :goto_0

    .line 1266
    :cond_2
    array-length v5, v6

    move v4, v2

    move v1, v2

    .line 1267
    :goto_1
    if-ge v4, v5, :cond_1

    .line 1268
    aget-char v0, v6, v4

    .line 2057
    const/16 v7, 0x20

    if-eq v0, v7, :cond_3

    const/16 v7, 0xd

    if-eq v0, v7, :cond_3

    const/16 v7, 0xa

    if-eq v0, v7, :cond_3

    const/16 v7, 0x9

    if-ne v0, v7, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 1268
    :goto_2
    if-nez v0, :cond_12

    .line 1269
    add-int/lit8 v0, v1, 0x1

    aget-char v7, v6, v4

    aput-char v7, v6, v1

    .line 1267
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 2057
    goto :goto_2

    .line 172
    :cond_5
    div-int/lit8 v7, v1, 0x4

    .line 174
    if-nez v7, :cond_6

    .line 175
    new-array v0, v2, [B

    goto :goto_0

    .line 185
    :cond_6
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    .line 187
    :goto_4
    add-int/lit8 v8, v7, -0x1

    if-ge v5, v8, :cond_9

    .line 189
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lilt;->b(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 190
    invoke-static {v8}, Lilt;->b(C)Z

    move-result v10

    if-eqz v10, :cond_7

    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    .line 191
    invoke-static {v11}, Lilt;->b(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    .line 192
    invoke-static {v10}, Lilt;->b(C)Z

    move-result v12

    if-nez v12, :cond_8

    :cond_7
    move-object v0, v3

    .line 193
    goto :goto_0

    .line 196
    :cond_8
    sget-object v12, Lilt;->a:[B

    aget-byte v9, v12, v9

    .line 197
    sget-object v12, Lilt;->a:[B

    aget-byte v8, v12, v8

    .line 198
    sget-object v12, Lilt;->a:[B

    aget-byte v11, v12, v11

    .line 199
    sget-object v12, Lilt;->a:[B

    aget-byte v10, v12, v10

    .line 201
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 202
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    .line 203
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 206
    :cond_9
    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lilt;->b(C)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    .line 207
    invoke-static {v7}, Lilt;->b(C)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    move-object v0, v3

    .line 208
    goto/16 :goto_0

    .line 211
    :cond_b
    sget-object v9, Lilt;->a:[B

    aget-byte v9, v9, v1

    .line 212
    sget-object v1, Lilt;->a:[B

    aget-byte v7, v1, v7

    .line 214
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 215
    aget-char v1, v6, v1

    .line 216
    invoke-static {v8}, Lilt;->b(C)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v1}, Lilt;->b(C)Z

    move-result v6

    if-nez v6, :cond_11

    .line 217
    :cond_c
    invoke-static {v8}, Lilt;->a(C)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v1}, Lilt;->a(C)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 218
    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_d

    move-object v0, v3

    .line 220
    goto/16 :goto_0

    .line 222
    :cond_d
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 223
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    .line 225
    goto/16 :goto_0

    .line 226
    :cond_e
    invoke-static {v8}, Lilt;->a(C)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v1}, Lilt;->a(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 227
    sget-object v1, Lilt;->a:[B

    aget-byte v6, v1, v8

    .line 228
    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_f

    move-object v0, v3

    .line 230
    goto/16 :goto_0

    .line 232
    :cond_f
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 233
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 235
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 236
    goto/16 :goto_0

    :cond_10
    move-object v0, v3

    .line 238
    goto/16 :goto_0

    .line 241
    :cond_11
    sget-object v2, Lilt;->a:[B

    aget-byte v2, v2, v8

    .line 242
    sget-object v3, Lilt;->a:[B

    aget-byte v1, v3, v1

    .line 243
    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 244
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 245
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto/16 :goto_3
.end method

.method private static b(C)Z
    .locals 2

    .prologue
    .line 65
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lilt;->a:[B

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
