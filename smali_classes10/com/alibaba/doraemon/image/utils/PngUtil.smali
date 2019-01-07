.class public Lcom/alibaba/doraemon/image/utils/PngUtil;
.super Ljava/lang/Object;
.source "PngUtil.java"


# static fields
.field private static final MASK:I = 0x80

.field private static final PNG_9PATCH_NPTC:I = 0x6e705463

.field private static final PNG_HIGH_HEADER:I = -0x76afb1b9

.field private static final PNG_LOW_HEADER:I = 0xd0a1a0a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doSafetyCheck(Ljava/io/InputStream;)Z
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/doraemon/image/utils/PngUtil;->isPng(Ljava/io/InputStream;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    const/4 v7, 0x1

    .line 137
    :goto_0
    return v7

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 116
    .local v1, "count":I
    :cond_1
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/alibaba/doraemon/image/utils/StreamReader;->readIntPacked(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 117
    .local v2, "length":I
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/alibaba/doraemon/image/utils/StreamReader;->readIntPacked(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 118
    .local v0, "chunkType":I
    const v7, 0x6e705463

    if-ne v0, v7, :cond_3

    .line 119
    const-wide/16 v8, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 120
    const/4 v7, 0x1

    goto :goto_0

    .line 122
    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/alibaba/doraemon/image/utils/StreamReader;->readIntPacked(Ljava/io/InputStream;IZ)I

    move-result v4

    .line 123
    .local v4, "numXDivs":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/alibaba/doraemon/image/utils/StreamReader;->readIntPacked(Ljava/io/InputStream;IZ)I

    move-result v5

    .line 124
    .local v5, "numYDivs":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/alibaba/doraemon/image/utils/StreamReader;->readIntPacked(Ljava/io/InputStream;IZ)I

    move-result v3

    .line 125
    .local v3, "numColors":I
    and-int/lit16 v7, v4, 0x80

    and-int/lit16 v8, v5, 0x80

    or-int/2addr v7, v8

    and-int/lit16 v8, v3, 0x80

    or-int v6, v7, v8

    .line 126
    .local v6, "ret":I
    if-lez v6, :cond_4

    .line 127
    const/4 v7, 0x0

    goto :goto_0

    .line 130
    .end local v3    # "numColors":I
    .end local v4    # "numXDivs":I
    .end local v5    # "numYDivs":I
    .end local v6    # "ret":I
    :cond_3
    add-int/lit8 v2, v2, 0x4

    .line 133
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 134
    int-to-long v8, v2

    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    int-to-long v10, v2

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    const/4 v7, 0x5

    if-lt v1, v7, :cond_1

    .line 135
    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "chunkType":I
    .end local v1    # "count":I
    .end local v2    # "length":I
    :catch_0
    move-exception v7

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static is9patchSafety(Ljava/io/InputStream;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 42
    :cond_2
    invoke-static {p0}, Lcom/alibaba/doraemon/image/utils/PngUtil;->doSafetyCheck(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 51
    :catch_2
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 46
    .local v1, "ex":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 51
    :catch_4
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 53
    :cond_3
    :goto_1
    throw v2

    .line 51
    :catch_5
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static is9patchSafety(Ljava/lang/String;)Z
    .locals 7
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 68
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-le v5, v6, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v4

    .line 72
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lcom/alibaba/doraemon/image/utils/PngUtil;->doSafetyCheck(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 90
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    if-eqz v2, :cond_0

    .line 90
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 90
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :cond_2
    :goto_3
    throw v4

    .line 91
    :catch_3
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 85
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static isPng(Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 142
    invoke-static {p0, v3, v2}, Lcom/alibaba/doraemon/image/utils/StreamReader;->readIntPacked(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 143
    .local v0, "highHeader":I
    invoke-static {p0, v3, v2}, Lcom/alibaba/doraemon/image/utils/StreamReader;->readIntPacked(Ljava/io/InputStream;IZ)I

    move-result v1

    .line 144
    .local v1, "lowHeader":I
    const v3, -0x76afb1b9

    if-ne v3, v0, :cond_0

    const v3, 0xd0a1a0a

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
