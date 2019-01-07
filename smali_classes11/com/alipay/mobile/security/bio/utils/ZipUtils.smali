.class public Lcom/alipay/mobile/security/bio/utils/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delAllFile(Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "tempList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 156
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "temp":Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 164
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/ZipUtils;->delAllFile(Ljava/lang/String;)V

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/ZipUtils;->delFolder(Ljava/lang/String;)V

    .line 155
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "temp":Ljava/io/File;
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "temp":Ljava/io/File;
    goto :goto_1
.end method

.method public static delFolder(Ljava/lang/String;)V
    .locals 3
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/ZipUtils;->delAllFile(Ljava/lang/String;)V

    .line 131
    move-object v0, p0

    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "myFilePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "myFilePath":Ljava/io/File;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "outputDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/security/bio/utils/ZipUtils;->delAllFile(Ljava/lang/String;)V

    .line 19
    const/16 v16, 0x0

    .line 23
    .local v16, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .local v17, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 26
    .local v6, "e":Ljava/util/Enumeration;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v4, "dest":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/ZipUtils;->delAllFile(Ljava/lang/String;)V

    .line 31
    :cond_0
    const-string/jumbo v18, "unzip mkdirs"

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 35
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 36
    .local v15, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v7

    .line 37
    .local v7, "entryName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 38
    .local v10, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 40
    .local v13, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 41
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 42
    .local v12, "name":Ljava/lang/String;
    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 43
    new-instance v9, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v12    # "name":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_2

    .line 79
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 83
    :cond_2
    :goto_2
    if-eqz v13, :cond_1

    .line 85
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v18

    goto :goto_0

    .line 46
    .end local v9    # "f":Ljava/io/File;
    :cond_3
    :try_start_5
    const-string/jumbo v18, "\\"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 47
    .local v11, "index":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 48
    new-instance v5, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    .line 49
    move/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v5, "df":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 52
    .end local v5    # "df":Ljava/io/File;
    :cond_4
    const-string/jumbo v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 53
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_5

    .line 54
    new-instance v5, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    .line 55
    move/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v5    # "df":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 58
    .end local v5    # "df":Ljava/io/File;
    :cond_5
    new-instance v9, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v9    # "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 60
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 62
    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 63
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 64
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .local v14, "out":Ljava/io/FileOutputStream;
    const/16 v18, 0x400

    :try_start_6
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 67
    .local v2, "by":[B
    :goto_3
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "c":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_a

    .line 68
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 72
    .end local v2    # "by":[B
    .end local v3    # "c":I
    :catch_1
    move-exception v8

    move-object v13, v14

    .line 73
    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "index":I
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .local v8, "ex":Ljava/io/IOException;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 74
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "\u89e3\u538b\u5931\u8d25\uff1a"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v10, :cond_7

    .line 79
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 83
    :cond_7
    :goto_6
    if-eqz v13, :cond_8

    .line 85
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 87
    :cond_8
    :goto_7
    :try_start_a
    throw v18
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 91
    .end local v4    # "dest":Ljava/io/File;
    .end local v6    # "e":Ljava/util/Enumeration;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v8

    move-object/from16 v16, v17

    .line 92
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "ex":Ljava/io/IOException;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_8
    :try_start_b
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 93
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "\u89e3\u538b\u5931\u8d25\uff1a"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 95
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v18

    :goto_9
    if-eqz v16, :cond_9

    .line 97
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 99
    :cond_9
    :goto_a
    throw v18

    .line 70
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "by":[B
    .restart local v3    # "c":I
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v6    # "e":Ljava/util/Enumeration;
    .restart local v7    # "entryName":Ljava/lang/String;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "index":I
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_a
    :try_start_d
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 97
    .end local v2    # "by":[B
    .end local v3    # "c":I
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "index":I
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_b
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 99
    :goto_b
    return-void

    .restart local v7    # "entryName":Ljava/lang/String;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v18

    goto/16 :goto_2

    .end local v9    # "f":Ljava/io/File;
    :catch_4
    move-exception v19

    goto :goto_6

    :catch_5
    move-exception v19

    goto :goto_7

    .end local v7    # "entryName":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_6
    move-exception v18

    goto :goto_b

    .end local v4    # "dest":Ljava/io/File;
    .end local v6    # "e":Ljava/util/Enumeration;
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v19

    goto :goto_a

    .line 95
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_9

    .line 91
    :catch_8
    move-exception v8

    goto :goto_8

    .line 77
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v6    # "e":Ljava/util/Enumeration;
    .restart local v7    # "entryName":Ljava/lang/String;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "index":I
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v18

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 72
    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "index":I
    :catch_9
    move-exception v8

    goto/16 :goto_4
.end method


# virtual methods
.method public delFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePathAndName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    .line 113
    move-object v0, p1

    .local v0, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "myDelFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "myDelFile":Ljava/io/File;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
