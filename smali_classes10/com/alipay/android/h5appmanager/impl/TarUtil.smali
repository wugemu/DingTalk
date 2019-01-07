.class public Lcom/alipay/android/h5appmanager/impl/TarUtil;
.super Ljava/lang/Object;
.source "TarUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TarUtil"

.field public static failMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/h5appmanager/impl/TarUtil;->failMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static untar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "tarPath"    # Ljava/lang/String;
    .param p1, "untarFolder"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 27
    const-string/jumbo v13, "tar path not exists!"

    sput-object v13, Lcom/alipay/android/h5appmanager/impl/TarUtil;->failMessage:Ljava/lang/String;

    .line 28
    const-string/jumbo v13, "TarUtil"

    sget-object v14, Lcom/alipay/android/h5appmanager/impl/TarUtil;->failMessage:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v13, 0x0

    .line 82
    :goto_0
    return v13

    .line 32
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1

    .line 33
    const-string/jumbo v13, "failed to create untar folder."

    sput-object v13, Lcom/alipay/android/h5appmanager/impl/TarUtil;->failMessage:Ljava/lang/String;

    .line 34
    const-string/jumbo v13, "TarUtil"

    sget-object v14, Lcom/alipay/android/h5appmanager/impl/TarUtil;->failMessage:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v13, 0x0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v11, 0x0

    .line 40
    .local v11, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 41
    .local v8, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v12, Lcom/alipay/android/h5appmanager/tar/TarInputStream;

    invoke-direct {v12, v1}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    .end local v11    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .local v12, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->getNextEntry()Lcom/alipay/android/h5appmanager/tar/TarEntry;

    move-result-object v10

    .local v10, "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    if-eqz v10, :cond_7

    .line 46
    invoke-virtual {v10}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "entryName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "untar entry "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, "entryPath":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 51
    invoke-static {v7}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->mkdirs(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 69
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v7    # "entryPath":Ljava/lang/String;
    .end local v10    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    :catch_0
    move-exception v5

    move-object v11, v12

    .line 70
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v11    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/alipay/android/h5appmanager/impl/TarUtil;->failMessage:Ljava/lang/String;

    .line 71
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    if-eqz v11, :cond_2

    .line 76
    :try_start_3
    invoke-virtual {v11}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 72
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    const/4 v13, 0x0

    goto :goto_0

    .line 53
    .end local v11    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v7    # "entryPath":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .restart local v12    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :cond_3
    const/4 v13, 0x1

    :try_start_4
    invoke-static {v7, v13}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_5

    .line 54
    const-string/jumbo v13, "TarUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "failed to create file "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 74
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v7    # "entryPath":Ljava/lang/String;
    .end local v10    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    :catchall_0
    move-exception v13

    move-object v11, v12

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v11    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :goto_4
    if-eqz v11, :cond_4

    .line 76
    :try_start_5
    invoke-virtual {v11}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 79
    :cond_4
    :goto_5
    throw v13

    .line 58
    .end local v11    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v7    # "entryPath":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .restart local v12    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :cond_5
    const/16 v13, 0x800

    :try_start_6
    new-array v3, v13, [B

    .line 60
    .local v3, "buffer":[B
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 61
    .local v9, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :goto_6
    invoke-virtual {v12, v3}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_6

    .line 63
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_6

    .line 65
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 66
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 76
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v7    # "entryPath":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_7
    invoke-virtual {v12}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 82
    :goto_7
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 77
    :catch_1
    move-exception v5

    .line 78
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 77
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v12    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v11    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :catch_2
    move-exception v5

    .line 78
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 77
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 78
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 74
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    goto :goto_4

    .line 69
    :catch_4
    move-exception v5

    goto :goto_2
.end method
