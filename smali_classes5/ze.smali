.class public final Lze;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 10
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "zipOut"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "rootPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 99
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "8859_1"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string/jumbo v9, "GB2312"

    invoke-direct {v6, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 100
    .end local p2    # "rootPath":Ljava/lang/String;
    .local v6, "rootPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 102
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 104
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4

    .line 105
    array-length v9, v2

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v1, v2, v7

    .line 106
    .local v1, "file":Ljava/io/File;
    invoke-static {v1, p1, v6}, Lze;->a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "rootPath":Ljava/lang/String;
    .restart local p2    # "rootPath":Ljava/lang/String;
    :cond_0
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 110
    .end local p2    # "rootPath":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "rootPath":Ljava/lang/String;
    :cond_1
    const/high16 v7, 0x100000

    :try_start_1
    new-array v0, v7, [B

    .line 111
    .local v0, "buf":[B
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v8, 0x100000

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 114
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, "readLen":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 115
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 123
    .end local v5    # "readLen":I
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    throw v7

    .line 118
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "readLen":I
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 120
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    .line 123
    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "readLen":I
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :cond_4
    if-eqz v3, :cond_5

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 127
    :cond_5
    return-void

    .line 123
    :catchall_1
    move-exception v7

    goto :goto_3
.end method

.method public static a(Ljava/util/Collection;Ljava/io/File;)Z
    .locals 6
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "fileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 76
    :cond_0
    const/4 v3, 0x0

    .line 93
    :goto_0
    return v3

    .line 79
    :cond_1
    const/4 v1, 0x0

    .line 81
    .local v1, "zipOut":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x100000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    .end local v1    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .local v2, "zipOut":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 84
    .local v0, "file":Ljava/io/File;
    const-string/jumbo v4, ""

    invoke-static {v0, v2, v4}, Lze;->a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :goto_2
    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_2
    throw v3

    .end local v1    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 93
    const/4 v3, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_2
.end method
