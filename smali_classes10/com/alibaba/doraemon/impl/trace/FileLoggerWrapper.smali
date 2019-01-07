.class public Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
.super Ljava/lang/Object;
.source "FileLoggerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$FLExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileLoggerWrapper"

.field private static final TIME_CLOSE_DELAY:I = 0x1d4c0

.field private static final sFLCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private crashListener:Lcom/alibaba/doraemon/crash/CrashHandler;

.field private mCategory:Ljava/lang/String;

.field private mCloseRunnable:Ljava/lang/Runnable;

.field private mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->sFLCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$1;-><init>(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->crashListener:Lcom/alibaba/doraemon/crash/CrashHandler;

    .line 54
    new-instance v1, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$2;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$2;-><init>(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mCloseRunnable:Ljava/lang/Runnable;

    .line 144
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mCategory:Ljava/lang/String;

    .line 145
    new-instance v1, Lcom/alibaba/doraemon/log/FileLogger;

    new-instance v2, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$FLExecutor;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mCategory:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$FLExecutor;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mCategory:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v3, p1}, Lcom/alibaba/doraemon/log/FileLogger;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    .line 146
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/log/FileLogger;->setCachedNumInSDDir(I)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    new-instance v2, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$4;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$4;-><init>(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/log/FileLogger;->setBytePool(Lcom/alibaba/doraemon/log/FileLogger$BytePool;)V

    .line 158
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/log/FileLogger;->closeSeriallySupport()V

    .line 160
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mHandler:Landroid/os/Handler;

    .line 161
    const-string/jumbo v1, "CRASHMONITOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/crash/CrashMonitor;

    .line 162
    .local v0, "crashMonitor":Lcom/alibaba/doraemon/crash/CrashMonitor;
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->crashListener:Lcom/alibaba/doraemon/crash/CrashHandler;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/crash/CrashMonitor;->registerCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V

    .line 164
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;)Lcom/alibaba/doraemon/log/FileLogger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->sFLCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;)Lcom/alibaba/doraemon/crash/CrashHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->crashListener:Lcom/alibaba/doraemon/crash/CrashHandler;

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/io/OutputStream;

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->readLogFormDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/io/OutputStream;)V

    return-void
.end method

.method private delayClose()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mCloseRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method

.method private static getCloneAllThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 207
    .local v0, "cloneThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "cloneThread"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 208
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 209
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 210
    return-object v0
.end method

.method public static getFileLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string/jumbo p2, "_default"

    .line 74
    :cond_0
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->sFLCache:Ljava/util/Map;

    monitor-enter v2

    .line 75
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->sFLCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    .line 76
    .local v0, "logger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    .end local v0    # "logger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .restart local v0    # "logger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    sget-object v1, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->sFLCache:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    monitor-exit v2

    .line 83
    return-object v0

    .line 81
    .end local v0    # "logger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static readLogFormDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/io/OutputStream;)V
    .locals 16
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "fromTime"    # Ljava/lang/String;
    .param p2, "toTime"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 167
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 169
    .local v7, "files":[Ljava/io/File;
    if-eqz v7, :cond_4

    array-length v12, v7

    if-lez v12, :cond_4

    .line 170
    array-length v13, v7

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_4

    aget-object v6, v7, v12

    .line 171
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 172
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v6, v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->readLogFormDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 170
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 175
    :cond_0
    const/16 v14, 0x800

    invoke-static {v14}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    .line 178
    .local v4, "buffer":[B
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, "totalName":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "."

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "timePrefix":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-lez v14, :cond_2

    .line 193
    :cond_1
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_1

    .line 185
    :cond_2
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 186
    .local v8, "is":Ljava/io/FileInputStream;
    :goto_2
    const/4 v14, -0x1

    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .local v9, "readLen":I
    if-eq v14, v9, :cond_3

    .line 187
    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v14, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 190
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v9    # "readLen":I
    .end local v10    # "timePrefix":Ljava/lang/String;
    .end local v11    # "totalName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 191
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "readLen":I
    .restart local v10    # "timePrefix":Ljava/lang/String;
    .restart local v11    # "totalName":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_1

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v9    # "readLen":I
    .end local v10    # "timePrefix":Ljava/lang/String;
    .end local v11    # "totalName":Ljava/lang/String;
    :catchall_0
    move-exception v12

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v12

    .line 198
    .end local v4    # "buffer":[B
    .end local v6    # "file":Ljava/io/File;
    :cond_4
    return-void
.end method


# virtual methods
.method public cloneAllLog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILjava/io/OutputStream;)V
    .locals 10
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/util/Date;
    .param p3, "to"    # Ljava/util/Date;
    .param p4, "level"    # I
    .param p5, "os"    # Ljava/io/OutputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string/jumbo v8, "FileLoggerWrapper"

    monitor-enter v8

    .line 107
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->getCloneAllThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    new-instance v0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;-><init>(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILjava/io/OutputStream;)V

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    const-string/jumbo v0, "FileLoggerWrapper"

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_1
    :try_start_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 137
    :catch_0
    move-exception v7

    .line 138
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public cloneLog(Ljava/util/Date;Ljava/util/Date;ILjava/io/OutputStream;)V
    .locals 1
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;
    .param p3, "level"    # I
    .param p4, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/doraemon/log/FileLogger;->cloneLog(Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V

    .line 93
    return-void
.end method

.method public declared-synchronized syncforceFlush()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/log/FileLogger;->syncforceFlush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public traceLog([BI)V
    .locals 1
    .param p1, "content"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->delayClose()V

    .line 88
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->mFileLogger:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/log/FileLogger;->log([BI)V

    .line 89
    return-void
.end method
