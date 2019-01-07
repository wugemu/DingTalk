.class public final Lsb;
.super Ljava/lang/Object;
.source "IOCopyUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 6
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 191
    .line 1212
    const/16 v3, 0x1000

    new-array v3, v3, [C

    .line 1213
    const-wide/16 v0, 0x0

    .line 1215
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 1216
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 1217
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 192
    .local v0, "count":J
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 195
    :goto_1
    return v2

    :cond_1
    long-to-int v2, v0

    goto :goto_1
.end method
