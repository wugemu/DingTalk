.class public final Ljra;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 30
    .local v0, "parentPath":Ljava/io/File;
    invoke-static {v0}, Ljra;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 48
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 35
    invoke-static {v0}, Ljra;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 36
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljra;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 41
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljra;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 46
    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 170
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v7

    add-int/lit8 v7, v7, 0xa

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v7, 0x1000

    :try_start_1
    new-array v3, v7, [C

    .line 176
    .local v3, "data":[C
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_2

    .line 177
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 182
    .end local v3    # "data":[C
    .end local v4    # "len":I
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 183
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "var19":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    :cond_0
    :goto_2
    if-eqz p0, :cond_1

    .line 194
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 201
    :cond_1
    :goto_3
    const-string/jumbo v6, ""

    .end local v5    # "var19":Ljava/io/IOException;
    :goto_4
    return-object v6

    .line 180
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "data":[C
    .restart local v4    # "len":I
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 187
    .local v6, "var5":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 193
    :goto_5
    if-eqz p0, :cond_3

    .line 194
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_6
    move-object v0, v1

    .line 197
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 185
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "data":[C
    .end local v4    # "len":I
    .end local v6    # "var5":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 186
    :goto_7
    if-eqz v0, :cond_4

    .line 187
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 193
    :cond_4
    :goto_8
    if-eqz p0, :cond_5

    .line 194
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 197
    :cond_5
    :goto_9
    throw v7

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "data":[C
    .restart local v4    # "len":I
    .restart local v6    # "var5":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_5

    :catch_2
    move-exception v7

    goto :goto_6

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "data":[C
    .end local v4    # "len":I
    .end local v6    # "var5":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "var19":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_2

    .line 199
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v5    # "var19":Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_8

    :catch_6
    move-exception v8

    goto :goto_9

    .line 185
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 182
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v5

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-static {p0, p1}, Ljra;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v3

    .line 140
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Ljra;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 142
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "var4":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 147
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "var4":Ljava/io/FileNotFoundException;
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 156
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0}, Ljra;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "var4":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    const-string/jumbo v2, ""

    goto :goto_0

    .line 162
    .end local v1    # "var4":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
