.class public final Lhfy;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 318
    if-nez p0, :cond_0

    .line 347
    :goto_0
    return v5

    .line 321
    :cond_0
    const/4 v2, 0x0

    .line 322
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 324
    .local v0, "bytes":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 328
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 329
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 331
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    const/16 v6, 0x2000

    :try_start_1
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 334
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 335
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 338
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 339
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 344
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 345
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 343
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "read":I
    :cond_3
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 344
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 345
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v5, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "read":I
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 344
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 345
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 343
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 344
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 345
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v5

    .line 343
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 340
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 338
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 198
    :goto_0
    return v1

    .line 197
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lhfy;->b(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    :goto_0
    return-object p0

    .line 257
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 259
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 202
    invoke-static {p0}, Lhfy;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    const/4 v2, 0x1

    .line 220
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 210
    :cond_2
    const/4 v2, 0x1

    .line 211
    .local v2, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 212
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 213
    .local v0, "file1":Ljava/io/File;
    invoke-static {v0}, Lhfy;->b(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "file1":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v2, v3

    .line 216
    if-nez v2, :cond_0

    .line 217
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delete file("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") and its sub-directories failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
