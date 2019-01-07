.class public Lkpy;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field static final synthetic a:Z

.field private static final b:[I


# instance fields
.field private final c:[B

.field private final d:Ljava/io/InputStream;

.field private final e:[B

.field private final f:Lksx;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private final k:Lkqa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 30
    const-class v1, Lkpy;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lkpy;->a:Z

    .line 33
    new-array v1, v3, [I

    sput-object v1, Lkpy;->b:[I

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 37
    sget-object v1, Lkpy;->b:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    .restart local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lkpz;->a:[B

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 39
    sget-object v1, Lkpy;->b:[I

    sget-object v2, Lkpz;->a:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aput v0, v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    :cond_2
    return-void
.end method

.method private constructor <init>(ILjava/io/InputStream;Lkqa;)V
    .locals 2
    .param p1, "bufsize"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "monitor"    # Lkqa;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lkpy;->c:[B

    .line 52
    iput v1, p0, Lkpy;->g:I

    .line 53
    iput v1, p0, Lkpy;->h:I

    .line 55
    iput-boolean v1, p0, Lkpy;->i:Z

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_0
    const/16 v0, 0x600

    new-array v0, v0, [B

    iput-object v0, p0, Lkpy;->e:[B

    .line 68
    new-instance v0, Lksx;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lksx;-><init>(I)V

    iput-object v0, p0, Lkpy;->f:Lksx;

    .line 69
    iput-object p2, p0, Lkpy;->d:Ljava/io/InputStream;

    .line 70
    iput-object p3, p0, Lkpy;->k:Lkqa;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkpy;-><init>(Ljava/io/InputStream;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lkqa;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "monitor"    # Lkqa;

    .prologue
    .line 61
    const/16 v0, 0x600

    invoke-direct {p0, v0, p1, p2}, Lkpy;-><init>(ILjava/io/InputStream;Lkqa;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "strict"    # Z

    .prologue
    .line 78
    const/16 v0, 0x600

    sget-object v1, Lkqa;->b:Lkqa;

    invoke-direct {p0, v0, p1, v1}, Lkpy;-><init>(ILjava/io/InputStream;Lkqa;)V

    .line 79
    return-void
.end method

.method private a([BII)I
    .locals 19
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    move/from16 v8, p2

    .line 137
    .local v8, "from":I
    add-int v13, p2, p3

    .line 138
    .local v13, "to":I
    move/from16 v9, p2

    .line 141
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    .line 1117
    iget v15, v15, Lksx;->b:I

    .line 141
    if-lez v15, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    .line 2117
    iget v15, v15, Lksx;->b:I

    .line 142
    move/from16 v0, p3

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 143
    .local v5, "chunk":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    .line 2121
    iget-object v15, v15, Lksx;->a:[B

    .line 143
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v15, v0, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lksx;->a(II)V

    .line 145
    add-int/2addr v9, v5

    .line 150
    .end local v5    # "chunk":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lkpy;->j:Z

    if-eqz v15, :cond_2

    .line 151
    if-ne v9, v8, :cond_1

    const/4 v15, -0x1

    .line 237
    :goto_0
    return v15

    .line 151
    :cond_1
    sub-int v15, v9, v8

    goto :goto_0

    .line 155
    :cond_2
    const/4 v6, 0x0

    .line 156
    .local v6, "data":I
    const/4 v12, 0x0

    .line 158
    .local v12, "sextets":I
    :cond_3
    if-ge v9, v13, :cond_16

    .line 161
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lkpy;->g:I

    move-object/from16 v0, p0

    iget v0, v0, Lkpy;->h:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->d:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkpy;->e:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkpy;->e:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 163
    .local v11, "n":I
    const/4 v15, -0x1

    if-ne v11, v15, :cond_7

    .line 164
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lkpy;->j:Z

    .line 166
    if-eqz v12, :cond_5

    .line 2278
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->k:Lkqa;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "dropping "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " sextet(s)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lkqa;->a()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2279
    new-instance v15, Ljava/io/IOException;

    const-string/jumbo v16, "Unexpected end of BASE64 stream"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 171
    :cond_5
    if-ne v9, v8, :cond_6

    const/4 v15, -0x1

    goto :goto_0

    :cond_6
    sub-int v15, v9, v8

    goto :goto_0

    .line 172
    :cond_7
    if-lez v11, :cond_8

    .line 173
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lkpy;->g:I

    .line 174
    move-object/from16 v0, p0

    iput v11, v0, Lkpy;->h:I

    goto :goto_1

    .line 176
    :cond_8
    sget-boolean v15, Lkpy;->a:Z

    if-nez v15, :cond_4

    if-eqz v11, :cond_4

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 199
    .end local v11    # "n":I
    .local v7, "decoded":I
    .local v14, "value":I
    :cond_9
    shl-int/lit8 v15, v6, 0x6

    or-int v6, v15, v7

    .line 200
    add-int/lit8 v12, v12, 0x1

    .line 202
    const/4 v15, 0x4

    if-ne v12, v15, :cond_a

    .line 203
    const/4 v12, 0x0

    .line 205
    ushr-int/lit8 v15, v6, 0x10

    int-to-byte v2, v15

    .line 206
    .local v2, "b1":B
    ushr-int/lit8 v15, v6, 0x8

    int-to-byte v3, v15

    .line 207
    .local v3, "b2":B
    int-to-byte v4, v6

    .line 209
    .local v4, "b3":B
    add-int/lit8 v15, v13, -0x2

    if-ge v9, v15, :cond_12

    .line 210
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .local v10, "index":I
    aput-byte v2, p1, v9

    .line 211
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    aput-byte v3, p1, v10

    .line 212
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .restart local v10    # "index":I
    aput-byte v4, p1, v9

    move v9, v10

    .line 182
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v4    # "b3":B
    .end local v7    # "decoded":I
    .end local v10    # "index":I
    .end local v14    # "value":I
    .restart local v9    # "index":I
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lkpy;->g:I

    move-object/from16 v0, p0

    iget v0, v0, Lkpy;->h:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    if-ge v9, v13, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->e:[B

    move-object/from16 v0, p0

    iget v0, v0, Lkpy;->g:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lkpy;->g:I

    aget-byte v15, v15, v16

    and-int/lit16 v14, v15, 0xff

    .line 185
    .restart local v14    # "value":I
    const/16 v15, 0x3d

    if-ne v14, v15, :cond_11

    .line 3242
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lkpy;->j:Z

    .line 3244
    const/4 v15, 0x2

    if-ne v12, v15, :cond_d

    .line 3247
    ushr-int/lit8 v15, v6, 0x4

    int-to-byte v0, v15

    move/from16 v16, v0

    .line 3248
    if-ge v9, v13, :cond_c

    .line 3249
    add-int/lit8 v15, v9, 0x1

    aput-byte v16, p1, v9

    move v9, v15

    .line 187
    :cond_b
    :goto_2
    sub-int v15, v9, v8

    goto/16 :goto_0

    .line 3251
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual/range {v15 .. v16}, Lksx;->a(I)V

    goto :goto_2

    .line 3253
    :cond_d
    const/4 v15, 0x3

    if-ne v12, v15, :cond_10

    .line 3256
    ushr-int/lit8 v15, v6, 0xa

    int-to-byte v0, v15

    move/from16 v16, v0

    .line 3257
    ushr-int/lit8 v15, v6, 0x2

    and-int/lit16 v15, v15, 0xff

    int-to-byte v0, v15

    move/from16 v17, v0

    .line 3259
    add-int/lit8 v15, v13, -0x1

    if-ge v9, v15, :cond_e

    .line 3260
    add-int/lit8 v15, v9, 0x1

    aput-byte v16, p1, v9

    .line 3261
    add-int/lit8 v9, v15, 0x1

    aput-byte v17, p1, v15

    goto :goto_2

    .line 3262
    :cond_e
    if-ge v9, v13, :cond_f

    .line 3263
    add-int/lit8 v15, v9, 0x1

    aput-byte v16, p1, v9

    .line 3264
    move-object/from16 v0, p0

    iget-object v0, v0, Lkpy;->f:Lksx;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v17}, Lksx;->a(I)V

    move v9, v15

    goto :goto_2

    .line 3266
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual/range {v15 .. v16}, Lksx;->a(I)V

    .line 3267
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lksx;->a(I)V

    goto :goto_2

    .line 3283
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->k:Lkqa;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "dropping "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " sextet(s)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lkqa;->a()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3284
    new-instance v15, Ljava/io/IOException;

    const-string/jumbo v16, "Unexpected padding character"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 190
    :cond_11
    sget-object v15, Lkpy;->b:[I

    aget v7, v15, v14

    .line 191
    .restart local v7    # "decoded":I
    if-gez v7, :cond_9

    .line 192
    const/16 v15, 0xd

    if-eq v14, v15, :cond_a

    const/16 v15, 0xa

    if-eq v14, v15, :cond_a

    const/16 v15, 0x20

    if-eq v14, v15, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->k:Lkqa;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Unexpected base64 byte: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-byte v0, v14

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lkqa;->a()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 194
    new-instance v15, Ljava/io/IOException;

    const-string/jumbo v16, "Unexpected base64 byte"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 214
    .restart local v2    # "b1":B
    .restart local v3    # "b2":B
    .restart local v4    # "b3":B
    :cond_12
    add-int/lit8 v15, v13, -0x1

    if-ge v9, v15, :cond_13

    .line 215
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .restart local v10    # "index":I
    aput-byte v2, p1, v9

    .line 216
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    aput-byte v3, p1, v10

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual {v15, v4}, Lksx;->a(I)V

    .line 228
    :goto_3
    sget-boolean v15, Lkpy;->a:Z

    if-nez v15, :cond_15

    if-eq v9, v13, :cond_15

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 218
    :cond_13
    if-ge v9, v13, :cond_14

    .line 219
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .restart local v10    # "index":I
    aput-byte v2, p1, v9

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual {v15, v3}, Lksx;->a(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual {v15, v4}, Lksx;->a(I)V

    move v9, v10

    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto :goto_3

    .line 223
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual {v15, v2}, Lksx;->a(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual {v15, v3}, Lksx;->a(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Lkpy;->f:Lksx;

    invoke-virtual {v15, v4}, Lksx;->a(I)V

    goto :goto_3

    .line 229
    :cond_15
    sub-int v15, v13, v8

    goto/16 :goto_0

    .line 235
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v4    # "b3":B
    .end local v7    # "decoded":I
    .end local v14    # "value":I
    :cond_16
    sget-boolean v15, Lkpy;->a:Z

    if-nez v15, :cond_17

    if-eqz v12, :cond_17

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 236
    :cond_17
    sget-boolean v15, Lkpy;->a:Z

    if-nez v15, :cond_18

    if-eq v9, v13, :cond_18

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 237
    :cond_18
    sub-int v15, v13, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lkpy;->i:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkpy;->i:Z

    goto :goto_0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 83
    iget-boolean v2, p0, Lkpy;->i:Z

    if-eqz v2, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream has been closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v2, p0, Lkpy;->c:[B

    invoke-direct {p0, v2, v3, v4}, Lkpy;->a([BII)I

    move-result v0

    .line 88
    .local v0, "bytes":I
    if-ne v0, v1, :cond_1

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_1
    if-ne v0, v4, :cond_0

    .line 92
    iget-object v1, p0, Lkpy;->c:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lkpy;->i:Z

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 107
    :goto_0
    return v0

    :cond_2
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lkpy;->a([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    iget-boolean v0, p0, Lkpy;->i:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 121
    :cond_3
    if-nez p3, :cond_4

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lkpy;->a([BII)I

    move-result v0

    goto :goto_0
.end method
