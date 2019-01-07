.class Lcom/alibaba/doraemon/image/utils/StreamProcessor;
.super Ljava/lang/Object;
.source "StreamProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readPackedInt(Ljava/io/InputStream;IZ)I
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
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 32
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 33
    .local v0, "b":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 34
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "no more bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_0
    if-eqz p2, :cond_1

    .line 37
    and-int/lit16 v3, v0, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 31
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    shl-int/lit8 v3, v2, 0x8

    and-int/lit16 v4, v0, 0xff

    or-int v2, v3, v4

    goto :goto_1

    .line 42
    .end local v0    # "b":I
    :cond_2
    return v2
.end method
