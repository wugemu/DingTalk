.class public Lcom/alipay/mobile/nebula/util/H5ZipUtil;
.super Ljava/lang/Object;
.source "H5ZipUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ZipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unZip(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 17
    .param p0, "isUnZip"    # Ljava/io/InputStream;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v8, 0x1

    .line 82
    .local v8, "needSecurityCheck":Z
    const-class v15, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 83
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 84
    .local v7, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v7, :cond_0

    .line 85
    const-string/jumbo v15, "NO"

    const-string/jumbo v16, "h5_amrUnzipSecCheck"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v8, 0x1

    .line 87
    :cond_0
    :goto_0
    const/4 v11, 0x1

    .line 88
    .local v11, "unZipState":Z
    const/4 v13, 0x0

    .line 92
    .local v13, "zipIn":Ljava/util/zip/ZipInputStream;
    const/16 v15, 0x800

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v1

    .line 94
    .local v1, "buf":[B
    :try_start_0
    new-instance v14, Ljava/util/zip/ZipInputStream;

    new-instance v15, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 95
    .end local v13    # "zipIn":Ljava/util/zip/ZipInputStream;
    .local v14, "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    .local v12, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_6

    .line 96
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "entryName":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->pathSecurityCheck(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 98
    const-string/jumbo v15, "H5ZipUtil"

    const-string/jumbo v16, "zipEntry is illegal"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 121
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v13, v14

    .line 122
    .end local v14    # "zipIn":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v13    # "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_2
    :try_start_2
    const-string/jumbo v15, "H5ZipUtil"

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    const/4 v11, 0x0

    .line 125
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 126
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return v11

    .line 85
    .end local v1    # "buf":[B
    .end local v11    # "unZipState":Z
    .end local v13    # "zipIn":Ljava/util/zip/ZipInputStream;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 101
    .restart local v1    # "buf":[B
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v11    # "unZipState":Z
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zipIn":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 125
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v15

    move-object v13, v14

    .end local v14    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_4
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 126
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v15

    .line 106
    .end local v13    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zipIn":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 107
    .local v9, "parent":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    .line 108
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    :cond_4
    const/4 v5, 0x0

    .line 112
    .local v5, "fileOut":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 113
    .end local v5    # "fileOut":Ljava/io/FileOutputStream;
    .local v6, "fileOut":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_6
    invoke-virtual {v14, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v10

    .local v10, "readedBytes":I
    if-lez v10, :cond_5

    .line 114
    const/4 v15, 0x0

    invoke-virtual {v6, v1, v15, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 117
    .end local v10    # "readedBytes":I
    :catchall_1
    move-exception v15

    move-object v5, v6

    .end local v6    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOut":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_7
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v15

    .end local v5    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v10    # "readedBytes":I
    :cond_5
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 125
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fileOut":Ljava/io/FileOutputStream;
    .end local v9    # "parent":Ljava/io/File;
    .end local v10    # "readedBytes":I
    :cond_6
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 126
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v13, v14

    .line 127
    .end local v14    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zipIn":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 125
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_2
    move-exception v15

    goto :goto_4

    .line 121
    :catch_1
    move-exception v2

    goto :goto_2

    .line 117
    .end local v13    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v9    # "parent":Ljava/io/File;
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zipIn":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v15

    goto :goto_6
.end method

.method public static unZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "unZipFileName"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "unZipState":Z
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v2, "H5ZipUtil"

    const-string/jumbo v3, "exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
