.class public abstract Lhtx;
.super Ljava/lang/Object;
.source "GZipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x0

    .line 54
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v3, "gos":Ljava/util/zip/GZIPOutputStream;
    new-array v1, v6, [B

    .line 58
    .local v1, "data":[B
    :goto_0
    invoke-virtual {p0, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 59
    invoke-virtual {v3, v1, v5, v0}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 65
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 72
    return-void

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a([B)[B
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 27
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lhtx;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 35
    .local v2, "output":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 41
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method
