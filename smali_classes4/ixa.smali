.class public final Lixa;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# instance fields
.field a:I

.field b:I

.field private final c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const v0, 0x7fffffff

    iput v0, p0, Lixa;->g:I

    .line 409
    const/16 v0, 0x40

    iput v0, p0, Lixa;->i:I

    .line 412
    const/high16 v0, 0x4000000

    iput v0, p0, Lixa;->j:I

    .line 418
    iput-object p1, p0, Lixa;->c:[B

    .line 419
    iput p2, p0, Lixa;->a:I

    .line 420
    add-int v0, p2, p3

    iput v0, p0, Lixa;->d:I

    .line 421
    iput p2, p0, Lixa;->b:I

    .line 422
    return-void
.end method

.method private f(I)[B
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 596
    if-gez p1, :cond_0

    .line 597
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 600
    :cond_0
    iget v1, p0, Lixa;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Lixa;->g:I

    if-le v1, v2, :cond_1

    .line 602
    iget v1, p0, Lixa;->g:I

    iget v2, p0, Lixa;->b:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lixa;->g(I)V

    .line 604
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 607
    :cond_1
    iget v1, p0, Lixa;->d:I

    iget v2, p0, Lixa;->b:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    .line 609
    new-array v0, p1, [B

    .line 610
    .local v0, "bytes":[B
    iget-object v1, p0, Lixa;->c:[B

    iget v2, p0, Lixa;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    iget v1, p0, Lixa;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lixa;->b:I

    .line 612
    return-object v0

    .line 614
    .end local v0    # "bytes":[B
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1
.end method

.method private g()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 337
    invoke-direct {p0}, Lixa;->j()B

    move-result v0

    .line 338
    .local v0, "b1":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v1

    .line 339
    .local v1, "b2":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v2

    .line 340
    .local v2, "b3":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v3

    .line 341
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method private g(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 625
    if-gez p1, :cond_0

    .line 626
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 629
    :cond_0
    iget v0, p0, Lixa;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lixa;->g:I

    if-le v0, v1, :cond_1

    .line 631
    iget v0, p0, Lixa;->g:I

    iget v1, p0, Lixa;->b:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lixa;->g(I)V

    .line 633
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 636
    :cond_1
    iget v0, p0, Lixa;->d:I

    iget v1, p0, Lixa;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 638
    iget v0, p0, Lixa;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lixa;->b:I

    return-void

    .line 640
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method private h()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 349
    invoke-direct {p0}, Lixa;->j()B

    move-result v0

    .line 350
    .local v0, "b1":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v1

    .line 351
    .local v1, "b2":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v2

    .line 352
    .local v2, "b3":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v3

    .line 353
    .local v3, "b4":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v4

    .line 354
    .local v4, "b5":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v5

    .line 355
    .local v5, "b6":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v6

    .line 356
    .local v6, "b7":B
    invoke-direct {p0}, Lixa;->j()B

    move-result v7

    .line 357
    .local v7, "b8":B
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v4

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v7

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 495
    iget v1, p0, Lixa;->d:I

    iget v2, p0, Lixa;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lixa;->d:I

    .line 496
    iget v0, p0, Lixa;->d:I

    .line 497
    .local v0, "bufferEnd":I
    iget v1, p0, Lixa;->g:I

    if-le v0, v1, :cond_0

    .line 499
    iget v1, p0, Lixa;->g:I

    sub-int v1, v0, v1

    iput v1, p0, Lixa;->e:I

    .line 500
    iget v1, p0, Lixa;->d:I

    iget v2, p0, Lixa;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lixa;->d:I

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lixa;->e:I

    goto :goto_0
.end method

.method private j()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 583
    iget v0, p0, Lixa;->b:I

    iget v1, p0, Lixa;->d:I

    if-ne v0, v1, :cond_0

    .line 584
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lixa;->c:[B

    iget v1, p0, Lixa;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lixa;->b:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 71
    .line 1535
    iget v1, p0, Lixa;->b:I

    iget v2, p0, Lixa;->d:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 71
    :goto_0
    if-eqz v1, :cond_1

    .line 72
    iput v0, p0, Lixa;->f:I

    .line 81
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 1535
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lixa;->e()I

    move-result v0

    iput v0, p0, Lixa;->f:I

    .line 77
    iget v0, p0, Lixa;->f:I

    if-nez v0, :cond_2

    .line 79
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 81
    :cond_2
    iget v0, p0, Lixa;->f:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lixa;->f:I

    if-eq v0, p1, :cond_0

    .line 95
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public final a(Lixd;)V
    .locals 4
    .param p1, "msg"    # Lixd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 217
    invoke-virtual {p0}, Lixa;->e()I

    move-result v0

    .line 218
    .local v0, "length":I
    iget v2, p0, Lixa;->h:I

    iget v3, p0, Lixa;->i:I

    if-lt v2, v3, :cond_0

    .line 219
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lixa;->c(I)I

    move-result v1

    .line 222
    .local v1, "oldLimit":I
    iget v2, p0, Lixa;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lixa;->h:I

    .line 223
    invoke-virtual {p1, p0}, Lixd;->mergeFrom(Lixa;)Lixd;

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lixa;->a(I)V

    .line 225
    iget v2, p0, Lixa;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lixa;->h:I

    .line 226
    invoke-virtual {p0, v1}, Lixa;->d(I)V

    .line 227
    return-void
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lixa;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-static {p1}, Lixf;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 2169
    :pswitch_0
    invoke-virtual {p0}, Lixa;->e()I

    .line 126
    :goto_0
    return v0

    .line 111
    :pswitch_1
    invoke-direct {p0}, Lixa;->h()J

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lixa;->e()I

    move-result v1

    invoke-direct {p0, v1}, Lixa;->g(I)V

    goto :goto_0

    .line 3138
    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lixa;->a()I

    move-result v1

    .line 3139
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lixa;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :cond_1
    invoke-static {p1}, Lixf;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lixf;->a(II)I

    move-result v1

    .line 118
    invoke-virtual {p0, v1}, Lixa;->a(I)V

    goto :goto_0

    .line 123
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :pswitch_5
    invoke-direct {p0}, Lixa;->g()I

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 479
    if-gez p1, :cond_0

    .line 480
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 482
    :cond_0
    iget v1, p0, Lixa;->b:I

    add-int/2addr p1, v1

    .line 483
    iget v0, p0, Lixa;->g:I

    .line 484
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 485
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 487
    :cond_1
    iput p1, p0, Lixa;->g:I

    .line 489
    invoke-direct {p0}, Lixa;->i()V

    .line 491
    return v0
.end method

.method public final c()Ljava/lang/String;
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
    .line 189
    invoke-virtual {p0}, Lixa;->e()I

    move-result v1

    .line 190
    .local v1, "size":I
    iget v2, p0, Lixa;->d:I

    iget v3, p0, Lixa;->b:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lixa;->c:[B

    iget v3, p0, Lixa;->b:I

    sget-object v4, Lixb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 194
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lixa;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Lixa;->b:I

    .line 198
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lixa;->f(I)[B

    move-result-object v2

    sget-object v3, Lixb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public final d(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 512
    iput p1, p0, Lixa;->g:I

    .line 513
    invoke-direct {p0}, Lixa;->i()V

    .line 514
    return-void
.end method

.method public final d()[B
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
    .line 231
    invoke-virtual {p0}, Lixa;->e()I

    move-result v1

    .line 232
    .local v1, "size":I
    iget v2, p0, Lixa;->d:I

    iget v3, p0, Lixa;->b:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 235
    new-array v0, v1, [B

    .line 236
    .local v0, "result":[B
    iget-object v2, p0, Lixa;->c:[B

    iget v3, p0, Lixa;->b:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lixa;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Lixa;->b:I

    .line 243
    .end local v0    # "result":[B
    :goto_0
    return-object v0

    .line 239
    :cond_0
    if-nez v1, :cond_1

    .line 240
    sget-object v0, Lixf;->h:[B

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0, v1}, Lixa;->f(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final e()I
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
    .line 287
    invoke-direct {p0}, Lixa;->j()B

    move-result v2

    .line 288
    .local v2, "tmp":B
    if-ltz v2, :cond_1

    move v1, v2

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    and-int/lit8 v1, v2, 0x7f

    .line 292
    .local v1, "result":I
    invoke-direct {p0}, Lixa;->j()B

    move-result v2

    if-ltz v2, :cond_2

    .line 293
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    goto :goto_0

    .line 295
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 296
    invoke-direct {p0}, Lixa;->j()B

    move-result v2

    if-ltz v2, :cond_3

    .line 297
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_0

    .line 299
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 300
    invoke-direct {p0}, Lixa;->j()B

    move-result v2

    if-ltz v2, :cond_4

    .line 301
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_0

    .line 303
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 304
    invoke-direct {p0}, Lixa;->j()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 305
    if-gez v2, :cond_0

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_5

    .line 308
    invoke-direct {p0}, Lixa;->j()B

    move-result v3

    if-gez v3, :cond_0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_5
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3
.end method

.method final e(I)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 646
    packed-switch p1, :pswitch_data_0

    .line 680
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3149
    :pswitch_1
    invoke-direct {p0}, Lixa;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 648
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    .line 3154
    :pswitch_2
    invoke-direct {p0}, Lixa;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 650
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 3164
    :pswitch_3
    invoke-virtual {p0}, Lixa;->f()J

    move-result-wide v0

    .line 652
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 4159
    :pswitch_4
    invoke-virtual {p0}, Lixa;->f()J

    move-result-wide v0

    .line 654
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 4169
    :pswitch_5
    invoke-virtual {p0}, Lixa;->e()I

    move-result v0

    .line 656
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4174
    :pswitch_6
    invoke-direct {p0}, Lixa;->h()J

    move-result-wide v0

    .line 658
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 4179
    :pswitch_7
    invoke-direct {p0}, Lixa;->g()I

    move-result v0

    .line 660
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 662
    :pswitch_8
    invoke-virtual {p0}, Lixa;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 664
    :pswitch_9
    invoke-virtual {p0}, Lixa;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 666
    :pswitch_a
    invoke-virtual {p0}, Lixa;->d()[B

    move-result-object v0

    goto :goto_0

    .line 4249
    :pswitch_b
    invoke-virtual {p0}, Lixa;->e()I

    move-result v0

    .line 668
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4257
    :pswitch_c
    invoke-virtual {p0}, Lixa;->e()I

    move-result v0

    .line 670
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4262
    :pswitch_d
    invoke-direct {p0}, Lixa;->g()I

    move-result v0

    .line 672
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4267
    :pswitch_e
    invoke-direct {p0}, Lixa;->h()J

    move-result-wide v0

    .line 674
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 4272
    :pswitch_f
    invoke-virtual {p0}, Lixa;->e()I

    move-result v0

    .line 4378
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 5277
    :pswitch_10
    invoke-virtual {p0}, Lixa;->f()J

    move-result-wide v0

    .line 5392
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    .line 678
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public final f()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 324
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 325
    invoke-direct {p0}, Lixa;->j()B

    move-result v0

    .line 326
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 327
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 328
    return-wide v2

    .line 330
    :cond_0
    add-int/lit8 v1, v1, 0x7

    .line 331
    goto :goto_0

    .line 332
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v4

    throw v4
.end method
