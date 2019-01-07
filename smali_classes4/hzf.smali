.class public Lhzf;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhzf$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lhzf;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "x86"

    iput-object v0, p0, Lhzf;->c:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "arm64"

    iput-object v0, p0, Lhzf;->d:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "lib/armeabi/"

    iput-object v0, p0, Lhzf;->e:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "armeabi"

    iput-object v0, p0, Lhzf;->f:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "lib/armeabi/"

    iput-object v0, p0, Lhzf;->g:Ljava/lang/String;

    .line 41
    sput-object p1, Lhzf;->a:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lhzf;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lhzf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhzf;->b:Lhzf;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lhzf;

    invoke-direct {v0, p0}, Lhzf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhzf;->b:Lhzf;

    .line 37
    :cond_0
    sget-object v0, Lhzf;->b:Lhzf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 107
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lhzf;->a(Ljava/io/File;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    .line 91
    move-object v3, p1

    .local v3, "fileDirectory":Ljava/io/File;
    :try_start_0
    new-instance v7, Lhzf$a;

    invoke-direct {v7, p0, p2}, Lhzf$a;-><init>(Lhzf;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 92
    .local v1, "delfiles":[Ljava/io/File;
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v5, v0, v4

    .line 93
    .local v5, "item":Ljava/io/File;
    invoke-direct {p0, v5}, Lhzf;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "delfiles":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "item":Ljava/io/File;
    .end local v6    # "len$":I
    :catch_0
    move-exception v2

    .line 96
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "SoLoader"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 12

    .prologue
    .line 255
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v11, "/proc/cpuinfo"

    invoke-direct {v5, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 256
    .local v5, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 257
    .local v4, "ir":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 262
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "l":Ljava/lang/String;
    const-string/jumbo v11, "features"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 265
    const-string/jumbo v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, "strs":[Ljava/lang/String;
    move-object v0, v10

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v10

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v9, v0, v3

    .line 267
    .local v9, "str":Ljava/lang/String;
    const-string/jumbo v11, "neon"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "asimd"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_2

    .line 277
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 278
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 279
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v11, 0x1

    .line 284
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "i$":I
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .end local v6    # "l":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "strs":[Ljava/lang/String;
    :goto_1
    return v11

    .line 266
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "i$":I
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "l":Ljava/lang/String;
    .restart local v7    # "len$":I
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "str":Ljava/lang/String;
    .restart local v10    # "strs":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "l":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "strs":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 278
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 279
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 284
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    :goto_2
    const/4 v11, 0x0

    goto :goto_1

    .line 277
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v11

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 278
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 279
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 13
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "savePath"    # Ljava/io/File;

    .prologue
    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, "isCopySuccess":Z
    const/4 v8, 0x0

    .line 188
    .local v8, "output":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 189
    .local v3, "bufOut":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 193
    .local v1, "bufIn":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 196
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 198
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .local v2, "bufIn":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .local v9, "output":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 202
    .end local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    .local v4, "bufOut":Ljava/io/BufferedOutputStream;
    const/16 v10, 0x400

    :try_start_3
    new-array v0, v10, [B

    .line 204
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    .line 205
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 210
    .end local v0    # "b":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 211
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    const-string/jumbo v10, "SoLoader"

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    if-eqz v8, :cond_1

    .line 217
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 220
    :cond_1
    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 224
    :cond_2
    if-eqz v3, :cond_3

    .line 225
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 233
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_2
    return v6

    .line 207
    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v7    # "len":I
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 208
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 209
    const/4 v6, 0x1

    .line 217
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 221
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 225
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 231
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 228
    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 229
    .local v5, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 230
    const-string/jumbo v10, "SoLoader"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 232
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 228
    .end local v0    # "b":[B
    .end local v7    # "len":I
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 229
    .local v5, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 230
    const-string/jumbo v10, "SoLoader"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 213
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    const-string/jumbo v10, "SoLoader"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 216
    if-eqz v8, :cond_5

    .line 217
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 220
    :cond_5
    if-eqz v1, :cond_6

    .line 221
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 224
    :cond_6
    if-eqz v3, :cond_3

    .line 225
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 228
    :catch_4
    move-exception v5

    .line 229
    const/4 v6, 0x0

    .line 230
    const-string/jumbo v10, "SoLoader"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 215
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 216
    :goto_4
    if-eqz v8, :cond_7

    .line 217
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 220
    :cond_7
    if-eqz v1, :cond_8

    .line 221
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 224
    :cond_8
    if-eqz v3, :cond_9

    .line 225
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 231
    :cond_9
    :goto_5
    throw v10

    .line 228
    :catch_5
    move-exception v5

    .line 230
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "SoLoader"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 215
    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 212
    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 210
    :catch_9
    move-exception v5

    goto/16 :goto_1

    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "dataDirectory"    # Ljava/lang/String;
    .param p2, "soFolder"    # Ljava/lang/String;
    .param p3, "soName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    const/4 v5, 0x0

    .line 119
    .local v5, "result":Z
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 121
    .local v1, "cpu_abi":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "lib"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "soLibName":Ljava/lang/String;
    move-object v6, v7

    .line 124
    .local v6, "soCopyname":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "copySo2DataLib, dataDirectory="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", soFolder="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", soName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Build.CPU_ABI="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",soLibName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v8, "x86"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "lib/armeabi/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "apkLibPath":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, "libSaveDirectory":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v4, "libSoPath":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "lib"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lhzf;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 152
    invoke-direct {p0, p1, v0, v7, v4}, Lhzf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v3    # "libSaveDirectory":Ljava/io/File;
    .end local v4    # "libSoPath":Ljava/io/File;
    :goto_1
    move v8, v5

    .line 159
    .end local v0    # "apkLibPath":Ljava/lang/String;
    :goto_2
    return v8

    .line 128
    :cond_0
    const-string/jumbo v8, "armeabi"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "lib/armeabi/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "apkLibPath":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0    # "apkLibPath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "arm64"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "lib/armeabi/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "apkLibPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 133
    .end local v0    # "apkLibPath":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "SoLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "model is not support for the so:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v8, 0x0

    goto :goto_2

    .line 155
    .restart local v0    # "apkLibPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "SoLoader"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "apklibPath"    # Ljava/lang/String;
    .param p3, "soLibName"    # Ljava/lang/String;
    .param p4, "libSE"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "isSaveSuccess":Z
    const-class v3, Lhzf;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 166
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 167
    if-nez p1, :cond_0

    .line 168
    const-string/jumbo v3, "SoLoader"

    const-string/jumbo v4, "directory is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-static {v1, p4}, Lhzf;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2

    .line 172
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SoLoader"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error: can\'t find "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 288
    const-string/jumbo v6, "x86"

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "x86"

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 289
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 290
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 291
    .local v1, "supportABIS":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 292
    move-object v4, v1

    .line 293
    .local v4, "var4":[Ljava/lang/String;
    array-length v3, v1

    .line 295
    .local v3, "var3":I
    const/4 v2, 0x0

    .local v2, "var2":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 296
    aget-object v0, v4, v2

    .line 297
    .local v0, "abi":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "x86"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "var2":I
    .end local v3    # "var3":I
    .end local v4    # "var4":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 295
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "var2":I
    .restart local v3    # "var3":I
    .restart local v4    # "var4":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "var2":I
    .end local v3    # "var3":I
    .end local v4    # "var4":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 13
    .param p1, "soName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 46
    const/4 v5, 0x0

    .line 48
    .local v5, "loadSuccess":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_bak"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "soBakFolder":Ljava/lang/String;
    sget-object v9, Lhzf;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "apkDataDirectory":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "loadSO"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6, p1}, Lhzf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 56
    .local v3, "isCopySuccess":Z
    if-eqz v3, :cond_1

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "lib"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "soCopyname":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "soBakName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, "libSo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 66
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "System.load:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v5, 0x1

    .line 85
    .end local v4    # "libSo":Ljava/io/File;
    .end local v7    # "soBakName":Ljava/lang/String;
    .end local v8    # "soCopyname":Ljava/lang/String;
    :goto_0
    return v5

    .line 69
    .restart local v4    # "libSo":Ljava/io/File;
    .restart local v7    # "soBakName":Ljava/lang/String;
    .restart local v8    # "soCopyname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "error":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v9, "SoLoader"

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v1    # "error":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v10, "error can\'t find %1$s lib in plugins_lib"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 81
    .end local v4    # "libSo":Ljava/io/File;
    .end local v7    # "soBakName":Ljava/lang/String;
    .end local v8    # "soCopyname":Ljava/lang/String;
    :cond_1
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v10, "error copy %1$s lib fail"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "errorMsg":Ljava/lang/String;
    const-string/jumbo v9, "SoLoader"

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
