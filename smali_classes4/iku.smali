.class public abstract Liku;
.super Likr;
.source "FileAppender.java"


# instance fields
.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z


# direct methods
.method public constructor <init>(Lijz;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Likr;-><init>(Lijz;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 35
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Liku;->c()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 1261
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1265
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v1, v2, v3}, Lilu;->a(Ljava/io/File;[BZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    :try_start_4
    iget-boolean v1, p0, Liku;->q:Z

    if-nez v1, :cond_1

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Liku;->q:Z

    .line 44
    const-string/jumbo v1, "Appender"

    iget-object v2, p0, Liku;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a([BII)Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    monitor-enter p0

    .line 54
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3, p3}, Lima;->a([BII)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 61
    :goto_0
    if-nez v3, :cond_2

    .line 102
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 55
    :catch_0
    move-exception v3

    .line 56
    :try_start_1
    iget-boolean v4, p0, Liku;->r:Z

    if-nez v4, :cond_1

    .line 57
    const/4 v4, 0x1

    iput-boolean v4, p0, Liku;->r:Z

    .line 58
    const-string/jumbo v4, "Appender"

    iget-object v5, p0, Liku;->b:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v3, v2

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lilv;->a()Lilv;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v4, v3, v5, v6}, Lilv;->a([BII)[B

    move-result-object v4

    .line 66
    invoke-static {}, Lilv;->a()Lilv;

    move-result-object v3

    .line 2071
    iget-object v5, v3, Lilv;->a:[B

    .line 68
    if-eqz v4, :cond_3

    if-nez v5, :cond_4

    .line 69
    :cond_3
    iget-boolean v1, p0, Liku;->s:Z

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Liku;->s:Z

    .line 71
    const-string/jumbo v1, "Appender"

    const-string/jumbo v2, "HybridEncryption.encrypt occured error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_4
    :try_start_2
    array-length v3, v5

    const/16 v6, 0x7fff

    if-le v3, v6, :cond_5

    .line 76
    const-string/jumbo v1, "Appender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the length of secure seed is too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p0}, Liku;->c()Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 83
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 86
    :cond_6
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 87
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :try_start_4
    array-length v2, v4

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    array-length v2, v5

    int-to-short v2, v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 92
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 93
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 94
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    move v0, v1

    .line 95
    goto/16 :goto_1

    .line 97
    :catch_1
    move-exception v1

    .line 98
    :goto_3
    :try_start_6
    iget-boolean v3, p0, Liku;->t:Z

    if-nez v3, :cond_7

    .line 99
    const/4 v3, 0x1

    iput-boolean v3, p0, Liku;->t:Z

    .line 100
    const-string/jumbo v3, "Appender"

    iget-object v4, p0, Liku;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 105
    :cond_7
    if-eqz v2, :cond_0

    .line 107
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 105
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_8

    .line 107
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 110
    :cond_8
    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_5

    .line 105
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_4

    .line 97
    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method protected abstract c()Ljava/io/File;
.end method
