.class public Lcom/alibaba/doraemon/utils/CmdUtils;
.super Ljava/lang/Object;
.source "CmdUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cmd"    # [Ljava/lang/String;
    .param p1, "workdirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const-class v6, Lcom/alibaba/doraemon/utils/CmdUtils;

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    .local v4, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 38
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 41
    .local v0, "builder":Ljava/lang/ProcessBuilder;
    if-eqz p1, :cond_1

    .line 43
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 45
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 50
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 51
    const/4 v3, 0x0

    .line 53
    .local v3, "re":[B
    const/16 v5, 0x400

    :try_start_2
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    .line 54
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 55
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 58
    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "re":[B
    :cond_1
    if-eqz v1, :cond_2

    .line 64
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 67
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 58
    .restart local v2    # "process":Ljava/lang/Process;
    .restart local v3    # "re":[B
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    .end local v0    # "builder":Ljava/lang/ProcessBuilder;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "re":[B
    :catchall_1
    move-exception v5

    if-eqz v1, :cond_3

    .line 64
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 30
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v4    # "result":Ljava/lang/StringBuffer;
    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static runCMD(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "cmdstr"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v8, "result":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "cmd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "/system/bin/sh"

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string/jumbo v9, "-c"

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v5, 0x0

    .line 80
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 81
    .local v1, "builder":Ljava/lang/ProcessBuilder;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 83
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 85
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x400

    invoke-direct {v0, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 87
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "line":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v5, :cond_1

    .line 99
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "builder":Ljava/lang/ProcessBuilder;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "process":Ljava/lang/Process;
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 100
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "builder":Ljava/lang/ProcessBuilder;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "builder":Ljava/lang/ProcessBuilder;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v4

    .line 94
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-eqz v5, :cond_1

    .line 99
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 100
    :catch_2
    move-exception v3

    .line 101
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 96
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 98
    if-eqz v5, :cond_2

    .line 99
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 102
    :cond_2
    :goto_2
    throw v9

    .line 100
    :catch_3
    move-exception v3

    .line 101
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
