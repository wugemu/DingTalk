.class public final Lhab;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    if-gez p3, :cond_0

    .line 97
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 100
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 101
    add-int/lit8 v2, v1, 0x0

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 102
    .local v0, "result":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 105
    add-int/2addr v1, v0

    .line 106
    goto :goto_0

    .line 107
    .end local v0    # "result":I
    :cond_1
    return v1
.end method
