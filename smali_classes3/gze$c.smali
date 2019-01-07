.class Lgze$c;
.super Lgze$b;
.source "BizErrorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field h:Ljava/lang/Throwable;

.field i:Ljava/lang/Thread;

.field j:Ljava/lang/String;

.field k:Lgzh;

.field final synthetic l:Lgze;


# direct methods
.method constructor <init>(Lgze;Lgzh;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 13
    .param p1, "this$0"    # Lgze;
    .param p2, "exceptionModule"    # Lgzh;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "reportName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lgze$c;->l:Lgze;

    invoke-direct {p0, p1}, Lgze$b;-><init>(Lgze;)V

    .line 332
    iput-object p2, p0, Lgze$c;->k:Lgzh;

    .line 334
    const/4 v8, 0x0

    iput-object v8, p0, Lgze$c;->h:Ljava/lang/Throwable;

    .line 335
    iget-object v8, p2, Lgzh;->j:Ljava/lang/Thread;

    iput-object v8, p0, Lgze$c;->i:Ljava/lang/Thread;

    .line 336
    iget-object v8, p2, Lgzh;->i:Ljava/lang/String;

    iput-object v8, p0, Lgze$c;->j:Ljava/lang/String;

    .line 337
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    if-nez v8, :cond_0

    .line 338
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    .line 340
    :cond_0
    iget-object v6, p2, Lgzh;->c:Ljava/lang/String;

    .line 341
    .local v6, "exceptionId":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 342
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    const-string/jumbo v9, "exceptionId"

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_1
    iget-object v5, p2, Lgzh;->d:Ljava/lang/String;

    .line 345
    .local v5, "exceptionCode":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 346
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    const-string/jumbo v9, "exceptionCode"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_2
    iget-object v7, p2, Lgzh;->e:Ljava/lang/String;

    .line 349
    .local v7, "exceptionVersion":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 350
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    const-string/jumbo v9, "exceptionVersion"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    iget-object v2, p2, Lgzh;->f:Ljava/lang/String;

    .line 353
    .local v2, "exceptionArg1":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 354
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    const-string/jumbo v9, "exceptionArg1"

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_4
    iget-object v3, p2, Lgzh;->g:Ljava/lang/String;

    .line 357
    .local v3, "exceptionArg2":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 358
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    const-string/jumbo v9, "exceptionArg2"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_5
    iget-object v8, p0, Lgze$c;->h:Ljava/lang/Throwable;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lgze$c;->j:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 366
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    const-string/jumbo v9, "exceptionDetail"

    iget-object v10, p0, Lgze$c;->j:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_6
    iget-object v4, p2, Lgzh;->h:Ljava/util/Map;

    .line 369
    .local v4, "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 370
    iget-object v8, p0, Lgze$c;->e:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 373
    :cond_7
    move-object/from16 v0, p3

    iput-object v0, p0, Lgze$c;->d:Landroid/content/Context;

    .line 374
    move-object/from16 v0, p4

    iput-object v0, p0, Lgze$c;->b:Ljava/lang/String;

    .line 375
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lgze$c;->c:J

    .line 376
    move-object/from16 v0, p7

    iput-object v0, p0, Lgze$c;->f:Ljava/lang/String;

    .line 377
    return-void
.end method

.method private static a(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 10
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    const/4 v4, 0x0

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v5, "Thread Name: \'%s\'\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string/jumbo v5, "\"%s\" prio=%d tid=%d %s\n"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 447
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v8

    aput-object v8, v6, v7

    .line 446
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 449
    .local v2, "stackTraces":[Ljava/lang/StackTraceElement;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 450
    .local v1, "stackTraceElement":Ljava/lang/StackTraceElement;
    const-string/jumbo v6, "\tat %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v2    # "stackTraces":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MotuCrashAdapter"

    const-string/jumbo v5, "dumpThread"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lgze$c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Lgze$c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final i()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lgzg;->a()Lgzg;

    move-result-object v5

    iget-object v6, p0, Lgze$c;->d:Landroid/content/Context;

    .line 1086
    iget-object v7, v5, Lgzg;->c:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1087
    iget-object v3, v5, Lgzg;->c:Ljava/lang/String;

    .line 394
    .local v3, "processName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "Process Name: \'%s\' \n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v5, p0, Lgze$c;->i:Ljava/lang/Thread;

    if-eqz v5, :cond_3

    .line 396
    const-string/jumbo v5, "Thread Name: \'%s\' \n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lgze$c;->i:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :goto_1
    const-string/jumbo v5, "Back traces starts.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    const/4 v0, 0x0

    .line 403
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v5, p0, Lgze$c;->h:Ljava/lang/Throwable;

    if-eqz v5, :cond_4

    .line 404
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    iget-object v5, p0, Lgze$c;->h:Ljava/lang/Throwable;

    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 406
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 416
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_3
    invoke-static {v0}, Lhut;->a(Ljava/io/Closeable;)V

    .line 418
    :goto_3
    const-string/jumbo v5, "Back traces end.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-static {}, Lgze$c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 424
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "processName":Ljava/lang/String;
    :goto_4
    iget-object v5, p0, Lgze$c;->i:Ljava/lang/Thread;

    if-eqz v5, :cond_0

    .line 426
    :try_start_4
    iget-object v5, p0, Lgze$c;->i:Ljava/lang/Thread;

    invoke-static {v5}, Lgze$c;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 432
    :cond_0
    :goto_5
    invoke-static {}, Lgze$c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1089
    :cond_1
    :try_start_5
    invoke-static {}, Lhut;->a()Ljava/lang/String;

    move-result-object v3

    .line 1090
    invoke-static {v3}, Lhvb;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1091
    invoke-static {v6}, Lhut;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    :cond_2
    iput-object v3, v5, Lgzg;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MotuCrashAdapter"

    const-string/jumbo v6, "write throwable"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 398
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "processName":Ljava/lang/String;
    :cond_3
    :try_start_6
    const-string/jumbo v5, "Thread Name: \'%s\' \n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "adapter no thread name"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 407
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_7
    iget-object v5, p0, Lgze$c;->j:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 408
    iget-object v5, p0, Lgze$c;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 413
    :catch_1
    move-exception v2

    .line 414
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    const-string/jumbo v5, "MotuCrashAdapter"

    const-string/jumbo v6, "print throwable"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 416
    :try_start_9
    invoke-static {v0}, Lhut;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_a
    const-string/jumbo v5, "\u65e0\u5185\u5bb9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 416
    :catchall_0
    move-exception v5

    :goto_7
    :try_start_b
    invoke-static {v0}, Lhut;->a(Ljava/io/Closeable;)V

    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 427
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "processName":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 428
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MotuCrashAdapter"

    const-string/jumbo v6, "write thread"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "processName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 413
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method
