.class public Lcom/alibaba/doraemon/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "PBEWithMD5AndDES"

.field public static final FILE_SCHEME:Ljava/lang/String; = "file://"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/doraemon/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 18
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "append"    # Z

    .prologue
    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, "input":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 133
    .local v5, "inBuff":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 134
    .local v12, "output":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 137
    .local v10, "outBuff":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    .end local v7    # "input":Ljava/io/FileInputStream;
    .local v8, "input":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .local v6, "inBuff":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v13, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 140
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .local v13, "output":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 141
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .local v11, "outBuff":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 143
    .local v2, "b":[B
    const/4 v4, 0x0

    .line 145
    .local v4, "icount":I
    const/16 v15, 0x1400

    :try_start_4
    invoke-static {v15}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 146
    :cond_0
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .local v9, "len":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_5

    .line 147
    const/4 v15, 0x0

    invoke-virtual {v11, v2, v15, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_0

    .line 150
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 156
    .end local v9    # "len":I
    :catchall_0
    move-exception v15

    :try_start_5
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 159
    :catch_0
    move-exception v3

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 160
    .end local v2    # "b":[B
    .end local v4    # "icount":I
    .end local v8    # "input":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    :goto_1
    :try_start_6
    const-string/jumbo v15, "FileUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Exception e::"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 164
    if-eqz v5, :cond_1

    .line 166
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 171
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-eqz v10, :cond_2

    .line 173
    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 178
    :cond_2
    :goto_3
    if-eqz v12, :cond_3

    .line 180
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 185
    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    .line 187
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 194
    :cond_4
    :goto_5
    const/4 v15, 0x0

    :goto_6
    return v15

    .line 153
    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "b":[B
    .restart local v4    # "icount":I
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "len":I
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_b
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 156
    :try_start_c
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 166
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 173
    :goto_7
    :try_start_e
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 180
    :goto_8
    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 187
    :goto_9
    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    .line 190
    :goto_a
    const/4 v15, 0x1

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_6

    .line 167
    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 168
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 188
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 189
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 167
    .end local v2    # "b":[B
    .end local v4    # "icount":I
    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v8    # "input":Ljava/io/FileInputStream;
    .end local v9    # "len":I
    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v13    # "output":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    .line 168
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 188
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 189
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 161
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 162
    .local v14, "t":Ljava/lang/Throwable;
    :goto_b
    :try_start_11
    const-string/jumbo v15, "FileUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "copyFile ::"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 164
    if-eqz v5, :cond_6

    .line 166
    :try_start_12
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 171
    :cond_6
    :goto_c
    if-eqz v10, :cond_7

    .line 173
    :try_start_13
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 178
    :cond_7
    :goto_d
    if-eqz v12, :cond_8

    .line 180
    :try_start_14
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 185
    :cond_8
    :goto_e
    if-eqz v7, :cond_4

    .line 187
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_5

    .line 188
    :catch_a
    move-exception v3

    .line 189
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 167
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 168
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 164
    .end local v3    # "e":Ljava/io/IOException;
    .end local v14    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v15

    :goto_f
    if-eqz v5, :cond_9

    .line 166
    :try_start_16
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 171
    :cond_9
    :goto_10
    if-eqz v10, :cond_a

    .line 173
    :try_start_17
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 178
    :cond_a
    :goto_11
    if-eqz v12, :cond_b

    .line 180
    :try_start_18
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 185
    :cond_b
    :goto_12
    if-eqz v7, :cond_c

    .line 187
    :try_start_19
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 190
    :cond_c
    :goto_13
    throw v15

    .line 167
    :catch_e
    move-exception v3

    .line 168
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 188
    .end local v3    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v3

    .line 189
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 164
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v15

    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v15

    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "b":[B
    .restart local v4    # "icount":I
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v15

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_f

    .line 161
    .end local v2    # "b":[B
    .end local v4    # "icount":I
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_12
    move-exception v14

    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_13
    move-exception v14

    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v14

    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "b":[B
    .restart local v4    # "icount":I
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v14

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 159
    .end local v2    # "b":[B
    .end local v4    # "icount":I
    :catch_16
    move-exception v3

    goto/16 :goto_1

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_17
    move-exception v3

    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_18
    move-exception v3

    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_19
    move-exception v3

    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 209
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 210
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 211
    const/4 v3, 0x0

    .line 216
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 208
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .locals 14
    .param p0, "src"    # [B
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v7, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    .local v3, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-direct {v5, v12}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 88
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string/jumbo v12, "PBEWithMD5AndDES"

    invoke-static {v12}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 89
    .local v4, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 90
    .local v9, "passwordKey":Ljavax/crypto/SecretKey;
    const/16 v12, 0x8

    new-array v11, v12, [B

    .line 91
    .local v11, "salt":[B
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 92
    .local v10, "rnd":Ljava/util/Random;
    invoke-virtual {v10, v11}, Ljava/util/Random;->nextBytes([B)V

    .line 94
    new-instance v8, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v12, 0x64

    invoke-direct {v8, v11, v12}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 95
    .local v8, "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    const-string/jumbo v12, "PBEWithMD5AndDES"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 96
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 97
    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    const/16 v12, 0x40

    new-array v2, v12, [B

    .line 100
    .local v2, "input":[B
    :cond_0
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_1

    .line 101
    const/4 v12, 0x0

    invoke-virtual {v1, v2, v12, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v6

    .line 102
    .local v6, "output":[B
    if-eqz v6, :cond_0

    .line 103
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "bytesRead":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "input":[B
    .end local v4    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v5    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v6    # "output":[B
    .end local v8    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v9    # "passwordKey":Ljavax/crypto/SecretKey;
    .end local v10    # "rnd":Ljava/util/Random;
    .end local v11    # "salt":[B
    :catch_0
    move-exception v12

    .line 117
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 118
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 120
    :goto_1
    const/4 v12, 0x0

    .line 122
    :goto_2
    return-object v12

    .line 106
    .restart local v0    # "bytesRead":I
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "input":[B
    .restart local v4    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .restart local v5    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .restart local v8    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v9    # "passwordKey":Ljavax/crypto/SecretKey;
    .restart local v10    # "rnd":Ljava/util/Random;
    .restart local v11    # "salt":[B
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v6

    .line 107
    .restart local v6    # "output":[B
    if-eqz v6, :cond_2

    .line 108
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 111
    :cond_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 118
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    :goto_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    goto :goto_2

    .line 116
    .end local v0    # "bytesRead":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "input":[B
    .end local v4    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v5    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v6    # "output":[B
    .end local v8    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v9    # "passwordKey":Ljavax/crypto/SecretKey;
    .end local v10    # "rnd":Ljava/util/Random;
    .end local v11    # "salt":[B
    :catchall_0
    move-exception v12

    .line 117
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 118
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 120
    :goto_4
    throw v12

    :catch_1
    move-exception v13

    goto :goto_4

    :catch_2
    move-exception v12

    goto :goto_1

    .line 121
    .restart local v0    # "bytesRead":I
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "input":[B
    .restart local v4    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .restart local v5    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .restart local v6    # "output":[B
    .restart local v8    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v9    # "passwordKey":Ljavax/crypto/SecretKey;
    .restart local v10    # "rnd":Ljava/util/Random;
    .restart local v11    # "salt":[B
    :catch_3
    move-exception v12

    goto :goto_3
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 240
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    :cond_0
    const-wide/16 v2, 0x0

    .line 252
    :cond_1
    :goto_0
    return-wide v2

    .line 244
    :cond_2
    const-wide/16 v2, 0x0

    .line 245
    .local v2, "size":J
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 249
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getUsableSpace(Ljava/lang/String;)J
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "statfs":Landroid/os/StatFs;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 230
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public static isCanUseSDCard()Z
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLocalFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    const-string/jumbo v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "file://"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 265
    :cond_0
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 9
    .param p0, "sourceFile"    # Ljava/io/File;

    .prologue
    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, "input":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 43
    .local v2, "inBuff":Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    .local v7, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 47
    .local v0, "b":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v5, "input":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .local v3, "inBuff":Ljava/io/BufferedInputStream;
    const/16 v8, 0x1400

    :try_start_2
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 51
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 52
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 58
    .end local v6    # "len":I
    :catch_0
    move-exception v8

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 59
    if-eqz v2, :cond_0

    .line 61
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 67
    :cond_0
    :goto_2
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 71
    :goto_3
    if-eqz v4, :cond_1

    .line 73
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 80
    :cond_1
    :goto_4
    const/4 v8, 0x0

    :goto_5
    return-object v8

    .line 54
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v8

    .line 58
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 61
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 67
    :goto_6
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 73
    :goto_7
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :goto_8
    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 76
    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_5

    .line 62
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 62
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v8

    :goto_9
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 59
    if-eqz v2, :cond_3

    .line 61
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 67
    :cond_3
    :goto_a
    :try_start_b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 71
    :goto_b
    if-eqz v4, :cond_1

    .line 73
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_4

    .line 74
    :catch_8
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 62
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_c
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 59
    if-eqz v2, :cond_4

    .line 61
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 67
    :cond_4
    :goto_d
    :try_start_e
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 71
    :goto_e
    if-eqz v4, :cond_5

    .line 73
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 76
    :cond_5
    :goto_f
    throw v8

    .line 62
    :catch_b
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_c

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_c

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_e
    move-exception v8

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_f
    move-exception v8

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_9

    :catch_10
    move-exception v8

    goto/16 :goto_1

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_11
    move-exception v8

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static zip([B)[B
    .locals 3
    .param p0, "src"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 299
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 300
    .local v1, "outputStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 301
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 302
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 305
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "outputStream":Ljava/util/zip/GZIPOutputStream;
    .end local p0    # "src":[B
    :goto_0
    return-object p0

    .restart local p0    # "src":[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static zipFile(Ljava/io/File;)Ljava/io/File;
    .locals 11
    .param p0, "input"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 313
    .local v1, "data":[B
    :try_start_0
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".gz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v8, "target":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 315
    invoke-virtual {v8}, Ljava/io/File;->deleteOnExit()V

    .line 317
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v7

    .line 318
    .local v7, "re":Z
    if-nez v7, :cond_2

    .line 347
    .end local v7    # "re":Z
    .end local v8    # "target":Ljava/io/File;
    .end local p0    # "input":Ljava/io/File;
    :cond_1
    :goto_0
    return-object p0

    .line 323
    .restart local v7    # "re":Z
    .restart local v8    # "target":Ljava/io/File;
    .restart local p0    # "input":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 324
    .local v2, "dest":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 326
    .local v6, "out":Ljava/util/zip/ZipOutputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 327
    .local v4, "fi":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v9, 0x800

    invoke-direct {v5, v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 328
    .local v5, "origin":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 333
    const/16 v9, 0x800

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 334
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x800

    invoke-virtual {v5, v1, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_3

    .line 335
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 341
    .end local v0    # "count":I
    .end local v2    # "dest":Ljava/io/FileOutputStream;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "origin":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "re":Z
    .end local v8    # "target":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 343
    if-eqz v1, :cond_1

    .line 344
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 337
    .restart local v0    # "count":I
    .restart local v2    # "dest":Ljava/io/FileOutputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "origin":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "re":Z
    .restart local v8    # "target":Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 338
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 339
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    if-eqz v1, :cond_4

    .line 344
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_4
    move-object p0, v8

    .line 347
    goto :goto_0

    .line 343
    .end local v0    # "count":I
    .end local v2    # "dest":Ljava/io/FileOutputStream;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "origin":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "re":Z
    .end local v8    # "target":Ljava/io/File;
    :catchall_0
    move-exception v9

    if-eqz v1, :cond_5

    .line 344
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_5
    throw v9
.end method
