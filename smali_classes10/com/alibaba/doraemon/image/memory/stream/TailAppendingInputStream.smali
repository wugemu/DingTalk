.class public Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;
.super Ljava/io/FilterInputStream;
.source "TailAppendingInputStream.java"


# instance fields
.field private mMarkedTailOffset:I

.field private final mTail:[B

.field private mTailOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "tail"    # [B

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32
    :cond_1
    iput-object p2, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTail:[B

    .line 33
    return-void
.end method

.method private readNextTailByte()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTailOffset:I

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTail:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTail:[B

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTailOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTailOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 86
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTailOffset:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mMarkedTailOffset:I

    .line 88
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 38
    .local v0, "readResult":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    .end local v0    # "readResult":I
    :goto_0
    return v0

    .restart local v0    # "readResult":I
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->readNextTailByte()I

    move-result v0

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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 51
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 52
    .local v2, "readResult":I
    if-eq v2, v3, :cond_0

    .line 69
    .end local v2    # "readResult":I
    :goto_0
    return v2

    .line 56
    .restart local v2    # "readResult":I
    :cond_0
    if-nez p3, :cond_1

    .line 57
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .local v0, "bytesRead":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->readNextTailByte()I

    move-result v1

    .line 63
    .local v1, "nextByte":I
    if-eq v1, v3, :cond_2

    .line 66
    add-int v4, p2, v0

    int-to-byte v5, v1

    aput-byte v5, p1, v4

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_1

    .line 69
    .end local v1    # "nextByte":I
    :cond_2
    if-lez v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 76
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mMarkedTailOffset:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/stream/TailAppendingInputStream;->mTailOffset:I

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
