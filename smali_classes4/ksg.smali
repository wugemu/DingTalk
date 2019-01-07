.class public final Lksg;
.super Lkse;
.source "MimeBoundaryInputStream.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lksa;

.field public d:I

.field private final e:[B

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lksa;Ljava/lang/String;)V
    .locals 7
    .param p1, "inbuffer"    # Lksa;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2d

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 60
    invoke-direct {p0, p1}, Lkse;-><init>(Ljava/io/InputStream;)V

    .line 1332
    iget-object v2, p1, Lksa;->b:[B

    array-length v2, v2

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Boundary is too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    iput-object p1, p0, Lksg;->c:Lksa;

    .line 66
    iput-boolean v4, p0, Lksg;->a:Z

    .line 67
    iput v5, p0, Lksg;->f:I

    .line 68
    iput-boolean v4, p0, Lksg;->g:Z

    .line 69
    iput v4, p0, Lksg;->h:I

    .line 70
    iput-boolean v4, p0, Lksg;->b:Z

    .line 71
    iput v5, p0, Lksg;->d:I

    .line 72
    iput-boolean v4, p0, Lksg;->i:Z

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lksg;->e:[B

    .line 75
    iget-object v2, p0, Lksg;->e:[B

    aput-byte v6, v2, v4

    .line 76
    iget-object v2, p0, Lksg;->e:[B

    const/4 v3, 0x1

    aput-byte v6, v2, v3

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v0, v2

    .line 79
    .local v0, "ch":B
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 80
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Boundary may not contain CR or LF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_2
    iget-object v2, p0, Lksg;->e:[B

    add-int/lit8 v3, v1, 0x2

    aput-byte v0, v2, v3

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "ch":B
    :cond_3
    invoke-direct {p0}, Lksg;->d()I

    .line 86
    return-void
.end method

.method private a()Z
    .locals 2
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

    .line 106
    iget-boolean v1, p0, Lksg;->i:Z

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-direct {p0}, Lksg;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lksg;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    invoke-direct {p0}, Lksg;->e()V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lksg;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lksg;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    iget v0, p0, Lksg;->f:I

    iget-object v1, p0, Lksg;->c:Lksa;

    .line 7320
    iget v1, v1, Lksa;->c:I

    .line 191
    if-le v0, v1, :cond_0

    iget v0, p0, Lksg;->f:I

    iget-object v1, p0, Lksg;->c:Lksa;

    .line 7324
    iget v1, v1, Lksa;->d:I

    .line 191
    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v2, -0x1

    .line 195
    iget-boolean v3, p0, Lksg;->a:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    invoke-direct {p0}, Lksg;->c()Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    iget-object v3, p0, Lksg;->c:Lksa;

    invoke-virtual {v3}, Lksa;->a()I

    move-result v0

    .line 201
    .local v0, "bytesRead":I
    if-ne v0, v2, :cond_2

    .line 202
    iput-boolean v8, p0, Lksg;->a:Z

    .line 209
    :cond_2
    :goto_1
    iget-object v3, p0, Lksg;->c:Lksa;

    iget-object v4, p0, Lksg;->e:[B

    .line 8289
    iget v5, v3, Lksa;->c:I

    iget v6, v3, Lksa;->d:I

    iget v7, v3, Lksa;->c:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lksa;->a([BII)I

    move-result v1

    .line 212
    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lksg;->c:Lksa;

    .line 8320
    iget v3, v3, Lksa;->c:I

    .line 212
    if-le v1, v3, :cond_4

    iget-object v3, p0, Lksg;->c:Lksa;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lksa;->a(I)B

    move-result v3

    if-eq v3, v9, :cond_4

    .line 215
    iget-object v3, p0, Lksg;->e:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 216
    iget-object v3, p0, Lksg;->c:Lksa;

    iget-object v4, p0, Lksg;->e:[B

    iget-object v5, p0, Lksg;->c:Lksa;

    .line 8324
    iget v5, v5, Lksa;->d:I

    .line 216
    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v1, v5}, Lksa;->a([BII)I

    move-result v1

    goto :goto_2

    .line 205
    .end local v0    # "bytesRead":I
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "bytesRead":I
    goto :goto_1

    .line 218
    .restart local v1    # "i":I
    :cond_4
    if-eq v1, v2, :cond_7

    .line 219
    iput v1, p0, Lksg;->f:I

    .line 220
    iput-boolean v8, p0, Lksg;->g:Z

    .line 9238
    iget-object v3, p0, Lksg;->e:[B

    array-length v3, v3

    iput v3, p0, Lksg;->h:I

    .line 9239
    iget v3, p0, Lksg;->f:I

    iget-object v4, p0, Lksg;->c:Lksa;

    .line 9320
    iget v4, v4, Lksa;->c:I

    .line 9239
    sub-int/2addr v3, v4

    .line 9240
    if-ltz v3, :cond_5

    iget v4, p0, Lksg;->d:I

    if-ne v4, v2, :cond_5

    iput v3, p0, Lksg;->d:I

    .line 9241
    :cond_5
    if-lez v3, :cond_6

    .line 9242
    iget-object v2, p0, Lksg;->c:Lksa;

    iget v4, p0, Lksg;->f:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lksa;->a(I)B

    move-result v2

    if-ne v2, v9, :cond_6

    .line 9243
    iget v2, p0, Lksg;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lksg;->h:I

    .line 9244
    iget v2, p0, Lksg;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lksg;->f:I

    .line 9247
    :cond_6
    if-le v3, v8, :cond_0

    .line 9248
    iget-object v2, p0, Lksg;->c:Lksa;

    iget v3, p0, Lksg;->f:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lksa;->a(I)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 9249
    iget v2, p0, Lksg;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lksg;->h:I

    .line 9250
    iget v2, p0, Lksg;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lksg;->f:I

    goto/16 :goto_0

    .line 223
    :cond_7
    iget-boolean v2, p0, Lksg;->a:Z

    if-eqz v2, :cond_8

    .line 224
    iget-object v2, p0, Lksg;->c:Lksa;

    .line 9324
    iget v2, v2, Lksa;->d:I

    .line 224
    iput v2, p0, Lksg;->f:I

    goto/16 :goto_0

    .line 226
    :cond_8
    iget-object v2, p0, Lksg;->c:Lksa;

    .line 10324
    iget v2, v2, Lksa;->d:I

    .line 226
    iget-object v3, p0, Lksg;->e:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lksg;->f:I

    goto/16 :goto_0
.end method

.method private e()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v8, 0x2d

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 256
    iget-boolean v3, p0, Lksg;->i:Z

    if-nez v3, :cond_1

    .line 257
    iput-boolean v5, p0, Lksg;->i:Z

    .line 258
    iget-object v3, p0, Lksg;->c:Lksa;

    iget v4, p0, Lksg;->h:I

    invoke-virtual {v3, v4}, Lksa;->b(I)I

    .line 259
    const/4 v2, 0x1

    .line 261
    .local v2, "checkForLastPart":Z
    :goto_0
    iget-object v3, p0, Lksg;->c:Lksa;

    .line 10328
    invoke-virtual {v3}, Lksa;->b()I

    move-result v3

    .line 261
    if-le v3, v5, :cond_4

    .line 262
    iget-object v3, p0, Lksg;->c:Lksa;

    iget-object v4, p0, Lksg;->c:Lksa;

    .line 11320
    iget v4, v4, Lksa;->c:I

    .line 262
    invoke-virtual {v3, v4}, Lksa;->a(I)B

    move-result v0

    .line 263
    .local v0, "ch1":I
    iget-object v3, p0, Lksg;->c:Lksa;

    iget-object v4, p0, Lksg;->c:Lksa;

    .line 12320
    iget v4, v4, Lksa;->c:I

    .line 263
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lksa;->a(I)B

    move-result v1

    .line 265
    .local v1, "ch2":I
    if-eqz v2, :cond_0

    if-ne v0, v8, :cond_0

    if-ne v1, v8, :cond_0

    .line 266
    iput-boolean v5, p0, Lksg;->b:Z

    .line 267
    iget-object v3, p0, Lksg;->c:Lksa;

    invoke-virtual {v3, v6}, Lksa;->b(I)I

    .line 268
    const/4 v2, 0x0

    .line 269
    goto :goto_0

    .line 272
    :cond_0
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    if-ne v1, v7, :cond_2

    .line 273
    iget-object v3, p0, Lksg;->c:Lksa;

    invoke-virtual {v3, v6}, Lksa;->b(I)I

    .line 291
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    .end local v2    # "checkForLastPart":Z
    :cond_1
    :goto_1
    return-void

    .line 275
    .restart local v0    # "ch1":I
    .restart local v1    # "ch2":I
    .restart local v2    # "checkForLastPart":Z
    :cond_2
    if-ne v0, v7, :cond_3

    .line 276
    iget-object v3, p0, Lksg;->c:Lksa;

    invoke-virtual {v3, v5}, Lksa;->b(I)I

    goto :goto_1

    .line 280
    :cond_3
    iget-object v3, p0, Lksg;->c:Lksa;

    invoke-virtual {v3, v5}, Lksa;->b(I)I

    goto :goto_0

    .line 284
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    :cond_4
    iget-boolean v3, p0, Lksg;->a:Z

    if-nez v3, :cond_1

    .line 287
    invoke-direct {p0}, Lksg;->d()I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lksx;)I
    .locals 10
    .param p1, "dst"    # Lksx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Destination buffer may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 150
    :cond_0
    invoke-direct {p0}, Lksg;->a()Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 182
    :cond_1
    :goto_0
    return v5

    .line 152
    :cond_2
    const/4 v5, 0x0

    .line 153
    .local v5, "total":I
    const/4 v2, 0x0

    .line 154
    .local v2, "found":Z
    const/4 v0, 0x0

    .line 155
    .local v0, "bytesRead":I
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 156
    invoke-direct {p0}, Lksg;->c()Z

    move-result v7

    if-nez v7, :cond_5

    .line 157
    invoke-direct {p0}, Lksg;->d()I

    move-result v0

    .line 158
    invoke-direct {p0}, Lksg;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lksg;->c()Z

    move-result v7

    if-nez v7, :cond_5

    .line 159
    invoke-direct {p0}, Lksg;->e()V

    .line 160
    const/4 v0, -0x1

    .line 179
    :cond_4
    if-nez v5, :cond_1

    if-ne v0, v6, :cond_1

    move v5, v6

    .line 180
    goto :goto_0

    .line 164
    :cond_5
    iget v7, p0, Lksg;->f:I

    iget-object v8, p0, Lksg;->c:Lksa;

    .line 3320
    iget v8, v8, Lksa;->c:I

    .line 164
    sub-int v4, v7, v8

    .line 165
    .local v4, "len":I
    iget-object v7, p0, Lksg;->c:Lksa;

    const/16 v8, 0xa

    iget-object v9, p0, Lksg;->c:Lksa;

    .line 4320
    iget v9, v9, Lksa;->c:I

    .line 165
    invoke-virtual {v7, v8, v9, v4}, Lksa;->a(BII)I

    move-result v3

    .line 167
    .local v3, "i":I
    if-eq v3, v6, :cond_6

    .line 168
    const/4 v2, 0x1

    .line 169
    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lksg;->c:Lksa;

    .line 5320
    iget v8, v8, Lksa;->c:I

    .line 169
    sub-int v1, v7, v8

    .line 173
    .local v1, "chunk":I
    :goto_2
    if-lez v1, :cond_3

    .line 174
    iget-object v7, p0, Lksg;->c:Lksa;

    .line 6316
    iget-object v7, v7, Lksa;->b:[B

    .line 174
    iget-object v8, p0, Lksg;->c:Lksa;

    .line 6320
    iget v8, v8, Lksa;->c:I

    .line 174
    invoke-virtual {p1, v7, v8, v1}, Lksx;->a([BII)V

    .line 175
    iget-object v7, p0, Lksg;->c:Lksa;

    invoke-virtual {v7, v1}, Lksa;->b(I)I

    .line 176
    add-int/2addr v5, v1

    goto :goto_1

    .line 171
    .end local v1    # "chunk":I
    :cond_6
    move v1, v4

    .restart local v1    # "chunk":I
    goto :goto_2
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, -0x1

    .line 122
    invoke-direct {p0}, Lksg;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-direct {p0}, Lksg;->d()I

    .line 124
    :cond_1
    invoke-direct {p0}, Lksg;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v0, p0, Lksg;->c:Lksa;

    invoke-virtual {v0}, Lksa;->read()I

    move-result v0

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0}, Lksg;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0}, Lksg;->e()V

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 136
    :cond_0
    invoke-direct {p0}, Lksg;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 142
    :goto_0
    return v1

    .line 137
    :cond_1
    invoke-direct {p0}, Lksg;->d()I

    .line 138
    invoke-direct {p0}, Lksg;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget v1, p0, Lksg;->f:I

    iget-object v2, p0, Lksg;->c:Lksa;

    .line 2320
    iget v2, v2, Lksa;->c:I

    .line 141
    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 142
    .local v0, "chunk":I
    iget-object v1, p0, Lksg;->c:Lksa;

    invoke-virtual {v1, p1, p2, v0}, Lksa;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MimeBoundaryInputStream, boundary "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "buffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lksg;->e:[B

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    .line 305
    .local v0, "b":B
    int-to-char v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
