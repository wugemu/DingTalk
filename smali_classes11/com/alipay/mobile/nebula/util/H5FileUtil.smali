.class public Lcom/alipay/mobile/nebula/util/H5FileUtil;
.super Ljava/lang/Object;
.source "H5FileUtil.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x800

.field public static final TAG:Ljava/lang/String; = "H5FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPathValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/.."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static childCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 208
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 211
    array-length v2, v0

    goto :goto_0
.end method

.method public static childOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "childPath"    # Ljava/lang/String;
    .param p1, "parentPath"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cleanPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    :goto_0
    return-object p0

    .line 219
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 221
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5FileUtil"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 264
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    .line 318
    :cond_1
    :goto_0
    return v5

    .line 269
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 274
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v5, v6

    .line 275
    goto :goto_0

    .line 279
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 280
    if-nez p2, :cond_5

    move v5, v6

    .line 281
    goto :goto_0

    .line 283
    :cond_5
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 286
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    move v5, v6

    .line 287
    goto :goto_0

    .line 295
    :cond_7
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x800

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v0

    .line 306
    .local v0, "buffer":[B
    :goto_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_8

    .line 307
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 310
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "H5FileUtil"

    const-string/jumbo v7, "exception detail"

    invoke-static {v5, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 315
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move v5, v6

    .line 312
    goto :goto_0

    .line 297
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 298
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5FileUtil"

    const-string/jumbo v7, "exception detail"

    invoke-static {v5, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 299
    goto :goto_0

    .line 309
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 315
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 314
    .end local v3    # "len":I
    :catchall_0
    move-exception v5

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 315
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 640
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .local v0, "e":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 645
    .local v1, "result":Z
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 652
    .end local v0    # "e":Ljava/io/FileInputStream;
    :goto_0
    return v1

    .line 645
    .end local v1    # "result":Z
    .restart local v0    # "e":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 647
    .end local v0    # "e":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 648
    .local v2, "var8":Ljava/io/IOException;
    const-string/jumbo v3, "H5FileUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z
    .locals 10
    .param p0, "inputStream"    # Ljava/io/FileInputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 656
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 665
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 668
    .local v7, "outputStream1":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 669
    .end local v7    # "outputStream1":Ljava/io/FileOutputStream;
    .local v8, "outputStream1":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 670
    .local v6, "e":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 673
    .local v1, "inputChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 676
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 686
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 680
    :goto_1
    const/4 v2, 0x1

    move-object v7, v8

    .line 694
    .end local v1    # "inputChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "e":Ljava/nio/channels/FileChannel;
    .end local v8    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream1":Ljava/io/FileOutputStream;
    :goto_2
    return v2

    .line 659
    .end local v7    # "outputStream1":Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 660
    .local v0, "outputStream":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 675
    .end local v0    # "outputStream":Ljava/io/File;
    .restart local v1    # "inputChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "e":Ljava/nio/channels/FileChannel;
    .restart local v8    # "outputStream1":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 676
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 681
    .end local v1    # "inputChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "e":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 682
    .end local v8    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream1":Ljava/io/FileOutputStream;
    .local v9, "var21":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string/jumbo v2, "FileUtils"

    const-string/jumbo v3, "copy file error!"

    invoke-static {v2, v3, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 684
    if-eqz v7, :cond_2

    .line 686
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 694
    :cond_2
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 684
    .end local v9    # "var21":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :goto_5
    if-eqz v7, :cond_3

    .line 686
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 689
    :cond_3
    :goto_6
    throw v2

    .end local v7    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local v1    # "inputChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "e":Ljava/nio/channels/FileChannel;
    .restart local v8    # "outputStream1":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    goto :goto_1

    .end local v1    # "inputChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "e":Ljava/nio/channels/FileChannel;
    .end local v8    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local v9    # "var21":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_4

    .end local v9    # "var21":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_6

    .line 684
    .end local v7    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local v8    # "outputStream1":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream1":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 681
    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 699
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 700
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 703
    :cond_0
    const/4 v2, 0x0

    .line 704
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 706
    .local v0, "buffer":[B
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 708
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 709
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 712
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 713
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 717
    .end local v0    # "buffer":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 718
    .local v4, "var9":Ljava/io/IOException;
    const-string/jumbo v6, "H5FileUtil"

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    .end local v4    # "var9":Ljava/io/IOException;
    :goto_2
    return v5

    .line 712
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 713
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 716
    const/4 v5, 0x1

    goto :goto_2

    .line 712
    .end local v1    # "bytesRead":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    :goto_0
    return v3

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    const/4 v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "parentPath":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 49
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5FileUtil"

    const-string/jumbo v5, "exception detail"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "/"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 161
    :goto_0
    return v2

    .line 145
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    const-string/jumbo v3, "H5FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteFile:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 150
    :cond_2
    const/4 v2, 0x1

    .line 151
    .local v2, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 152
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_3

    move v2, v3

    .line 153
    goto :goto_0

    .line 155
    :cond_3
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 156
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v2, v3

    .line 160
    const-string/jumbo v3, "H5FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteFile:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x0

    .line 126
    :goto_0
    return v1

    .line 125
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static exists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 173
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

.method public static exists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 169
    :goto_0
    return v1

    .line 168
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static fileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 328
    :goto_0
    return-object v1

    .line 326
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 327
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCreateTime(Ljava/lang/String;)J
    .locals 6
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 627
    const-wide/16 v4, 0x0

    .line 633
    :goto_0
    return-wide v4

    .line 630
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 632
    .local v2, "lastModified":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 633
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 332
    if-nez p0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const-string/jumbo v1, ""

    .line 376
    :goto_0
    return-object v1

    .line 372
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 373
    .local v0, "index":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 374
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 376
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 356
    :goto_0
    return-object v1

    .line 353
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 356
    goto :goto_0
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 499
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v4, v10

    .line 542
    :cond_0
    :goto_0
    return-object v4

    .line 502
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move-object v4, v10

    .line 504
    goto :goto_0

    .line 506
    :cond_3
    const/4 v4, 0x0

    .line 507
    .local v4, "fileHash":Ljava/lang/String;
    const/4 v5, 0x0

    .line 509
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 514
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-nez v5, :cond_4

    move-object v4, v10

    .line 515
    goto :goto_0

    .line 510
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e1":Ljava/io/FileNotFoundException;
    const-string/jumbo v11, "H5FileUtil"

    const-string/jumbo v12, "exception detail."

    invoke-static {v11, v12, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 519
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :cond_4
    const/16 v10, 0x800

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v0

    .line 521
    .local v0, "buffer":[B
    :try_start_1
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 523
    .local v9, "messageDigest":Ljava/security/MessageDigest;
    :goto_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "length":I
    if-lez v8, :cond_5

    .line 524
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 528
    .end local v8    # "length":I
    .end local v9    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "H5FileUtil"

    const-string/jumbo v11, "exception detail"

    invoke-static {v10, v11, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 536
    :goto_3
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 537
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 539
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 540
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 527
    .restart local v8    # "length":I
    .restart local v9    # "messageDigest":Ljava/security/MessageDigest;
    :cond_5
    :try_start_4
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->bytes2Hex([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 536
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 537
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    .line 532
    .end local v8    # "length":I
    .end local v9    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 533
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v10, "H5FileUtil"

    const-string/jumbo v11, "IOException"

    invoke-static {v10, v11, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 536
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 537
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v10
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const/4 p0, 0x0

    .line 441
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 437
    .end local v0    # "index":I
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 438
    .restart local v0    # "index":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 439
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 458
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v4, v9

    .line 495
    :cond_0
    :goto_0
    return-object v4

    .line 461
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move-object v4, v9

    .line 464
    goto :goto_0

    .line 466
    :cond_3
    const/4 v4, 0x0

    .line 467
    .local v4, "fileHash":Ljava/lang/String;
    const/4 v5, 0x0

    .line 469
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 473
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-nez v5, :cond_4

    move-object v4, v9

    .line 474
    goto :goto_0

    .line 470
    :catch_0
    move-exception v2

    .line 471
    .local v2, "e1":Ljava/io/FileNotFoundException;
    const-string/jumbo v10, "H5FileUtil"

    const-string/jumbo v11, "exception detail."

    invoke-static {v10, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 478
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :cond_4
    const/16 v9, 0x800

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v0

    .line 480
    .local v0, "buffer":[B
    :try_start_1
    const-string/jumbo v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 482
    .local v8, "messageDigest":Ljava/security/MessageDigest;
    :goto_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-lez v7, :cond_5

    .line 483
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 486
    .end local v7    # "length":I
    .end local v8    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v9, "H5FileUtil"

    const-string/jumbo v10, "exception detail"

    invoke-static {v9, v10, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 490
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 492
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 493
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 485
    .restart local v7    # "length":I
    .restart local v8    # "messageDigest":Ljava/security/MessageDigest;
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->bytes2Hex([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 489
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 490
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 489
    .end local v7    # "length":I
    .end local v8    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v9

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 490
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9
.end method

.method public static getFileStem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const/4 v1, 0x0

    .line 453
    :goto_0
    return-object v1

    .line 449
    :cond_0
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 450
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 451
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 453
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getLastModified(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 615
    const/4 v5, 0x0

    .line 622
    :goto_0
    return-object v5

    .line 618
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 620
    .local v2, "lastModified":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 621
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 622
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 380
    if-nez p0, :cond_0

    .line 381
    const-string/jumbo v1, "*/*"

    .line 384
    :goto_0
    return-object v1

    .line 383
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, "type":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "extension":Ljava/lang/String;
    const-string/jumbo v2, "js"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const-string/jumbo v2, "application/javascript"

    .line 398
    :goto_0
    return-object v2

    .line 395
    :cond_0
    if-eqz v0, :cond_1

    .line 396
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 398
    goto :goto_0
.end method

.method public static getParent(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    .line 180
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getParent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 724
    const/4 v2, 0x0

    .line 726
    .local v2, "sdDir":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 728
    .local v1, "sdCardExist":Z
    if-eqz v1, :cond_0

    .line 729
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 736
    .end local v1    # "sdCardExist":Z
    :cond_0
    :goto_0
    return-object v2

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5FileUtil"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 546
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-object v9

    .line 550
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v8, v10

    .line 552
    .local v8, "length":I
    const/16 v10, 0x5000

    if-gt v8, v10, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 558
    .local v5, "in":Ljava/io/BufferedInputStream;
    const/16 v10, 0x400

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 560
    .local v2, "buffer":[B
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1, v8}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 563
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .local v6, "in":Ljava/io/BufferedInputStream;
    :goto_1
    const/4 v10, -0x1

    :try_start_2
    invoke-virtual {v6, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    if-eq v10, v7, :cond_2

    .line 564
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 567
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    move-object v0, v1

    .line 568
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v10, "H5FileUtil"

    const-string/jumbo v11, "exception detail"

    invoke-static {v10, v11, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 571
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 572
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 566
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "len":I
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v9

    .line 570
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 571
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 572
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 570
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .end local v7    # "len":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 571
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 572
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 570
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 567
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 419
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 410
    .local v0, "exists":Z
    if-nez v0, :cond_0

    .line 411
    const/4 v2, 0x0

    .line 415
    :goto_0
    return v2

    .line 414
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFile(Ljava/io/File;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isFolder(Ljava/lang/String;)Z
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 425
    .local v0, "exists":Z
    if-nez v0, :cond_0

    .line 426
    const/4 v2, 0x0

    .line 430
    :goto_0
    return v2

    .line 429
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    goto :goto_0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 73
    :goto_0
    return v2

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 69
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v2

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5FileUtil"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    if-eqz p2, :cond_0

    .line 93
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 98
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 101
    .end local v0    # "dstFile":Ljava/io/File;
    .end local v2    # "srcFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5FileUtil"

    const-string/jumbo v5, "exception detail"

    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0x800

    .line 592
    if-nez p0, :cond_0

    .line 593
    const/4 v5, 0x0

    .line 610
    :goto_0
    return-object v5

    .line 596
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-array v0, v5, [C

    .line 599
    .local v0, "buffer":[C
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 601
    .local v3, "reader":Ljava/io/InputStreamReader;
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    .line 602
    .local v4, "size":I
    if-ltz v4, :cond_1

    .line 605
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 607
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5FileUtil"

    const-string/jumbo v6, "Exception"

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 578
    const/4 v3, 0x0

    .line 579
    .local v3, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 581
    .local v1, "ips":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .end local v1    # "ips":Ljava/io/InputStream;
    .local v2, "ips":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 586
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 588
    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v4, "H5FileUtil"

    const-string/jumbo v5, "Exception"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_2

    .line 583
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static size(Ljava/io/File;)J
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 236
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    move-wide v4, v6

    .line 256
    :cond_0
    :goto_0
    return-wide v4

    .line 240
    :cond_1
    const-wide/16 v4, 0x0

    .line 241
    .local v4, "length":J
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 243
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 247
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-nez v8, :cond_4

    :cond_3
    move-wide v4, v6

    .line 248
    goto :goto_0

    .line 251
    :cond_4
    array-length v3, v1

    .line 252
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 253
    aget-object v0, v1, v2

    .line 254
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->size(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static size(Ljava/lang/String;)J
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    const-wide/16 v2, 0x0

    .line 232
    :goto_0
    return-wide v2

    .line 231
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->size(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private static useSafeDelete()Z
    .locals 3

    .prologue
    .line 130
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 131
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v2, "h5_useSafeDelete"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 137
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
