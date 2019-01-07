.class public final Lksa;
.super Lkse;
.source "BufferedLineReaderInputStream.java"


# instance fields
.field a:Z

.field public b:[B

.field public c:I

.field d:I

.field private e:Z

.field private f:[B

.field private g:I

.field private h:I

.field private final i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffersize"    # I
    .param p3, "maxLineLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lkse;-><init>(Ljava/io/InputStream;)V

    .line 35
    iput-boolean v1, p0, Lksa;->a:Z

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lksa;->b:[B

    .line 59
    iput v1, p0, Lksa;->c:I

    .line 60
    iput v1, p0, Lksa;->d:I

    .line 61
    iput p3, p0, Lksa;->i:I

    .line 62
    iput-boolean v1, p0, Lksa;->e:Z

    .line 63
    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 3
    .param p1, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 309
    iget v0, p0, Lksa;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lksa;->d:I

    if-le p1, v0, :cond_1

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "looking for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lksa;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lksa;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-object v0, p0, Lksa;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final a()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 87
    iget-boolean v4, p0, Lksa;->a:Z

    if-eqz v4, :cond_1

    .line 90
    iget v3, p0, Lksa;->c:I

    iget v4, p0, Lksa;->d:I

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unread only works when a buffer is fully read before the next refill is asked!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    iget-object v3, p0, Lksa;->f:[B

    iput-object v3, p0, Lksa;->b:[B

    .line 93
    iget v3, p0, Lksa;->h:I

    iput v3, p0, Lksa;->d:I

    .line 94
    iget v3, p0, Lksa;->g:I

    iput v3, p0, Lksa;->c:I

    .line 95
    iput-boolean v7, p0, Lksa;->a:Z

    .line 97
    invoke-virtual {p0}, Lksa;->b()I

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 100
    :cond_1
    iget v4, p0, Lksa;->c:I

    if-lez v4, :cond_3

    .line 101
    invoke-virtual {p0}, Lksa;->b()I

    move-result v1

    .line 102
    .local v1, "len":I
    if-lez v1, :cond_2

    .line 103
    iget-object v4, p0, Lksa;->b:[B

    iget v5, p0, Lksa;->c:I

    iget-object v6, p0, Lksa;->b:[B

    invoke-static {v4, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_2
    iput v7, p0, Lksa;->c:I

    .line 106
    iput v1, p0, Lksa;->d:I

    .line 109
    .end local v1    # "len":I
    :cond_3
    iget v2, p0, Lksa;->d:I

    .line 110
    .local v2, "off":I
    iget-object v4, p0, Lksa;->b:[B

    array-length v4, v4

    sub-int v1, v4, v2

    .line 111
    .restart local v1    # "len":I
    iget-object v4, p0, Lksa;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lksa;->b:[B

    invoke-virtual {v4, v5, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 112
    .local v0, "l":I
    if-ne v0, v3, :cond_4

    move v0, v3

    .line 113
    goto :goto_0

    .line 115
    :cond_4
    add-int v3, v2, v0

    iput v3, p0, Lksa;->d:I

    goto :goto_0
.end method

.method public final a(BII)I
    .locals 3
    .param p1, "b"    # B
    .param p2, "off"    # I
    .param p3, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 293
    iget v1, p0, Lksa;->c:I

    if-lt p2, v1, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    iget v2, p0, Lksa;->d:I

    if-le v1, v2, :cond_1

    .line 294
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 296
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_3

    .line 297
    iget-object v1, p0, Lksa;->b:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 301
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 296
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(Lksx;)I
    .locals 9
    .param p1, "dst"    # Lksx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/io/MaxLineLimitException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Buffer may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_0
    const/4 v4, 0x0

    .line 195
    .local v4, "total":I
    const/4 v2, 0x0

    .line 196
    .local v2, "found":Z
    const/4 v0, 0x0

    .line 197
    .local v0, "bytesRead":I
    :cond_1
    if-nez v2, :cond_5

    .line 198
    invoke-virtual {p0}, Lksa;->c()Z

    move-result v6

    if-nez v6, :cond_2

    .line 199
    invoke-virtual {p0}, Lksa;->a()I

    move-result v0

    .line 200
    if-eq v0, v5, :cond_5

    .line 4305
    :cond_2
    const/16 v6, 0xa

    iget v7, p0, Lksa;->c:I

    invoke-virtual {p0}, Lksa;->b()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lksa;->a(BII)I

    move-result v3

    .line 206
    .local v3, "i":I
    if-eq v3, v5, :cond_4

    .line 207
    const/4 v2, 0x1

    .line 208
    add-int/lit8 v6, v3, 0x1

    .line 4320
    iget v7, p0, Lksa;->c:I

    .line 208
    sub-int v1, v6, v7

    .line 212
    .local v1, "chunk":I
    :goto_0
    if-lez v1, :cond_3

    .line 5316
    iget-object v6, p0, Lksa;->b:[B

    .line 5320
    iget v7, p0, Lksa;->c:I

    .line 213
    invoke-virtual {p1, v6, v7, v1}, Lksx;->a([BII)V

    .line 214
    invoke-virtual {p0, v1}, Lksa;->b(I)I

    .line 215
    add-int/2addr v4, v1

    .line 217
    :cond_3
    iget v6, p0, Lksa;->i:I

    if-lez v6, :cond_1

    .line 6117
    iget v6, p1, Lksx;->b:I

    .line 217
    iget v7, p0, Lksa;->i:I

    if-lt v6, v7, :cond_1

    .line 218
    new-instance v5, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string/jumbo v6, "Maximum line length limit exceeded"

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4328
    .end local v1    # "chunk":I
    :cond_4
    invoke-virtual {p0}, Lksa;->b()I

    move-result v1

    .line 210
    .restart local v1    # "chunk":I
    goto :goto_0

    .line 221
    .end local v1    # "chunk":I
    .end local v3    # "i":I
    :cond_5
    if-nez v4, :cond_6

    if-ne v0, v5, :cond_6

    move v4, v5

    .line 224
    .end local v4    # "total":I
    :cond_6
    return v4
.end method

.method public final a([BII)I
    .locals 11
    .param p1, "pattern"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v10, 0x100

    const/4 v7, -0x1

    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Pattern may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 240
    :cond_0
    iget v8, p0, Lksa;->c:I

    if-lt p2, v8, :cond_1

    if-ltz p3, :cond_1

    add-int v8, p2, p3

    iget v9, p0, Lksa;->d:I

    if-le v8, v9, :cond_2

    .line 241
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "looking for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lksa;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lksa;->d:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 243
    :cond_2
    array-length v8, p1

    if-ge p3, v8, :cond_4

    move v0, v7

    .line 277
    :cond_3
    :goto_0
    return v0

    .line 247
    :cond_4
    new-array v5, v10, [I

    .line 248
    .local v5, "shiftTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v10, :cond_5

    .line 249
    array-length v8, p1

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_5
    const/4 v1, 0x0

    :goto_2
    array-length v8, p1

    if-ge v1, v8, :cond_6

    .line 252
    aget-byte v8, p1, v1

    and-int/lit16 v6, v8, 0xff

    .line 253
    .local v6, "x":I
    array-length v8, p1

    sub-int/2addr v8, v1

    aput v8, v5, v6

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 256
    .end local v6    # "x":I
    :cond_6
    const/4 v2, 0x0

    .line 257
    .local v2, "j":I
    :goto_3
    array-length v8, p1

    sub-int v8, p3, v8

    if-gt v2, v8, :cond_9

    .line 258
    add-int v0, p2, v2

    .line 259
    .local v0, "cur":I
    const/4 v3, 0x1

    .line 260
    .local v3, "match":Z
    const/4 v1, 0x0

    :goto_4
    array-length v8, p1

    if-ge v1, v8, :cond_7

    .line 261
    iget-object v8, p0, Lksa;->b:[B

    add-int v9, v0, v1

    aget-byte v8, v8, v9

    aget-byte v9, p1, v1

    if-eq v8, v9, :cond_8

    .line 262
    const/4 v3, 0x0

    .line 266
    :cond_7
    if-nez v3, :cond_3

    .line 270
    array-length v8, p1

    add-int v4, v0, v8

    .line 271
    .local v4, "pos":I
    iget-object v8, p0, Lksa;->b:[B

    array-length v8, v8

    if-ge v4, v8, :cond_9

    .line 274
    iget-object v8, p0, Lksa;->b:[B

    aget-byte v8, v8, v4

    and-int/lit16 v6, v8, 0xff

    .line 275
    .restart local v6    # "x":I
    aget v8, v5, v6

    add-int/2addr v2, v8

    .line 276
    goto :goto_3

    .line 260
    .end local v4    # "pos":I
    .end local v6    # "x":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v0    # "cur":I
    .end local v3    # "match":Z
    :cond_9
    move v0, v7

    .line 277
    goto :goto_0
.end method

.method public b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    iget v0, p0, Lksa;->d:I

    iget v1, p0, Lksa;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final b(I)I
    .locals 2
    .param p1, "n"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 336
    invoke-virtual {p0}, Lksa;->b()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 337
    .local v0, "chunk":I
    iget v1, p0, Lksa;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lksa;->c:I

    .line 338
    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lksa;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 139
    .line 141
    :cond_0
    invoke-virtual {p0}, Lksa;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lksa;->a()I

    move-result v0

    .line 143
    .local v0, "noRead":I
    if-ne v0, v1, :cond_0

    .line 147
    .end local v0    # "noRead":I
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lksa;->b:[B

    iget v2, p0, Lksa;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lksa;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2
    .param p1, "b"    # [B
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

    .line 174
    .line 175
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lksa;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, -0x1

    .line 152
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lksa;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-virtual {p0}, Lksa;->a()I

    move-result v1

    .line 159
    .local v1, "noRead":I
    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 163
    .end local v1    # "noRead":I
    :cond_1
    invoke-virtual {p0}, Lksa;->b()I

    move-result v0

    .line 164
    .local v0, "chunk":I
    if-le v0, p3, :cond_2

    .line 165
    move v0, p3

    .line 167
    :cond_2
    iget-object v2, p0, Lksa;->b:[B

    iget v3, p0, Lksa;->c:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget v2, p0, Lksa;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lksa;->c:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget v2, p0, Lksa;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string/jumbo v2, "[limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v2, p0, Lksa;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget v1, p0, Lksa;->c:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lksa;->d:I

    if-ge v1, v2, :cond_0

    .line 357
    iget-object v2, p0, Lksa;->b:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-boolean v2, p0, Lksa;->a:Z

    if-eqz v2, :cond_2

    .line 361
    const-string/jumbo v2, "-ORIG[pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget v2, p0, Lksa;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string/jumbo v2, "[limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget v2, p0, Lksa;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v1, p0, Lksa;->g:I

    :goto_1
    iget v2, p0, Lksa;->h:I

    if-ge v1, v2, :cond_1

    .line 369
    iget-object v2, p0, Lksa;->f:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    :cond_1
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
