.class public final Ljrb;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v3, 0x0

    .line 33
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .end local v3    # "output":Ljava/io/ByteArrayOutputStream;
    .local v4, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 36
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 37
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "output":Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 43
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    :cond_0
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 55
    :goto_3
    throw v5

    .line 39
    .end local v3    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v4    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 43
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 51
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 55
    :goto_5
    return-object v5

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 53
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 54
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 45
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "len":I
    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v1

    .line 46
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 54
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 41
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method
