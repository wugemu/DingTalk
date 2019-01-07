.class Lcom/alibaba/doraemon/image/utils/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readIntPacked(Ljava/io/InputStream;IZ)I
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "numBytes"    # I
    .param p2, "isLittleEndian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, "ret":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 29
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 30
    .local v0, "data":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 31
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "no more bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    shl-int/lit8 v3, v2, 0x8

    and-int/lit16 v4, v0, 0xff

    or-int v2, v3, v4

    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_1
    and-int/lit16 v3, v0, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_1

    .line 39
    .end local v0    # "data":I
    :cond_2
    return v2
.end method
