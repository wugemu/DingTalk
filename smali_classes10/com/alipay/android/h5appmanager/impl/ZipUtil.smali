.class public Lcom/alipay/android/h5appmanager/impl/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ZipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    .locals 13
    .param p0, "zipPath"    # Ljava/lang/String;
    .param p1, "unzipFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 98
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 99
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hpm_unzip path("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") not exists!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 102
    :cond_0
    invoke-static {p1, v12}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 103
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "failed to create hpm_unzip folder("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 105
    :cond_1
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 108
    .local v2, "crc32":Ljava/util/zip/CRC32;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v8, Ljava/util/zip/ZipInputStream;

    invoke-direct {v8, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 111
    .local v8, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .local v7, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_5

    .line 112
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "entryName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unzip entry "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "entryPath":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 117
    invoke-static {v4}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->mkdirs(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "entryPath":Ljava/lang/String;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ze":Ljava/util/zip/ZipEntry;
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v9

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hpm_unzip content of zip file("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") failed!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 119
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "entryPath":Ljava/lang/String;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    const/4 v9, 0x1

    :try_start_1
    invoke-static {v4, v9}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_3

    .line 120
    const-string/jumbo v9, "ZipUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "failed to create file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 124
    .local v6, "fout":Ljava/io/FileOutputStream;
    const/16 v9, 0x2000

    new-array v0, v9, [B

    .line 126
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v8, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    .line 127
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 128
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v1}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 131
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "entryPath":Ljava/lang/String;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    :cond_5
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    new-instance v9, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11, v12}, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;-><init>(JZ)V

    return-object v9
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "zipPath"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v10, 0x0

    .line 28
    .local v10, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v7, "file":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 31
    .local v9, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v11, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 34
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v0, v12, 0x1

    .line 35
    .local v0, "baseLength":I
    invoke-static {v11, v7, v0}, Lcom/alipay/android/h5appmanager/impl/ZipUtil;->zipFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .end local v0    # "baseLength":I
    :cond_0
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 61
    :goto_0
    const/4 v12, 0x1

    move-object v10, v11

    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_1
    return v12

    .line 37
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_1
    const/16 v12, 0x2000

    :try_start_3
    new-array v3, v12, [B

    .line 38
    .local v3, "data":[B
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 39
    .local v8, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v12, 0x2000

    invoke-direct {v1, v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 40
    .local v1, "bis":Ljava/io/BufferedInputStream;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "entryName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "zip entry "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 45
    :goto_2
    const/4 v12, 0x0

    const/16 v13, 0x2000

    invoke-virtual {v1, v3, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .local v2, "count":I
    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    .line 46
    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 49
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object v10, v11

    .line 50
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    if-eqz v10, :cond_2

    .line 55
    :try_start_5
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 51
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    const/4 v12, 0x0

    goto :goto_1

    .line 56
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v4

    .line 57
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v4

    .line 57
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 53
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v10, :cond_3

    .line 55
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 58
    :cond_3
    :goto_6
    throw v12

    .line 56
    :catch_3
    move-exception v4

    .line 57
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 53
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_5

    .line 49
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    goto :goto_3
.end method

.method private static zipFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V
    .locals 13
    .param p0, "zos"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "baseLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 95
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 71
    .local v6, "fileList":[Ljava/io/File;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-eqz v9, :cond_0

    .line 75
    array-length v10, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v5, v6, v9

    .line 76
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 77
    invoke-static {p0, v5, p2}, Lcom/alipay/android/h5appmanager/impl/ZipUtil;->zipFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V

    .line 75
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const/16 v11, 0x2000

    new-array v2, v11, [B

    .line 80
    .local v2, "data":[B
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "unmodifiedFilePath":Ljava/lang/String;
    invoke-virtual {v8, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "realPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "zip entry "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "fi":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v11, 0x2000

    invoke-direct {v0, v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 86
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 89
    :goto_2
    const/4 v11, 0x0

    const/16 v12, 0x2000

    invoke-virtual {v0, v2, v11, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    .line 90
    const/4 v11, 0x0

    invoke-virtual {p0, v2, v11, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_1
.end method
