.class public Lcom/alibaba/doraemon/impl/trace/TraceImpl2;
.super Lcom/alibaba/doraemon/impl/trace/TraceImpl;
.source "TraceImpl2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;
    }
.end annotation


# static fields
.field public static final LF_BYTES:[B

.field public static final LOG_ITEM_SEPARATOR:[B

.field private static final TAG:Ljava/lang/String; = "Trace2"

.field private static final TRACE_DIR:Ljava/lang/String; = "trace"

.field private static final WRITE_TO_FILE_LOG_B:Ljava/lang/String; = "B"

.field private static final WRITE_TO_FILE_LOG_E:Ljava/lang/String; = "E"

.field private static final WRITE_TO_FILE_LOG_I:Ljava/lang/String; = "I"

.field private static final WRITE_TO_FILE_LOG_T:Ljava/lang/String; = "T"

.field private static volatile sClose:Z

.field protected static sTraceIdTransmitter:Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;

.field private static sTraceRefChecker:Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;

.field private static sWriteLogTaskQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

.field private mTraceId:Ljava/lang/String;

.field private mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LOG_ITEM_SEPARATOR:[B

    .line 39
    const-string/jumbo v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LF_BYTES:[B

    .line 41
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sTraceIdTransmitter:Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;

    .line 42
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sTraceRefChecker:Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sWriteLogTaskQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/trace/TraceImpl;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mCategory:Ljava/lang/String;

    .line 331
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sClose:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sWriteLogTaskQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/trace/TraceImpl2;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/trace/TraceImpl2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->doBuildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "traceID"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    if-nez p3, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sWriteLogTaskQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;-><init>(Lcom/alibaba/doraemon/impl/trace/TraceImpl2;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private varargs buildLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 9
    .param p1, "traceID"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 261
    const-string/jumbo v2, ""

    .line 262
    .local v2, "mid":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 263
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 265
    .local v5, "throwable":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 266
    array-length v6, p3

    packed-switch v6, :pswitch_data_0

    .line 276
    aget-object v1, p3, v7

    .line 277
    aget-object v2, p3, v8

    .line 278
    const/4 v6, 0x2

    aget-object v5, p3, v6

    .line 283
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 284
    .local v3, "pbb":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    const/4 v4, 0x0

    .line 286
    .local v4, "pbbOutputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    if-eqz v1, :cond_2

    .line 289
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v6

    const/16 v7, 0x400

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newOutputStream(I)Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    move-result-object v4

    .line 291
    if-eqz v4, :cond_1

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getDateWithMillis(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 293
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LOG_ITEM_SEPARATOR:[B

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 295
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LOG_ITEM_SEPARATOR:[B

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 297
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LOG_ITEM_SEPARATOR:[B

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 299
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LOG_ITEM_SEPARATOR:[B

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 300
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LOG_ITEM_SEPARATOR:[B

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 301
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 302
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LOG_ITEM_SEPARATOR:[B

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 303
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 304
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->LF_BYTES:[B

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 306
    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 313
    :cond_1
    if-eqz v4, :cond_2

    .line 314
    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 319
    :cond_2
    :goto_1
    return-object v3

    .line 268
    .end local v3    # "pbb":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v4    # "pbbOutputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    :pswitch_0
    aget-object v1, p3, v7

    .line 269
    goto :goto_0

    .line 271
    :pswitch_1
    aget-object v1, p3, v7

    .line 272
    aget-object v2, p3, v8

    .line 273
    goto :goto_0

    .line 310
    .restart local v3    # "pbb":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .restart local v4    # "pbbOutputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    if-eqz v4, :cond_2

    .line 314
    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    goto :goto_1

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_3

    .line 314
    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    :cond_3
    throw v6

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sClose:Z

    .line 70
    return-void
.end method

.method private varargs doBuildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "traceID"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    const/4 v4, 0x0

    .line 352
    .local v4, "traceBytes":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->buildLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 355
    .local v1, "pbb":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    if-eqz v1, :cond_1

    .line 357
    :try_start_1
    invoke-interface {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v2

    .line 358
    .local v2, "pbbSize":I
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    .line 359
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v5, v4, v6, v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-virtual {v5, v4, v2}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->traceLog([BI)V
    :try_end_2
    .catch Lcom/alibaba/doraemon/log/FileLogger$FLClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    :goto_0
    if-eqz v4, :cond_0

    .line 372
    :try_start_3
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 374
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 384
    .end local v1    # "pbb":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v2    # "pbbSize":I
    :cond_1
    return-void

    .line 363
    .restart local v1    # "pbb":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .restart local v2    # "pbbSize":I
    :catch_0
    move-exception v5

    :try_start_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "trace"

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mCategory:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->getFileLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 365
    :try_start_5
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-virtual {v5, v4, v2}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->traceLog([BI)V
    :try_end_5
    .catch Lcom/alibaba/doraemon/log/FileLogger$FLClosedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 366
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e1":Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
    :try_start_6
    invoke-virtual {v0}, Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 371
    .end local v0    # "e1":Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
    .end local v2    # "pbbSize":I
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 372
    :try_start_7
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 374
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    throw v5
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 379
    .end local v1    # "pbb":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :catch_2
    move-exception v3

    .line 380
    .local v3, "t":Ljava/lang/Throwable;
    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 381
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$1;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$1;-><init>()V

    .line 64
    .local v0, "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->addListener(Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;)V

    .line 65
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->initConsumerThread()V

    .line 66
    return-void
.end method

.method private static initConsumerThread()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->getTraceThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 75
    .local v0, "customerThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$2;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method


# virtual methods
.method public bridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeA"    # Ljava/lang/String;
    .param p2, "nodeB"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You should call startTraceLog firstly !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    const-string/jumbo v1, "B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void
.end method

.method public bridgeFrom(Ljava/lang/String;)V
    .locals 5
    .param p1, "nodeA"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You should call startTraceLog firstly !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    const-string/jumbo v1, "B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    :cond_1
    return-void
.end method

.method public bridgeTo(Ljava/lang/String;)V
    .locals 5
    .param p1, "nodeB"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You should call startTraceLog firstly !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    const-string/jumbo v1, "B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    :cond_1
    return-void
.end method

.method public endTrace()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sTraceRefChecker:Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->endRef(Lcom/alibaba/doraemon/impl/trace/TraceImpl;)V

    .line 125
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decRef()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 129
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .line 132
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "t":Ljava/lang/Throwable;
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs error([Ljava/lang/String;)V
    .locals 2
    .param p1, "msgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You should call startTraceLog firstly !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    const-string/jumbo v1, "E"

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fill2OutputStream(Ljava/io/OutputStream;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "from"    # Ljava/util/Date;
    .param p5, "to"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    const/4 v2, 0x1

    if-le p3, v2, :cond_0

    .line 230
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the trace level is not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "t":Ljava/lang/Throwable;
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 238
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 232
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "trace"

    invoke-static {v2, v3, p2}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->getFileLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    move-result-object v1

    .line 233
    .local v1, "tmpFileLogger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1, p4, p5, p3, p1}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->cloneLog(Ljava/util/Date;Ljava/util/Date;ILjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    .end local v1    # "tmpFileLogger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    :cond_1
    return-void
.end method

.method public fillAll2OutputStream(Ljava/lang/String;Ljava/io/OutputStream;ILjava/util/Date;Ljava/util/Date;)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "level"    # I
    .param p4, "from"    # Ljava/util/Date;
    .param p5, "to"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "trace"

    invoke-static {v0, v1, p1}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->getFileLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->cloneAllLog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    return-void

    .line 253
    :catch_0
    move-exception v6

    .line 254
    .local v6, "t":Ljava/lang/Throwable;
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs info([Ljava/lang/String;)V
    .locals 2
    .param p1, "msgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You should call startTraceLog firstly !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    const-string/jumbo v1, "I"

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public obtainMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 222
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->obtainMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public varargs startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "context"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mCategory:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    if-nez v2, :cond_0

    .line 95
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "trace"

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mCategory:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->getFileLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mFileLogger:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    if-eqz v2, :cond_2

    .line 116
    :cond_1
    return-void

    .line 100
    :cond_2
    const/4 v2, 0x0

    const-string/jumbo v3, "s"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .line 101
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->getTraceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->incRef()I

    .line 103
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sTraceRefChecker:Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    invoke-virtual {v2, p1, v3, p0}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->startRef(Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/TraceIdReference;Lcom/alibaba/doraemon/impl/trace/TraceImpl;)V

    .line 106
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->sTraceRefChecker:Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->checkRef()Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "errRefs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/trace/TraceIdReference;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .line 108
    .local v1, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decRef()I

    .line 110
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "traceErr: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should call endTrace !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->mTraceId:Ljava/lang/String;

    const-string/jumbo v4, "T"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "traceErr: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " should call endTrace !"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public wrapCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->wrapCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method

.method public wrapRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 212
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->wrapRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
