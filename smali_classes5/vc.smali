.class public final Lvc;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final h:[C

.field private static final i:[B


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x40

    .line 201
    new-array v1, v4, [C

    fill-array-data v1, :array_0

    sput-object v1, Lvc;->h:[C

    .line 212
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lvc;->i:[B

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 216
    sget-object v1, Lvc;->i:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 218
    sget-object v1, Lvc;->i:[B

    sget-object v2, Lvc;->h:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_1
    return-void

    .line 201
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    const/4 v2, 0x3

    new-array v2, v2, [B

    iput-object v2, p0, Lvc;->a:[B

    .line 61
    iput v1, p0, Lvc;->b:I

    .line 62
    iput v1, p0, Lvc;->c:I

    .line 66
    const/16 v2, 0x1ffe

    new-array v2, v2, [B

    iput-object v2, p0, Lvc;->d:[B

    .line 67
    iput v1, p0, Lvc;->e:I

    .line 68
    iput v1, p0, Lvc;->f:I

    .line 70
    iput-boolean v1, p0, Lvc;->g:Z

    .line 83
    :try_start_0
    const-string/jumbo v2, "mail.mime.base64.ignoreerrors"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lvc;->g:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 351
    :cond_0
    iget v2, p0, Lvc;->e:I

    iget v3, p0, Lvc;->f:I

    if-lt v2, v3, :cond_2

    .line 353
    :try_start_0
    iget-object v2, p0, Lvc;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lvc;->d:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iput v2, p0, Lvc;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    iget v2, p0, Lvc;->f:I

    if-gtz v2, :cond_1

    move v0, v1

    .line 370
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v2

    move v0, v1

    goto :goto_0

    .line 359
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lvc;->e:I

    .line 362
    :cond_2
    iget-object v2, p0, Lvc;->d:[B

    iget v3, p0, Lvc;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lvc;->e:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 364
    .local v0, "c":I
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_3

    .line 365
    const/4 v0, -0x2

    goto :goto_0

    .line 367
    :cond_3
    sget-object v2, Lvc;->i:[B

    aget-byte v0, v2, v0

    .line 369
    if-eq v0, v1, :cond_0

    goto :goto_0
.end method

.method private a([BII)I
    .locals 12
    .param p1, "outbuf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 236
    move v3, p2

    .line 237
    .local v3, "pos0":I
    :goto_0
    const/4 v6, 0x3

    if-lt p3, v6, :cond_d

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "got":I
    const/4 v5, 0x0

    .line 245
    .local v5, "val":I
    :goto_1
    if-ge v1, v11, :cond_c

    .line 246
    invoke-direct {p0}, Lvc;->a()I

    move-result v2

    .line 247
    .local v2, "i":I
    if-eq v2, v8, :cond_0

    if-ne v2, v9, :cond_b

    .line 249
    :cond_0
    if-ne v2, v8, :cond_4

    .line 250
    if-nez v1, :cond_1

    .line 251
    sub-int v6, p2, v3

    .line 337
    .end local v1    # "got":I
    .end local v2    # "i":I
    .end local v5    # "val":I
    :goto_2
    return v6

    .line 252
    .restart local v1    # "got":I
    .restart local v2    # "i":I
    .restart local v5    # "val":I
    :cond_1
    iget-boolean v6, p0, Lvc;->g:Z

    if-nez v6, :cond_2

    .line 253
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " before EOF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 256
    invoke-direct {p0}, Lvc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 257
    :cond_2
    const/4 v0, 0x1

    .line 278
    .local v0, "atEOF":Z
    :goto_3
    add-int/lit8 v4, v1, -0x1

    .line 279
    .local v4, "size":I
    if-nez v4, :cond_3

    .line 280
    const/4 v4, 0x1

    .line 283
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 284
    shl-int/lit8 v5, v5, 0x6

    .line 286
    :goto_4
    if-ge v1, v11, :cond_9

    .line 287
    if-nez v0, :cond_8

    .line 290
    invoke-direct {p0}, Lvc;->a()I

    move-result v2

    .line 291
    if-ne v2, v8, :cond_7

    .line 292
    iget-boolean v6, p0, Lvc;->g:Z

    if-nez v6, :cond_8

    .line 293
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lvc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 261
    .end local v0    # "atEOF":Z
    .end local v4    # "size":I
    :cond_4
    if-ge v1, v10, :cond_5

    iget-boolean v6, p0, Lvc;->g:Z

    if-nez v6, :cond_5

    .line 262
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " before padding character (=)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 266
    invoke-direct {p0}, Lvc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 269
    :cond_5
    if-nez v1, :cond_6

    .line 270
    sub-int v6, p2, v3

    goto/16 :goto_2

    .line 271
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "atEOF":Z
    goto :goto_3

    .line 298
    .restart local v4    # "size":I
    :cond_7
    if-eq v2, v9, :cond_8

    .line 299
    iget-boolean v6, p0, Lvc;->g:Z

    if-nez v6, :cond_8

    .line 300
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lvc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 307
    :cond_8
    shl-int/lit8 v5, v5, 0x6

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 312
    :cond_9
    shr-int/lit8 v5, v5, 0x8

    .line 313
    if-ne v4, v10, :cond_a

    .line 314
    add-int/lit8 v6, p2, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 315
    :cond_a
    shr-int/lit8 v5, v5, 0x8

    .line 316
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 318
    add-int/2addr p2, v4

    .line 319
    sub-int v6, p2, v3

    goto/16 :goto_2

    .line 322
    .end local v0    # "atEOF":Z
    .end local v4    # "size":I
    :cond_b
    shl-int/lit8 v5, v5, 0x6

    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    or-int/2addr v5, v2

    .line 326
    goto/16 :goto_1

    .line 329
    .end local v2    # "i":I
    :cond_c
    add-int/lit8 v6, p2, 0x2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 330
    shr-int/lit8 v5, v5, 0x8

    .line 331
    add-int/lit8 v6, p2, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 332
    shr-int/lit8 v5, v5, 0x8

    .line 333
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 334
    add-int/lit8 p3, p3, -0x3

    .line 335
    add-int/lit8 p2, p2, 0x3

    .line 336
    goto/16 :goto_0

    .line 337
    .end local v1    # "got":I
    .end local v5    # "val":I
    :cond_d
    sub-int v6, p2, v3

    goto/16 :goto_2
.end method

.method private b()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v3, 0xa

    .line 379
    const-string/jumbo v1, ""

    .line 380
    .local v1, "errstr":Ljava/lang/String;
    iget v4, p0, Lvc;->e:I

    if-le v4, v3, :cond_0

    .line 381
    .local v3, "nc":I
    :goto_0
    if-lez v3, :cond_3

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " most recent characters were: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    iget v4, p0, Lvc;->e:I

    sub-int v2, v4, v3

    .local v2, "k":I
    :goto_1
    iget v4, p0, Lvc;->e:I

    if-ge v2, v4, :cond_2

    .line 385
    iget-object v4, p0, Lvc;->d:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-char v0, v4

    .line 386
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 391
    :pswitch_0
    const/16 v4, 0x20

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_1

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 380
    .end local v0    # "c":C
    .end local v2    # "k":I
    .end local v3    # "nc":I
    :cond_0
    iget v3, p0, Lvc;->e:I

    goto :goto_0

    .line 387
    .restart local v0    # "c":C
    .restart local v2    # "k":I
    .restart local v3    # "nc":I
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 388
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 389
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 394
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 397
    .end local v0    # "c":C
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .end local v2    # "k":I
    :cond_3
    return-object v1

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Lvc;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lvc;->b:I

    iget v2, p0, Lvc;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lvc;->c:I

    iget v1, p0, Lvc;->b:I

    if-lt v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lvc;->a:[B

    iget-object v1, p0, Lvc;->a:[B

    array-length v1, v1

    invoke-direct {p0, v0, v2, v1}, Lvc;->a([BII)I

    move-result v0

    iput v0, p0, Lvc;->b:I

    .line 118
    iget v0, p0, Lvc;->b:I

    if-gtz v0, :cond_0

    .line 119
    const/4 v0, -0x1

    .line 122
    :goto_0
    return v0

    .line 120
    :cond_0
    iput v2, p0, Lvc;->c:I

    .line 122
    :cond_1
    iget-object v0, p0, Lvc;->a:[B

    iget v1, p0, Lvc;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvc;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 141
    move v3, p2

    .line 142
    .local v3, "off0":I
    :goto_0
    iget v6, p0, Lvc;->c:I

    iget v7, p0, Lvc;->b:I

    if-ge v6, v7, :cond_0

    if-lez p3, :cond_0

    .line 143
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    iget-object v6, p0, Lvc;->a:[B

    iget v7, p0, Lvc;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lvc;->c:I

    aget-byte v6, v6, v7

    aput-byte v6, p1, p2

    .line 144
    add-int/lit8 p3, p3, -0x1

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    .line 146
    :cond_0
    iget v6, p0, Lvc;->c:I

    iget v7, p0, Lvc;->b:I

    if-lt v6, v7, :cond_1

    .line 147
    const/4 v6, 0x0

    iput v6, p0, Lvc;->c:I

    iput v6, p0, Lvc;->b:I

    .line 149
    :cond_1
    div-int/lit8 v6, p3, 0x3

    mul-int/lit8 v0, v6, 0x3

    .line 150
    .local v0, "bsize":I
    if-lez v0, :cond_5

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lvc;->a([BII)I

    move-result v4

    .line 152
    .local v4, "size":I
    add-int/2addr p2, v4

    .line 153
    sub-int/2addr p3, v4

    .line 155
    if-eq v4, v0, :cond_5

    .line 156
    if-ne p2, v3, :cond_2

    .line 174
    .end local v4    # "size":I
    :goto_1
    return v5

    .line 159
    .restart local v4    # "size":I
    :cond_2
    sub-int v5, p2, v3

    goto :goto_1

    .line 164
    .end local v4    # "size":I
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :goto_2
    if-lez p3, :cond_3

    .line 165
    invoke-virtual {p0}, Lvc;->read()I

    move-result v1

    .line 166
    .local v1, "c":I
    if-eq v1, v5, :cond_3

    .line 168
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    int-to-byte v6, v1

    aput-byte v6, p1, v2

    .line 164
    add-int/lit8 p3, p3, -0x1

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_2

    .line 171
    .end local v1    # "c":I
    :cond_3
    if-ne v2, v3, :cond_4

    move p2, v2

    .line 172
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    .line 174
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :cond_4
    sub-int v5, v2, v3

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    :cond_5
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_2
.end method
