.class public final Lky;
.super Ljava/lang/Object;
.source "SerializeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/io/File;)Ljava/lang/Object;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 76
    const-class v7, Lky;

    monitor-enter v7

    const/4 v1, 0x0

    .line 78
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 80
    .local v4, "ret":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 81
    const/4 v8, 0x3

    invoke-static {v8}, Lanet/channel/util/ALog;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 82
    const-string/jumbo v8, "awcn.SerializeHelper"

    const-string/jumbo v9, "file not exist."

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "file"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10, v11}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    move-object v4, v6

    .line 104
    .end local v4    # "ret":Ljava/lang/Object;
    :cond_1
    :goto_0
    monitor-exit v7

    return-object v4

    .line 87
    .restart local v4    # "ret":Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 90
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, v2

    .line 101
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 99
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v1, v2

    .line 101
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v5

    .line 92
    .end local v4    # "ret":Ljava/lang/Object;
    .local v5, "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v6, 0x3

    :try_start_5
    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    const-string/jumbo v6, "awcn.SerializeHelper"

    const-string/jumbo v8, "restore file fail."

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v5, v10}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    :cond_3
    if-eqz v1, :cond_1

    .line 98
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 99
    :catch_2
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7

    throw v6

    .line 96
    :catchall_1
    move-exception v6

    :goto_3
    if-eqz v1, :cond_4

    .line 98
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 101
    :cond_4
    :goto_4
    :try_start_9
    throw v6

    .line 99
    :catch_3
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 91
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 76
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ret":Ljava/lang/Object;
    :catchall_3
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static declared-synchronized a(Ljava/io/Serializable;Ljava/io/File;)V
    .locals 20
    .param p0, "s"    # Ljava/io/Serializable;
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 31
    const-class v13, Lky;

    monitor-enter v13

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 32
    :cond_0
    :try_start_0
    const-string/jumbo v12, "awcn.SerializeHelper"

    const-string/jumbo v14, "persist fail. Invalid parameter"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    :goto_0
    monitor-exit v13

    return-void

    .line 36
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 37
    .local v10, "start":J
    const/4 v3, 0x0

    .line 38
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 40
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 43
    .local v9, "writeSuccess":Z
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "-"

    const-string/jumbo v15, ""

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1027
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v14

    invoke-direct {v4, v14, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 45
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/io/File;->setReadable(Z)Z

    .line 46
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 47
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v7, Ljava/io/ObjectOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v12}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->flush()V

    .line 50
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 51
    const/4 v9, 0x1

    .line 57
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 64
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    if-eqz v9, :cond_1

    .line 65
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    .line 66
    .local v8, "ret":Z
    if-eqz v8, :cond_5

    .line 67
    const-string/jumbo v12, "awcn.SerializeHelper"

    const-string/jumbo v14, "persist end."

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "file"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string/jumbo v18, "cost"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 31
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "ret":Z
    .end local v9    # "writeSuccess":Z
    .end local v10    # "start":J
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 59
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v9    # "writeSuccess":Z
    .restart local v10    # "start":J
    :catch_0
    move-exception v12

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_1

    .line 52
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string/jumbo v12, "awcn.SerializeHelper"

    const-string/jumbo v14, "persist fail. "

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "file"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v2, v0}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 55
    if-eqz v5, :cond_3

    .line 57
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 59
    :catch_2
    move-exception v12

    goto :goto_1

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    :goto_3
    if-eqz v5, :cond_4

    .line 57
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 59
    :cond_4
    :goto_4
    :try_start_a
    throw v12

    .line 69
    .restart local v8    # "ret":Z
    :cond_5
    const-string/jumbo v12, "awcn.SerializeHelper"

    const-string/jumbo v14, "rename failed."

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lih;->a()Lij;

    move-result-object v12

    new-instance v14, Lanet/channel/statist/ExceptionStatistic;

    const/16 v15, -0x6a

    const/16 v16, 0x0

    const-string/jumbo v17, "rt"

    invoke-direct/range {v14 .. v17}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v14}, Lij;->a(Lanet/channel/statist/StatObject;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .end local v8    # "ret":Z
    :catch_3
    move-exception v14

    goto :goto_4

    .line 55
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_2
    move-exception v12

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v12

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .line 52
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2
.end method
