.class public Lcom/taobao/android/runtime/BaseDexBuffer;
.super Ljava/lang/Object;
.source "BaseDexBuffer.java"


# instance fields
.field final baseOffset:I

.field final buf:[B
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/runtime/BaseDexBuffer;-><init>([BI)V

    .line 47
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buf"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 51
    iput p2, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    .line 52
    return-void
.end method


# virtual methods
.method protected getBaseOffset()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    return v0
.end method

.method protected getBuf()[B
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    return-object v0
.end method

.method public readByte(I)I
    .locals 2
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    iget v1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 126
    .local v0, "buf":[B
    iget v1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    .line 127
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method public readLong(I)J
    .locals 8
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v6, 0xff

    .line 95
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 96
    .local v0, "buf":[B
    iget v1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    .line 97
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    int-to-long v2, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, p1, 0x4

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, p1, 0x5

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, p1, 0x6

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, p1, 0x7

    aget-byte v1, v0, v1

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public readLongAsSmallUint(I)I
    .locals 10
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v8, 0xff

    .line 108
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 109
    .local v0, "buf":[B
    iget v1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    .line 110
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    int-to-long v4, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v8

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, p1, 0x4

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v8

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, p1, 0x5

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v8

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, p1, 0x6

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v8

    const/16 v1, 0x30

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, p1, 0x7

    aget-byte v1, v0, v1

    int-to-long v6, v1

    const/16 v1, 0x38

    shl-long/2addr v6, v1

    or-long v2, v4, v6

    .line 118
    .local v2, "result":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 119
    :cond_0
    new-instance v1, Lcom/taobao/android/runtime/ExceptionWithContext;

    const-string/jumbo v4, "Encountered out-of-range ulong at offset 0x%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v1, v4, v5}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 121
    :cond_1
    long-to-int v1, v2

    return v1
.end method

.method public readOptionalUint(I)I
    .locals 7
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 71
    .local v0, "buf":[B
    iget v2, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v2

    .line 72
    aget-byte v2, v0, p1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x18

    or-int v1, v2, v3

    .line 76
    .local v1, "result":I
    const/4 v2, -0x1

    if-ge v1, v2, :cond_0

    .line 77
    new-instance v2, Lcom/taobao/android/runtime/ExceptionWithContext;

    const-string/jumbo v3, "Encountered optional uint that is out of range at offset 0x%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 81
    :cond_0
    return v1
.end method

.method public readShort(I)I
    .locals 3
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 135
    .local v0, "buf":[B
    iget v1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    .line 136
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method public readSmallUint(I)I
    .locals 7
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 56
    .local v0, "buf":[B
    iget v2, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v2

    .line 57
    aget-byte v2, v0, p1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x18

    or-int v1, v2, v3

    .line 61
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 62
    new-instance v2, Lcom/taobao/android/runtime/ExceptionWithContext;

    const-string/jumbo v3, "Encountered small uint that is out of range at offset 0x%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 66
    :cond_0
    return v1
.end method

.method public readUbyte(I)I
    .locals 2
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    iget v1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUshort(I)I
    .locals 3
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->buf:[B

    .line 86
    .local v0, "buf":[B
    iget v1, p0, Lcom/taobao/android/runtime/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    .line 87
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method
