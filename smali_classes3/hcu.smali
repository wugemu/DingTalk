.class public final Lhcu;
.super Ljava/lang/Object;
.source "InputStreamBuffer.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Lhcu;->d:I

    .line 69
    iput v1, p0, Lhcu;->e:I

    .line 100
    iput-object p1, p0, Lhcu;->a:Ljava/io/InputStream;

    .line 105
    const/16 v0, 0x10

    invoke-static {v0}, Lhcu;->e(I)I

    move-result p2

    .line 106
    new-array v0, p2, [B

    iput-object v0, p0, Lhcu;->b:[B

    .line 107
    iput-boolean v1, p0, Lhcu;->c:Z

    .line 108
    return-void
.end method

.method private d(I)Z
    .locals 10
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    iget v5, p0, Lhcu;->d:I

    if-ge p1, v5, :cond_0

    .line 263
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Index %d is before buffer %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget v3, p0, Lhcu;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :cond_0
    iget v5, p0, Lhcu;->d:I

    sub-int v0, p1, v5

    .line 269
    .local v0, "i":I
    iget-object v5, p0, Lhcu;->a:Ljava/io/InputStream;

    if-nez v5, :cond_2

    .line 301
    :cond_1
    :goto_0
    return v3

    .line 274
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 275
    .local v1, "length":I
    iget-object v5, p0, Lhcu;->b:[B

    array-length v5, v5

    if-le v1, v5, :cond_3

    .line 276
    iget-boolean v5, p0, Lhcu;->c:Z

    if-eqz v5, :cond_4

    .line 277
    invoke-virtual {p0, p1}, Lhcu;->c(I)V

    .line 278
    iget v5, p0, Lhcu;->d:I

    sub-int v0, p1, v5

    .line 286
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 288
    .local v2, "read":I
    :try_start_0
    iget-object v5, p0, Lhcu;->a:Ljava/io/InputStream;

    iget-object v6, p0, Lhcu;->b:[B

    iget v7, p0, Lhcu;->e:I

    iget-object v8, p0, Lhcu;->b:[B

    array-length v8, v8

    iget v9, p0, Lhcu;->e:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 292
    :goto_2
    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 293
    iget v5, p0, Lhcu;->e:I

    add-int/2addr v5, v2

    iput v5, p0, Lhcu;->e:I

    .line 301
    :goto_3
    iget v5, p0, Lhcu;->e:I

    if-ge v0, v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 280
    .end local v2    # "read":I
    :cond_4
    invoke-static {v1}, Lhcu;->e(I)I

    move-result v1

    .line 281
    iget-object v5, p0, Lhcu;->b:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lhcu;->b:[B

    goto :goto_1

    .line 296
    .restart local v2    # "read":I
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lhcu;->a:Ljava/io/InputStream;

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private static e(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 355
    add-int/lit8 p0, p0, -0x1

    .line 356
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 357
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 358
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 359
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 360
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 361
    add-int/lit8 p0, p0, 0x1

    .line 362
    return p0
.end method


# virtual methods
.method public final a(I)B
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lhcu;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget v1, p0, Lhcu;->d:I

    sub-int v0, p1, v1

    .line 133
    .local v0, "i":I
    iget-object v1, p0, Lhcu;->b:[B

    aget-byte v1, v1, v0

    return v1

    .line 135
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "Index %d beyond length."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(I)Z
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 169
    iget v2, p0, Lhcu;->d:I

    if-ge p1, v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Index %d is before buffer %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lhcu;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_0
    iget v2, p0, Lhcu;->d:I

    sub-int v0, p1, v2

    .line 177
    .local v0, "i":I
    iget v2, p0, Lhcu;->e:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lhcu;->b:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lhcu;->d(I)Z

    move-result v1

    .line 181
    :cond_2
    return v1
.end method

.method public final c(I)V
    .locals 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 193
    iget v7, p0, Lhcu;->d:I

    sub-int v5, p1, v7

    .line 194
    .local v5, "i":I
    if-gtz v5, :cond_0

    .line 239
    :goto_0
    return-void

    .line 197
    :cond_0
    iget v7, p0, Lhcu;->e:I

    if-ge v5, v7, :cond_3

    .line 1311
    iget-object v7, p0, Lhcu;->b:[B

    array-length v7, v7

    if-lt v5, v7, :cond_1

    .line 1312
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v8, "Index %d out of bounds. Length %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 1313
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x1

    iget-object v10, p0, Lhcu;->b:[B

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1315
    :cond_1
    :goto_1
    add-int v7, v6, v5

    iget v8, p0, Lhcu;->e:I

    if-ge v7, v8, :cond_2

    .line 1316
    iget-object v7, p0, Lhcu;->b:[B

    iget-object v8, p0, Lhcu;->b:[B

    add-int v9, v6, v5

    aget-byte v8, v8, v9

    aput-byte v8, v7, v6

    .line 1315
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 200
    :cond_2
    iput p1, p0, Lhcu;->d:I

    .line 201
    iget v6, p0, Lhcu;->e:I

    sub-int/2addr v6, v5

    iput v6, p0, Lhcu;->e:I

    goto :goto_0

    .line 202
    :cond_3
    iget-object v7, p0, Lhcu;->a:Ljava/io/InputStream;

    if-eqz v7, :cond_8

    .line 204
    iget v7, p0, Lhcu;->e:I

    sub-int v0, v5, v7

    .line 205
    .local v0, "burn":I
    const/4 v1, 0x0

    .line 206
    .local v1, "empty":Z
    const/4 v4, 0x0

    .line 208
    .local v4, "fails":I
    :cond_4
    if-lez v0, :cond_5

    .line 209
    :try_start_0
    iget-object v7, p0, Lhcu;->a:Ljava/io/InputStream;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 210
    .local v2, "burned":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_7

    .line 211
    add-int/lit8 v4, v4, 0x1

    .line 216
    :goto_2
    const/4 v7, 0x5

    if-lt v4, v7, :cond_4

    .line 217
    const/4 v1, 0x1

    .line 225
    .end local v2    # "burned":J
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 227
    const/4 v7, 0x0

    iput-object v7, p0, Lhcu;->a:Ljava/io/InputStream;

    .line 230
    :cond_6
    sub-int v7, p1, v0

    iput v7, p0, Lhcu;->d:I

    .line 231
    iput v6, p0, Lhcu;->e:I

    goto :goto_0

    .line 213
    .restart local v2    # "burned":J
    :cond_7
    int-to-long v8, v0

    sub-long/2addr v8, v2

    long-to-int v0, v8

    goto :goto_2

    .line 222
    .end local v2    # "burned":J
    :catch_0
    move-exception v7

    const/4 v1, 0x1

    goto :goto_3

    .line 234
    .end local v0    # "burn":I
    .end local v1    # "empty":Z
    .end local v4    # "fails":I
    :cond_8
    iput p1, p0, Lhcu;->d:I

    .line 235
    iput v6, p0, Lhcu;->e:I

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 325
    const-string/jumbo v0, "+%d+%d [%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lhcu;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lhcu;->b:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lhcu;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
