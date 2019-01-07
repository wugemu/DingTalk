.class public final Leib;
.super Ljava/lang/Object;
.source "SocketUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "intValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 119
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return v1
.end method

.method public static a([BII)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "byteOffset"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "intValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 127
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x0

    rsub-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return v1
.end method

.method public static a(Ljava/io/InputStream;)Lehz;
    .locals 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 27
    if-nez p0, :cond_0

    .line 58
    :goto_0
    return-object v6

    .line 32
    :cond_0
    new-array v2, v8, [B

    .line 33
    .local v2, "header":[B
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 37
    .local v3, "len":I
    :cond_1
    :goto_1
    if-ge v3, v8, :cond_3

    .line 38
    rsub-int/lit8 v7, v3, 0x4

    invoke-virtual {v0, v2, v3, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 39
    .local v5, "temp":I
    if-lez v5, :cond_2

    .line 40
    add-int/2addr v3, v5

    goto :goto_1

    .line 41
    :cond_2
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 42
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 47
    .end local v5    # "temp":I
    :cond_3
    invoke-static {v2}, Leib;->a([B)I

    move-result v4

    .line 48
    .local v4, "length":I
    new-array v1, v4, [B

    .line 49
    .local v1, "content":[B
    invoke-static {v2, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    :cond_4
    :goto_2
    if-ge v3, v4, :cond_5

    .line 51
    sub-int v6, v4, v3

    invoke-virtual {v0, v1, v3, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 53
    .restart local v5    # "temp":I
    if-lez v5, :cond_4

    .line 54
    add-int/2addr v3, v5

    goto :goto_2

    .line 58
    .end local v5    # "temp":I
    :cond_5
    new-instance v6, Lehz;

    invoke-direct {v6, v1}, Lehz;-><init>([B)V

    goto :goto_0
.end method
