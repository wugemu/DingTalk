.class public final Lcop;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcop$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, v9

    .line 141
    :cond_1
    :goto_0
    return-object v0

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_3
    const/4 v7, 0x0

    .line 127
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 128
    .local v2, "projections":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 129
    if-eqz v7, :cond_4

    .line 130
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 131
    .local v6, "columnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    if-eqz v7, :cond_1

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 137
    .end local v6    # "columnIndex":I
    :cond_4
    if-eqz v7, :cond_5

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v2    # "projections":[Ljava/lang/String;
    :cond_5
    :goto_1
    move-object v0, v9

    .line 141
    goto :goto_0

    .line 134
    :catch_0
    move-exception v8

    .line 135
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    if-eqz v7, :cond_5

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 137
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string/jumbo v1, ""

    .line 153
    :goto_0
    return-object v1

    .line 149
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "urls":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 151
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0

    .line 153
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 110
    if-eqz p0, :cond_0

    .line 111
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 352
    const/4 v3, 0x0

    .line 354
    .local v3, "o":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcop;->b(Ljava/lang/String;)Z

    .line 355
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .end local v3    # "o":Ljava/io/OutputStream;
    .local v4, "o":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 358
    .local v0, "data":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 359
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 363
    .end local v0    # "data":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 364
    .end local v4    # "o":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "FileNotFoundException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v3}, Lcop;->a(Ljava/io/Closeable;)V

    .line 369
    invoke-static {p1}, Lcop;->a(Ljava/io/Closeable;)V

    throw v5

    .line 361
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "length":I
    .restart local v4    # "o":Ljava/io/OutputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 368
    invoke-static {v4}, Lcop;->a(Ljava/io/Closeable;)V

    .line 369
    invoke-static {p1}, Lcop;->a(Ljava/io/Closeable;)V

    const/4 v5, 0x1

    return v5

    .line 365
    .end local v0    # "data":[B
    .end local v2    # "length":I
    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 366
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_2

    .line 365
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_3

    .line 363
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "dstFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 98
    .line 1062
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_1

    .line 1064
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "srcFilePath or dstFilePath is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :catch_0
    move-exception v0

    move v0, v6

    .line 105
    :goto_0
    return v0

    .line 1066
    :cond_1
    const-string/jumbo v0, "FileUtil"

    const-string/jumbo v1, "fastCopy"

    const-string/jumbo v2, "src or dst File path is invalid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1074
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v4, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1078
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 1080
    const-wide/16 v2, 0x0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1085
    :try_start_4
    invoke-static {v1}, Lcop;->a(Ljava/io/Closeable;)V

    .line 1086
    invoke-static {v0}, Lcop;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_0

    .line 1081
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 1082
    :goto_2
    :try_start_5
    const-string/jumbo v3, "FileUtil"

    const-string/jumbo v4, "fastCopy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1085
    :catchall_0
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_3
    :try_start_6
    invoke-static {v1}, Lcop;->a(Ljava/io/Closeable;)V

    .line 1086
    invoke-static {v2}, Lcop;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1085
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    .line 1081
    :catch_3
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    :goto_0
    return v3

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 216
    .local v1, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    invoke-static {p0}, Lcop;->b(Ljava/lang/String;)Z

    .line 217
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    invoke-static {v2}, Lcop;->a(Ljava/io/Closeable;)V

    const/4 v3, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcop;->a(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .line 220
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/io/File;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/util/regex/Pattern;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 505
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-object v1

    .line 509
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    if-nez p1, :cond_2

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 517
    :cond_2
    new-instance v1, Lcop$a;

    invoke-direct {v1, p1}, Lcop$a;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "fileContent":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_0

    .line 178
    const/4 v2, 0x0

    .line 196
    .end local v2    # "fileContent":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 181
    .restart local v2    # "fileContent":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v5, 0x0

    .line 183
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 184
    .local v3, "is":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    const-string/jumbo v7, "\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 193
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 194
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v5}, Lcop;->a(Ljava/io/Closeable;)V

    throw v7

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    invoke-static {v6}, Lcop;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 193
    .end local v3    # "is":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 242
    .line 1253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 243
    .local v1, "folderName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    :goto_1
    return v2

    .line 1257
    .end local v1    # "folderName":Ljava/lang/String;
    :cond_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1258
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 247
    .restart local v1    # "folderName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v2

    .line 389
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 397
    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v0, v2, v3

    .line 400
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 401
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 399
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 402
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 403
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcop;->c(Ljava/lang/String;)Z

    goto :goto_2

    .line 406
    .end local v0    # "f":Ljava/io/File;
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "sourceFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcop;->a(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v2

    .line 303
    return v2

    .line 300
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "FileNotFoundException occurred. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1328
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v2

    .line 419
    :cond_1
    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "fileSplit":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 421
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 422
    .local v1, "split":Ljava/lang/String;
    const-string/jumbo v5, ".."

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 427
    .end local v1    # "split":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    .end local p0    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 456
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 457
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 469
    const-string/jumbo v1, ""

    .line 1488
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1498
    :cond_0
    :goto_0
    return-object v0

    .line 1492
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1497
    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1498
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1500
    :cond_2
    new-instance v0, Lcop$a;

    invoke-direct {v0, v1}, Lcop$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method
