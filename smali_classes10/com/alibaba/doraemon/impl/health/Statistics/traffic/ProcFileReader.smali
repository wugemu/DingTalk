.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mBuffer:[B

.field private mLineFinished:Z

.field private final mStream:Ljava/io/InputStream;

.field private mTail:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 50
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    .line 53
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->fillBuf()I

    .line 54
    return-void
.end method

.method private consumeBuf(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    .line 81
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->fillBuf()I

    .line 84
    :cond_0
    return-void
.end method

.method private fillBuf()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    sub-int v0, v2, v3

    .line 61
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 62
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "attempting to fill already-full buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    iget v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 66
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 67
    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    .line 69
    :cond_1
    return v1
.end method

.method private invalidLong(I)Ljava/lang/NumberFormatException;
    .locals 6
    .param p1, "tokenIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private nextTokenIndex()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mLineFinished:Z

    if-eqz v2, :cond_1

    .line 95
    const/4 v1, -0x1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    const/4 v1, 0x0

    .line 101
    .local v1, "i":I
    :cond_2
    :goto_1
    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    if-ge v1, v2, :cond_4

    .line 102
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    aget-byte v0, v2, v1

    .line 103
    .local v0, "b":B
    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mLineFinished:Z

    goto :goto_0

    .line 107
    :cond_3
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "b":B
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->fillBuf()I

    move-result v2

    if-gtz v2, :cond_2

    .line 113
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "End of stream while looking for token boundary"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseAndConsumeLong(I)J
    .locals 12
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 191
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    aget-byte v8, v8, v3

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1

    move v2, v1

    .line 194
    .local v2, "negative":Z
    :goto_0
    const-wide/16 v6, 0x0

    .line 195
    .local v6, "result":J
    if-eqz v2, :cond_2

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_5

    .line 196
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    aget-byte v3, v3, v1

    add-int/lit8 v0, v3, -0x30

    .line 197
    .local v0, "digit":I
    if-ltz v0, :cond_0

    const/16 v3, 0x9

    if-le v0, v3, :cond_3

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .end local v0    # "digit":I
    .end local v1    # "i":I
    .end local v2    # "negative":Z
    .end local v6    # "result":J
    :cond_1
    move v2, v3

    .line 191
    goto :goto_0

    .restart local v2    # "negative":Z
    .restart local v6    # "result":J
    :cond_2
    move v1, v3

    .line 195
    goto :goto_1

    .line 203
    .restart local v0    # "digit":I
    .restart local v1    # "i":I
    :cond_3
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    int-to-long v10, v0

    sub-long v4, v8, v10

    .line 204
    .local v4, "next":J
    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 205
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 207
    :cond_4
    move-wide v6, v4

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "digit":I
    .end local v4    # "next":J
    :cond_5
    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->consumeBuf(I)V

    .line 211
    if-eqz v2, :cond_6

    .end local v6    # "result":J
    :goto_2
    return-wide v6

    .restart local v6    # "result":J
    :cond_6
    neg-long v6, v6

    goto :goto_2
.end method

.method private parseAndConsumeString(I)Ljava/lang/String;
    .locals 4
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    const-string/jumbo v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 186
    .local v0, "s":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->consumeBuf(I)V

    .line 187
    return-object v0
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
    .line 232
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 233
    return-void
.end method

.method public finishLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mLineFinished:Z

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mLineFinished:Z

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "i":I
    :cond_1
    :goto_1
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 138
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->consumeBuf(I)V

    goto :goto_0

    .line 136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->fillBuf()I

    move-result v1

    if-gtz v1, :cond_1

    .line 144
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "End of stream while looking for line boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasMoreData()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->mTail:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v0

    .line 224
    .local v0, "value":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 225
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "parsed value larger than integer"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public nextLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 164
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "Missing required long"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->parseAndConsumeLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public nextOptionalLong(J)J
    .locals 3
    .param p1, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 177
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    .end local p1    # "def":J
    :goto_0
    return-wide p1

    .restart local p1    # "def":J
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->parseAndConsumeLong(I)J

    move-result-wide p1

    goto :goto_0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 152
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 153
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "Missing required string"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
