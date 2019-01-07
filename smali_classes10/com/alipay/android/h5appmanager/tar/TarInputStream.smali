.class public Lcom/alipay/android/h5appmanager/tar/TarInputStream;
.super Ljava/io/FilterInputStream;
.source "TarInputStream.java"


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x800


# instance fields
.field private bytesRead:J

.field private currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

.field private currentFileSize:J

.field private defaultSkip:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->defaultSkip:Z

    .line 21
    iput-wide v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    .line 22
    iput-wide v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    .line 23
    return-void
.end method


# virtual methods
.method protected closeCurrentEntry()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 115
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-virtual {v4}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getSize()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 118
    const-wide/16 v0, 0x0

    .line 119
    .local v0, "bs":J
    :goto_0
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-virtual {v4}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getSize()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 120
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-virtual {v4}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getSize()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v4, v6

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->skip(J)J

    move-result-wide v2

    .line 123
    .local v2, "res":J
    cmp-long v4, v2, v8

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    .line 124
    invoke-virtual {v4}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getSize()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 126
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Possible tar file corruption"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_0
    add-long/2addr v0, v2

    .line 130
    goto :goto_0

    .line 133
    .end local v0    # "bs":J
    .end local v2    # "res":J
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    .line 134
    iput-wide v8, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    .line 135
    invoke-virtual {p0}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->skipPad()V

    .line 137
    :cond_2
    return-void
.end method

.method public getCurrentOffset()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    return-wide v0
.end method

.method public getNextEntry()Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x200

    .line 76
    invoke-virtual {p0}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->closeCurrentEntry()V

    .line 78
    new-array v2, v8, [B

    .line 79
    .local v2, "header":[B
    new-array v4, v8, [B

    .line 80
    .local v4, "theader":[B
    const/4 v5, 0x0

    .line 83
    .local v5, "tr":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 84
    rsub-int v7, v5, 0x200

    invoke-virtual {p0, v4, v6, v7}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([BII)I

    move-result v3

    .line 86
    .local v3, "res":I
    if-ltz v3, :cond_0

    .line 90
    invoke-static {v4, v6, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/2addr v5, v3

    .line 92
    goto :goto_0

    .line 95
    .end local v3    # "res":I
    :cond_0
    const/4 v1, 0x1

    .line 96
    .local v1, "eof":Z
    :goto_1
    if-ge v6, v8, :cond_1

    aget-byte v0, v2, v6

    .line 97
    .local v0, "b":B
    if-eqz v0, :cond_3

    .line 98
    const/4 v1, 0x0

    .line 103
    .end local v0    # "b":B
    :cond_1
    if-nez v1, :cond_2

    .line 104
    new-instance v6, Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-direct {v6, v2}, Lcom/alipay/android/h5appmanager/tar/TarEntry;-><init>([B)V

    iput-object v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    .line 107
    :cond_2
    iget-object v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    return-object v6

    .line 96
    .restart local v0    # "b":B
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public isDefaultSkip()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->defaultSkip:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    .line 32
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    new-array v0, v2, [B

    .line 43
    .local v0, "buf":[B
    invoke-virtual {p0, v0, v3, v2}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([BII)I

    move-result v1

    .line 45
    .local v1, "res":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 46
    aget-byte v2, v0, v3

    and-int/lit16 v1, v2, 0xff

    .line 49
    .end local v1    # "res":I
    :cond_0
    return v1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 54
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    if-eqz v2, :cond_2

    .line 55
    iget-wide v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    iget-object v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-virtual {v4}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-virtual {v2}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    int-to-long v4, p3

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-virtual {v2}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 62
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 64
    .local v0, "br":I
    if-eq v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentEntry:Lcom/alipay/android/h5appmanager/tar/TarEntry;

    if-eqz v1, :cond_3

    .line 66
    iget-wide v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->currentFileSize:J

    .line 69
    :cond_3
    iget-wide v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultSkip(Z)V
    .locals 0
    .param p1, "defaultSkip"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->defaultSkip:Z

    .line 189
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x800

    const-wide/16 v0, 0x0

    .line 155
    iget-boolean v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->defaultSkip:Z

    if-eqz v6, :cond_1

    .line 158
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 159
    .local v0, "bs":J
    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    .line 180
    .end local v0    # "bs":J
    :cond_0
    :goto_0
    return-wide v0

    .line 164
    :cond_1
    cmp-long v6, p1, v0

    if-lez v6, :cond_0

    .line 168
    move-wide v2, p1

    .line 169
    .local v2, "left":J
    const/16 v6, 0x800

    new-array v5, v6, [B

    .line 171
    .local v5, "sBuff":[B
    :goto_1
    cmp-long v6, v2, v0

    if-lez v6, :cond_3

    .line 172
    const/4 v10, 0x0

    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    move-wide v6, v2

    :goto_2
    long-to-int v6, v6

    invoke-virtual {p0, v5, v10, v6}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([BII)I

    move-result v4

    .line 174
    .local v4, "res":I
    if-ltz v4, :cond_3

    .line 177
    int-to-long v6, v4

    sub-long/2addr v2, v6

    .line 178
    goto :goto_1

    .end local v4    # "res":I
    :cond_2
    move-wide v6, v8

    .line 172
    goto :goto_2

    .line 180
    :cond_3
    sub-long v0, p1, v2

    goto :goto_0
.end method

.method protected skipPad()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 141
    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->bytesRead:J

    const-wide/16 v8, 0x200

    rem-long/2addr v6, v8

    long-to-int v2, v6

    .line 143
    .local v2, "extra":I
    if-lez v2, :cond_0

    .line 144
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "bs":J
    :goto_0
    rsub-int v3, v2, 0x200

    int-to-long v6, v3

    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 146
    rsub-int v3, v2, 0x200

    int-to-long v6, v3

    sub-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->skip(J)J

    move-result-wide v4

    .line 147
    .local v4, "res":J
    add-long/2addr v0, v4

    .line 148
    goto :goto_0

    .line 151
    .end local v0    # "bs":J
    .end local v2    # "extra":I
    .end local v4    # "res":J
    :cond_0
    return-void
.end method
