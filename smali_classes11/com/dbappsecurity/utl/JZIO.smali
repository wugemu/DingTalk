.class public Lcom/dbappsecurity/utl/JZIO;
.super Ljava/lang/Object;
.source "JZIO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteStreamCopy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "pathFrom"    # Ljava/lang/String;
    .param p1, "pathTo"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v7, "filein":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 130
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZFile;->CreateFiles(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 131
    .local v8, "fileout":Ljava/io/File;
    const/4 v1, 0x0

    .line 132
    .local v1, "bufis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 134
    .local v3, "bufos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v1    # "bufis":Ljava/io/BufferedInputStream;
    .local v2, "bufis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .end local v3    # "bufos":Ljava/io/BufferedOutputStream;
    .local v4, "bufos":Ljava/io/BufferedOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 139
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, "by":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 140
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 149
    .end local v0    # "buf":[B
    .end local v5    # "by":I
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "bufos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufos":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 150
    .end local v2    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufis":Ljava/io/BufferedInputStream;
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    if-eqz v1, :cond_2

    .line 155
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 160
    :cond_2
    if-eqz v3, :cond_0

    .line 161
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 163
    :catch_1
    move-exception v9

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "\u5199\u51fa\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 155
    .end local v1    # "bufis":Ljava/io/BufferedInputStream;
    .end local v3    # "bufos":Ljava/io/BufferedOutputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v2    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "by":I
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 161
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 163
    :catch_2
    move-exception v9

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "\u5199\u51fa\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 157
    :catch_3
    move-exception v9

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "\u8bfb\u53d6\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v0    # "buf":[B
    .end local v2    # "bufis":Ljava/io/BufferedInputStream;
    .end local v4    # "bufos":Ljava/io/BufferedOutputStream;
    .end local v5    # "by":I
    .restart local v1    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "\u8bfb\u53d6\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 153
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 154
    :goto_3
    if-eqz v1, :cond_4

    .line 155
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 160
    :cond_4
    if-eqz v3, :cond_5

    .line 161
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 163
    :cond_5
    throw v9

    .line 157
    :catch_5
    move-exception v9

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "\u8bfb\u53d6\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 163
    :catch_6
    move-exception v9

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "\u5199\u51fa\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 153
    .end local v1    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v1    # "bufis":Ljava/io/BufferedInputStream;
    .end local v3    # "bufos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "bufos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufos":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 149
    :catch_7
    move-exception v6

    goto :goto_2

    .end local v1    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufis":Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v6

    move-object v1, v2

    .end local v2    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufis":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static ByteStreamCut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "pathFrom"    # Ljava/lang/String;
    .param p1, "pathTo"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/dbappsecurity/utl/JZIO;->ByteStreamCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p0}, Lcom/dbappsecurity/utl/JZFile;->deletefile(Ljava/lang/String;)Z

    .line 110
    return-void
.end method

