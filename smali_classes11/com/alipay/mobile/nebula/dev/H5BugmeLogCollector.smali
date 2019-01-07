.class public Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;
.super Ljava/lang/Object;
.source "H5BugmeLogCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5BugmeLogCollector"

.field private static final UPLOAD_TAG:Ljava/lang/String; = "NebulaDebug:dumpDebugData"

.field private static dumpLimit:I

.field private static hasReadFile:Z

.field private static needDump:Z

.field private static sFilePath:Ljava/lang/String;

.field private static sLastFlushAppLogTime:J

.field private static final sQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sLastFlushAppLogTime:J

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sFilePath:Ljava/lang/String;

    .line 38
    sput-boolean v2, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->needDump:Z

    .line 39
    sput-boolean v2, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 40
    const/16 v0, 0x12c

    sput v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->dumpLimit:I

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->initConfig()V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getLockFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enabled()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->needDump:Z

    return v0
.end method

.method public static enqueueLog(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p0, "logObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sLastFlushAppLogTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 81
    const-string/jumbo v1, "NebulaDebug:dumpDebugData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    sget-object v2, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 85
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    if-nez v1, :cond_3

    .line 86
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->prepare()V

    .line 89
    :cond_3
    sget-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    sget v3, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->dumpLimit:I

    if-lt v1, v3, :cond_4

    .line 90
    sget-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 92
    :cond_4
    sget-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 93
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static flushAppLog()V
    .locals 10

    .prologue
    .line 134
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    .local v1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "size":I
    .local v4, "start":J
    :goto_0
    return-void

    .line 138
    .end local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "size":I
    .end local v4    # "start":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 139
    .restart local v4    # "start":J
    sput-wide v4, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sLastFlushAppLogTime:J

    .line 140
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->readLog()Ljava/util/List;

    move-result-object v1

    .line 141
    .restart local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 142
    .restart local v2    # "size":I
    :goto_1
    if-lez v2, :cond_2

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "log":Ljava/lang/String;
    const-string/jumbo v6, "NebulaDebug:dumpDebugData"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 141
    .end local v0    # "log":Ljava/lang/String;
    .end local v2    # "size":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 147
    .restart local v2    # "size":I
    :cond_2
    const-string/jumbo v3, "H5BugmeLogCollector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "flush applog "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cost : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static flushFile()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string/jumbo v0, "H5BugmeLogCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "flush "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bugme logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static getFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    sget-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 190
    sget-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sFilePath:Ljava/lang/String;

    .line 197
    .local v0, "fpath":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 192
    .end local v0    # "fpath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/h5/bugme/dump-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/filecache/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "fpath":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    .line 197
    :cond_1
    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getLockFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initConfig()V
    .locals 5

    .prologue
    .line 47
    const-string/jumbo v3, "h5_bug_me_force_no_dump"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    :goto_0
    return-void

    .line 50
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 51
    .restart local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_0

    .line 54
    const-string/jumbo v3, "h5_bugmeConfig"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    const-string/jumbo v3, "H5BugmeLogCollector"

    const-string/jumbo v4, "not get config"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    :try_start_0
    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 61
    .local v1, "jo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "dump"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->needDump:Z

    .line 62
    const-string/jumbo v3, "dumpLimit"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->dumpLimit:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "H5BugmeLogCollector"

    const-string/jumbo v4, "config init error"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static prepare()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 169
    .local v4, "start":J
    const/4 v0, 0x0

    .line 170
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Lcom/alipay/mobile/nebula/process/ProcessLock;

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getLockFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/alipay/mobile/nebula/process/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, "lock":Lcom/alipay/mobile/nebula/process/ProcessLock;
    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/process/ProcessLock;->lock()V

    .line 173
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 176
    sget-object v7, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-interface {v7, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 178
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v1

    .line 179
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v6, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "H5BugmeLogCollector"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "read bugme local log file error"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    sput-boolean v10, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 183
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 184
    const-string/jumbo v7, "H5BugmeLogCollector"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "read log file cost: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 181
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    sput-boolean v10, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 183
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 184
    const-string/jumbo v7, "H5BugmeLogCollector"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "read log file cost: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 185
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 181
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    sput-boolean v10, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 183
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 184
    const-string/jumbo v8, "H5BugmeLogCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "read log file cost: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 181
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 178
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method public static readLog()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 158
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    if-nez v0, :cond_1

    .line 160
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->prepare()V

    .line 163
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
