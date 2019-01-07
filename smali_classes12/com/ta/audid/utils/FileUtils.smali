.class public Lcom/ta/audid/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDirExist(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "outPutFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    .end local v0    # "outPutFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .local v3, "reader":Ljava/io/InputStreamReader;
    const/16 v6, 0x64

    :try_start_1
    new-array v5, v6, [C

    .line 33
    .local v5, "tempbytes":[C
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    .local v0, "byteread":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 36
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v0    # "byteread":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "tempbytes":[C
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 43
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    if-eqz v2, :cond_0

    .line 44
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    :cond_0
    :goto_2
    const-string/jumbo v6, ""

    :goto_3
    return-object v6

    .line 38
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "byteread":I
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "tempbytes":[C
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 44
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v2, v3

    .line 48
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 46
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, ""

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v8}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 46
    .end local v0    # "byteread":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "tempbytes":[C
    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v1

    .line 47
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 43
    :goto_5
    if-eqz v2, :cond_2

    .line 44
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 48
    :cond_2
    :goto_6
    throw v6

    .line 46
    :catch_3
    move-exception v1

    .line 47
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, ""

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v8}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    goto :goto_5

    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method public static readFileLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 58
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 66
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 73
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 79
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 68
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 76
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 62
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 72
    :cond_0
    :goto_4
    if-eqz v3, :cond_1

    .line 73
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 79
    :cond_1
    :goto_5
    const-string/jumbo v5, ""

    goto :goto_2

    .line 68
    :catch_3
    move-exception v2

    .line 69
    const-string/jumbo v5, ""

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 75
    :catch_4
    move-exception v2

    .line 76
    const-string/jumbo v5, ""

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 64
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 65
    :goto_6
    if-eqz v0, :cond_2

    .line 66
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 72
    :cond_2
    :goto_7
    if-eqz v3, :cond_3

    .line 73
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 77
    :cond_3
    :goto_8
    throw v5

    .line 68
    :catch_5
    move-exception v2

    .line 69
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 76
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 64
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 61
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static saveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .line 86
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .local v4, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 108
    :goto_1
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    :cond_0
    :goto_2
    return v5

    .line 99
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 107
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v5}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 91
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catch_2
    move-exception v2

    .line 92
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 103
    :cond_1
    :goto_4
    if-eqz v3, :cond_0

    .line 104
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 106
    :catch_3
    move-exception v2

    .line 107
    const-string/jumbo v6, ""

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 99
    :catch_4
    move-exception v2

    .line 100
    const-string/jumbo v6, ""

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 96
    :goto_5
    if-eqz v0, :cond_2

    .line 97
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 103
    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    .line 104
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 108
    :cond_3
    :goto_7
    throw v6

    .line 99
    :catch_5
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, ""

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v2, v8}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 107
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, ""

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7, v2, v5}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_5

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_5

    .line 91
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_3
.end method