.method public static CharacterStreamCopy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "pathFrom"    # Ljava/lang/String;
    .param p1, "pathTo"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    invoke-static {p0}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "file_r_in":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZFile;->CreateFiles(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 66
    .local v5, "file_w_out":Ljava/io/File;
    const/4 v0, 0x0

    .line 67
    .local v0, "bufr":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 70
    .local v2, "bufw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .local v1, "bufr":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .end local v2    # "bufw":Ljava/io/BufferedWriter;
    .local v3, "bufw":Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "bufw":Ljava/io/BufferedWriter;
    .restart local v2    # "bufw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 86
    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_2

    .line 87
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 92
    :cond_2
    if-eqz v2, :cond_0

    .line 93
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v7

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "\u5199\u51fa\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 87
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v2    # "bufw":Ljava/io/BufferedWriter;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v3    # "bufw":Ljava/io/BufferedWriter;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 95
    :catch_2
    move-exception v7

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "\u5199\u51fa\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    :catch_3
    move-exception v7

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "\u8bfb\u53d6\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .end local v3    # "bufw":Ljava/io/BufferedWriter;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v2    # "bufw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v7

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "\u8bfb\u53d6\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 85
    :catchall_0
    move-exception v7

    .line 86
    :goto_3
    if-eqz v0, :cond_4

    .line 87
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 92
    :cond_4
    if-eqz v2, :cond_5

    .line 93
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 95
    :cond_5
    throw v7

    .line 89
    :catch_5
    move-exception v7

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "\u8bfb\u53d6\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    :catch_6
    move-exception v7

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "\u5199\u51fa\u5173\u95ed\u5931\u8d25\uff01\uff01\uff01"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 85
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v2    # "bufw":Ljava/io/BufferedWriter;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v3    # "bufw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "bufw":Ljava/io/BufferedWriter;
    .restart local v2    # "bufw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    goto :goto_3

    :catch_7
    move-exception v7

    goto :goto_2

    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    :catch_8
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static CharacterStreamCut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "pathFrom"    # Ljava/lang/String;
    .param p1, "pathTo"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/dbappsecurity/utl/JZIO;->CharacterStreamCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/dbappsecurity/utl/JZFile;->deletefile(Ljava/lang/String;)Z

    .line 41
    return-void
.end method

.method private getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    const/4 v2, 0x0

    .line 330
    .local v2, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 332
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x3e8

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 333
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x3e8

    new-array v0, v7, [B

    .line 335
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "n":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 336
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 341
    .end local v0    # "b":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "n":I
    :catch_0
    move-exception v3

    .line 342
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 346
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v2

    .line 338
    .restart local v0    # "b":[B
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "n":I
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 339
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 340
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 343
    .end local v0    # "b":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "n":I
    :catch_1
    move-exception v3

    .line 344
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "bfile"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 357
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 359
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 361
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 370
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 377
    :goto_0
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 383
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 371
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 372
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 379
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 380
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 365
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 368
    if-eqz v0, :cond_2

    .line 370
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 375
    :cond_2
    :goto_3
    if-eqz v6, :cond_1

    .line 377
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 378
    :catch_3
    move-exception v4

    .line 379
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 371
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 372
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 368
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_3

    .line 370
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 375
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    .line 377
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 380
    :cond_4
    :goto_6
    throw v8

    .line 371
    :catch_5
    move-exception v4

    .line 372
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 378
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 379
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 368
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 365
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method public static getFileInput(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v4, 0x0

    .line 240
    .local v4, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 242
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 243
    .local v3, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 252
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 258
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "obj":Ljava/lang/Object;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-object v4

    .line 253
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 255
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    if-eqz v1, :cond_0

    .line 252
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 253
    :catch_2
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_1

    .line 252
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 255
    :cond_1
    :goto_3
    throw v5

    .line 253
    :catch_3
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 247
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 294
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 298
    :cond_0
    const/4 v3, 0x0

    .line 299
    .local v3, "scan":Ljava/util/Scanner;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v3    # "scan":Ljava/util/Scanner;
    .local v4, "scan":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 308
    .end local v4    # "scan":Ljava/util/Scanner;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "scan":Ljava/util/Scanner;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "scan":Ljava/util/Scanner;
    :cond_1
    :goto_2
    const/4 v5, 0x0

    :goto_3
    return-object v5

    .line 305
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "scan":Ljava/util/Scanner;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 311
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_3

    .line 310
    .end local v4    # "scan":Ljava/util/Scanner;
    .restart local v3    # "scan":Ljava/util/Scanner;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_3

    .line 311
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_3
    throw v5

    .line 315
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "scan":Ljava/util/Scanner;
    :cond_4
    if-eqz p0, :cond_1

    .line 316
    const-string/jumbo v5, "\u8bfb\u53d6\u5931\u8d25\uff0cSD\u5361\u4e0d\u5b58\u5728\uff01"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 310
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "scan":Ljava/util/Scanner;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "scan":Ljava/util/Scanner;
    .restart local v3    # "scan":Ljava/util/Scanner;
    goto :goto_4

    .line 307
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static saveFileOutPut(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v3, 0x0

    .line 214
    .local v3, "out":Ljava/io/ObjectOutputStream;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 215
    .local v2, "os":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .local v4, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 230
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 225
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 227
    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e1":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    if-eqz v3, :cond_0

    .line 224
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 225
    :catch_2
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 220
    .local v1, "e1":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    if-eqz v3, :cond_0

    .line 224
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 225
    :catch_4
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_1

    .line 224
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 227
    :cond_1
    :goto_4
    throw v5

    .line 225
    :catch_5
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 219
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 217
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public static setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "str_path"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "bufw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v4, "out":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v0    # "bufw":Ljava/io/BufferedWriter;
    .local v1, "bufw":Ljava/io/BufferedWriter;
    :try_start_1
    const-string/jumbo v6, "\n"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "str":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 202
    .end local v1    # "bufw":Ljava/io/BufferedWriter;
    .end local v3    # "i":I
    .end local v4    # "out":Ljava/io/FileWriter;
    .end local v5    # "str":[Ljava/lang/String;
    .restart local v0    # "bufw":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 196
    .end local v0    # "bufw":Ljava/io/BufferedWriter;
    .restart local v1    # "bufw":Ljava/io/BufferedWriter;
    .restart local v3    # "i":I
    .restart local v4    # "out":Ljava/io/FileWriter;
    .restart local v5    # "str":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 198
    .end local v1    # "bufw":Ljava/io/BufferedWriter;
    .restart local v0    # "bufw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 186
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    .end local v4    # "out":Ljava/io/FileWriter;
    .end local v5    # "str":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 187
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    if-eqz v0, :cond_1

    .line 195
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 196
    :catch_2
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 189
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    if-eqz v0, :cond_1

    .line 195
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 196
    :catch_4
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 191
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 193
    if-eqz v0, :cond_1

    .line 195
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 196
    :catch_6
    move-exception v2

    .line 197
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 193
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_2

    .line 195
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 198
    :cond_2
    :goto_6
    throw v6

    .line 196
    :catch_7
    move-exception v2

    .line 197
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 193
    .end local v0    # "bufw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufw":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufw":Ljava/io/BufferedWriter;
    .restart local v0    # "bufw":Ljava/io/BufferedWriter;
    goto :goto_5

    .line 190
    .end local v0    # "bufw":Ljava/io/BufferedWriter;
    .restart local v1    # "bufw":Ljava/io/BufferedWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufw":Ljava/io/BufferedWriter;
    .restart local v0    # "bufw":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 188
    .end local v0    # "bufw":Ljava/io/BufferedWriter;
    .restart local v1    # "bufw":Ljava/io/BufferedWriter;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufw":Ljava/io/BufferedWriter;
    .restart local v0    # "bufw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 186
    .end local v0    # "bufw":Ljava/io/BufferedWriter;
    .restart local v1    # "bufw":Ljava/io/BufferedWriter;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufw":Ljava/io/BufferedWriter;
    .restart local v0    # "bufw":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public static write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 266
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 271
    :cond_0
    const/4 v2, 0x0

    .line 273
    .local v2, "out":Ljava/io/PrintStream;
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v2    # "out":Ljava/io/PrintStream;
    .local v3, "out":Ljava/io/PrintStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 288
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/PrintStream;
    :cond_1
    :goto_0
    return-void

    .line 275
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v2, :cond_1

    .line 279
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 279
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    :cond_2
    throw v4

    .line 283
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "out":Ljava/io/PrintStream;
    :cond_3
    if-eqz p0, :cond_1

    .line 284
    const-string/jumbo v4, "\u4fdd\u5b58\u5931\u8d25\uff0cSD\u5361\u4e0d\u5b58\u5728\uff01"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 278
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/PrintStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/PrintStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    goto :goto_2

    .line 275
    .end local v2    # "out":Ljava/io/PrintStream;
    .restart local v3    # "out":Ljava/io/PrintStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/PrintStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    goto :goto_1
.end method
