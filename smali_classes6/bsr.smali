.class public final Lbsr;
.super Ljava/lang/Object;
.source "SocketUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "intValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 130
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return v1
.end method

.method public static a([BII)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "byteOffset"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "intValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 138
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x0

    rsub-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return v1
.end method

.method public static a(Ljava/io/InputStream;)Lbsq;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 34
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v0, "bis":Ljava/io/BufferedInputStream;
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-object v6

    .line 42
    :cond_0
    const/4 v7, 0x4

    :try_start_0
    new-array v2, v7, [B

    .line 45
    .local v2, "header":[B
    const/4 v3, 0x0

    .line 46
    .local v3, "len":I
    :cond_1
    :goto_1
    if-ge v3, v8, :cond_3

    .line 47
    rsub-int/lit8 v7, v3, 0x4

    invoke-virtual {v0, v2, v3, v7}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 48
    .local v5, "temp":I
    if-lez v5, :cond_2

    .line 49
    add-int/2addr v3, v5

    goto :goto_1

    .line 50
    :cond_2
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 54
    .end local v5    # "temp":I
    :cond_3
    :try_start_1
    invoke-static {v2}, Lbsr;->a([B)I

    move-result v4

    .line 55
    .local v4, "length":I
    new-array v1, v4, [B

    .line 56
    .local v1, "content":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v2, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :cond_4
    :goto_2
    if-ge v3, v4, :cond_5

    .line 58
    sub-int v6, v4, v3

    invoke-virtual {v0, v1, v3, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 60
    .restart local v5    # "temp":I
    if-lez v5, :cond_4

    .line 61
    add-int/2addr v3, v5

    goto :goto_2

    .line 64
    .end local v5    # "temp":I
    :cond_5
    new-instance v6, Lbsq;

    invoke-direct {v6, v1}, Lbsq;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .end local v1    # "content":[B
    .end local v2    # "header":[B
    .end local v3    # "len":I
    .end local v4    # "length":I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw v6
.end method

.method public static a(Lbsq;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "protocol"    # Lbsq;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1100
    .local v1, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    iget-object v0, p0, Lbsq;->b:[B

    .line 82
    .local v0, "buffData":[B
    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 83
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_0
.end method
