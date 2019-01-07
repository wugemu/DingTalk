.class final Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector$1;
.super Ljava/lang/Object;
.source "H5BugmeLogCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->flushFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 108
    .local v4, "start":J
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->readLog()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v6, 0x0

    .line 113
    .local v6, "writer":Ljava/io/BufferedWriter;
    new-instance v0, Lcom/alipay/mobile/nebula/process/ProcessLock;

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/alipay/mobile/nebula/process/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "lock":Lcom/alipay/mobile/nebula/process/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/process/ProcessLock;->lock()V

    .line 116
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->access$100()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    .local v1, "log":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 121
    .end local v1    # "log":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 122
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .local v3, "t":Ljava/lang/Throwable;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_2
    const-string/jumbo v8, "H5BugmeLogCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "write bugme log file error "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 126
    const-string/jumbo v8, "H5BugmeLogCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "flush log cost: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 126
    const-string/jumbo v8, "H5BugmeLogCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "flush log cost: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 126
    const-string/jumbo v9, "H5BugmeLogCollector"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "flush log cost: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 124
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 121
    :catch_1
    move-exception v3

    goto/16 :goto_2
.end method
