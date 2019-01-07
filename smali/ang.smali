.class public final Lang;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    .prologue
    .line 35
    const/4 v5, 0x0

    .line 39
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v6, "/proc/cpuinfo"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .local v3, "localFileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v6, 0x400

    invoke-direct {v1, v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 43
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 45
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "localFileReader":Ljava/io/FileReader;
    :goto_0
    if-eqz v5, :cond_0

    .line 53
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 54
    .local v0, "i":I
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 57
    .end local v0    # "i":I
    :goto_1
    return-object v6

    .line 46
    .restart local v3    # "localFileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 47
    .local v4, "localIOException":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "SystemUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Could not read from file /proc/cpuinfo :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 49
    .end local v3    # "localFileReader":Ljava/io/FileReader;
    .end local v4    # "localIOException":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 50
    .local v2, "localFileNotFoundException":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "BaseParameter-Could not open file /proc/cpuinfo :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v2    # "localFileNotFoundException":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v6, ""

    goto :goto_1
.end method
