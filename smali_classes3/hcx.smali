.class public final Lhcx;
.super Ljava/lang/Object;
.source "PngUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 56
    :cond_2
    invoke-static {p0}, Lhcx;->b(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 60
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 58
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 63
    :catch_2
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 65
    :cond_3
    :goto_1
    throw v1

    .line 63
    :catch_3
    move-exception v0

    .line 64
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static b(Ljava/io/InputStream;)Z
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 156
    .line 1189
    const/4 v7, 0x4

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, v7, v8}, Lhcz;->a(Ljava/io/InputStream;IZ)I

    move-result v7

    .line 1190
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lhcz;->a(Ljava/io/InputStream;IZ)I

    move-result v8

    .line 1191
    const v9, -0x76afb1b9

    if-ne v9, v7, :cond_0

    const v7, 0xd0a1a0a

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    .line 156
    :goto_0
    if-nez v7, :cond_1

    .line 157
    const/4 v7, 0x1

    .line 184
    :goto_1
    return v7

    .line 1191
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    .line 163
    .local v1, "count":I
    :cond_2
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lhcz;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 164
    .local v2, "length":I
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lhcz;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 165
    .local v0, "chunkType":I
    const v7, 0x6e705463

    if-ne v0, v7, :cond_4

    .line 166
    const-wide/16 v8, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 167
    const/4 v7, 0x1

    goto :goto_1

    .line 169
    :cond_3
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lhcz;->a(Ljava/io/InputStream;IZ)I

    move-result v4

    .line 170
    .local v4, "numXDivs":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lhcz;->a(Ljava/io/InputStream;IZ)I

    move-result v5

    .line 171
    .local v5, "numYDivs":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lhcz;->a(Ljava/io/InputStream;IZ)I

    move-result v3

    .line 172
    .local v3, "numColors":I
    and-int/lit16 v7, v4, 0x80

    and-int/lit16 v8, v5, 0x80

    or-int/2addr v7, v8

    and-int/lit16 v8, v3, 0x80

    or-int v6, v7, v8

    .line 173
    .local v6, "ret":I
    if-lez v6, :cond_5

    .line 174
    const/4 v7, 0x0

    goto :goto_1

    .line 177
    .end local v3    # "numColors":I
    .end local v4    # "numXDivs":I
    .end local v5    # "numYDivs":I
    .end local v6    # "ret":I
    :cond_4
    add-int/lit8 v2, v2, 0x4

    .line 180
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 181
    int-to-long v8, v2

    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    int-to-long v10, v2

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    const/4 v7, 0x5

    if-lt v1, v7, :cond_2

    .line 182
    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "chunkType":I
    .end local v1    # "count":I
    .end local v2    # "length":I
    :catch_0
    move-exception v7

    const/4 v7, 0x1

    goto :goto_1
.end method
