.class public Lcom/laiwang/protocol/file/e;
.super Lcom/laiwang/protocol/file/c;
.source "DownloadToFileHandler.java"


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/file/download/FileItem;Ljava/io/File;)V
    .locals 3
    .param p1, "item"    # Lcom/laiwang/protocol/file/download/FileItem;
    .param p2, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/file/c;-><init>(Lcom/laiwang/protocol/file/download/FileItem;)V

    .line 25
    iput-object p2, p0, Lcom/laiwang/protocol/file/e;->b:Ljava/io/File;

    .line 26
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/laiwang/protocol/file/e;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/laiwang/protocol/file/e;->c:Ljava/io/OutputStream;

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/laiwang/protocol/file/download/FileSegment;)Z
    .locals 6
    .param p1, "segment"    # Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileSegment;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/laiwang/protocol/file/e;->c:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileSegment;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileSegment;->getEnd()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileSegment;->getTotalLength()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 42
    :try_start_2
    iget-object v1, p0, Lcom/laiwang/protocol/file/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 43
    iget-object v1, p0, Lcom/laiwang/protocol/file/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "FileDown"

    const-string/jumbo v2, "write down segment err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const/4 v1, 0x0

    goto :goto_1

    .line 44
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/file/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 61
    iget-object v1, p0, Lcom/laiwang/protocol/file/e;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized b(Lcom/laiwang/protocol/file/download/FileSegment;)Z
    .locals 1
    .param p1, "segment"    # Lcom/laiwang/protocol/file/download/FileSegment;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/file/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/file/download/FileSegment;->setFilePath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
