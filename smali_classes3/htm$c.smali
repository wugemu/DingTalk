.class public abstract Lhtm$c;
.super Ljava/lang/Object;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:J

.field h:Landroid/content/Context;

.field i:Lhtn;

.field j:Lhtd;

.field k:Ljava/io/OutputStream;

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:J

.field n:J

.field final synthetic o:Lhtm;


# direct methods
.method public constructor <init>(Lhtm;)V
    .locals 0
    .param p1, "this$0"    # Lhtm;

    .prologue
    .line 190
    iput-object p1, p0, Lhtm$c;->o:Lhtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 13
    .param p1, "logname"    # Ljava/lang/String;
    .param p2, "limit"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v2, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "logcat"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    const-string/jumbo v8, "-d"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-static {p1}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 367
    const-string/jumbo v8, "logcat main: \n"

    invoke-virtual {p0, v8}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 374
    :goto_0
    const-string/jumbo v8, "-v"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string/jumbo v8, "threadtime"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    if-gez p2, :cond_1

    .line 378
    const-string/jumbo v8, "[DEBUG] custom java logcat lines count is 0!\n"

    invoke-virtual {p0, v8}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 9248
    :goto_1
    const-string/jumbo v8, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v8}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 414
    return-void

    .line 369
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "logcat "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 370
    const-string/jumbo v8, "-b"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_1
    const-string/jumbo v8, "-t"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const/4 v5, 0x0

    .line 384
    .local v5, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 390
    :goto_2
    if-nez v5, :cond_2

    .line 391
    const-string/jumbo v8, "[DEBUG] exec logcat failed!\n"

    invoke-virtual {p0, v8}, Lhtm$c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 386
    :catch_0
    move-exception v3

    .line 387
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "exec logcat"

    invoke-static {v8, v3}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 393
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    .local v6, "total":I
    const/4 v7, 0x0

    .line 394
    .local v7, "wrote":I
    const/4 v0, 0x0

    .line 396
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 399
    add-int/lit8 v6, v6, 0x1

    .line 400
    if-ge v7, p2, :cond_3

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 408
    :cond_4
    invoke-static {v1}, Lhtr;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 410
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_4
    const-string/jumbo v8, "[DEBUG] Read %d lines, wrote %d lines.\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lhtm$c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 405
    :catch_1
    move-exception v3

    .line 406
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    const-string/jumbo v8, "print log."

    invoke-static {v8, v3}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    invoke-static {v0}, Lhtr;->a(Ljava/io/Closeable;)V

    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_6
    invoke-static {v0}, Lhtr;->a(Ljava/io/Closeable;)V

    throw v8

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 405
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_5
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 219
    const/4 v2, 0x0

    new-array v0, v2, [B

    .line 221
    .local v0, "bytes":[B
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    iget-wide v2, p0, Lhtm$c;->m:J

    array-length v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lhtm$c;->m:J

    .line 233
    :try_start_1
    iget-object v2, p0, Lhtm$c;->k:Ljava/io/OutputStream;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 234
    iget-wide v2, p0, Lhtm$c;->n:J

    array-length v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lhtm$c;->n:J

    .line 235
    iget-object v2, p0, Lhtm$c;->k:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :goto_1
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write."

    invoke-static {v2, v1}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 237
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write."

    invoke-static {v2, v1}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    .line 1253
    const-string/jumbo v0, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n"

    .line 1254
    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1255
    const-string/jumbo v0, "Basic Information: \'pid: %d/tid: %d/logver: 2/time: %s/cpu: %s/cpu hardware: %s\'\n"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 1256
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, p0, Lhtm$c;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    aput-object v2, v1, v8

    .line 1255
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1259
    const-string/jumbo v0, "Mobile Information: \'model: %s/version: %s/sdk: %d\'\n"

    new-array v1, v7, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v2, v1, v5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1259
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Build fingerprint: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1263
    const-string/jumbo v0, "Runtime Information: \'start: %s/maxheap: %s\'\n"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lhtm$c;->i:Lhtn;

    const-string/jumbo v3, "STARTUP_TIME"

    .line 1264
    invoke-virtual {v2, v3}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1265
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1263
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v0, "Application Information: \'version: %s/subversion: %s/buildseq: %s\'\n"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lhtm$c;->i:Lhtn;

    const-string/jumbo v3, "APP_VERSION"

    .line 1267
    invoke-virtual {v2, v3}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lhtm$c;->i:Lhtn;

    const-string/jumbo v3, "APP_SUBVERSION"

    .line 1268
    invoke-virtual {v2, v3}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lhtm$c;->i:Lhtn;

    const-string/jumbo v3, "APP_BUILD"

    .line 1269
    invoke-virtual {v2, v3}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1266
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1270
    const-string/jumbo v0, "%s Information: \'version: %s/nativeseq: %s/javaseq: %s/target: %s\'\n"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "CrashSDK"

    aput-object v2, v1, v4

    const-string/jumbo v2, "1.0.0.0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "160509105620"

    aput-object v2, v1, v6

    const-string/jumbo v2, ""

    aput-object v2, v1, v7

    const-string/jumbo v2, "beta"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Report Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhtm$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UUID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Log Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhtm$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 2248
    const-string/jumbo v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lhtm$c;->a()V

    .line 3242
    const-string/jumbo v0, "Full: %d bytes, write: %d bytes, limit: %d bytes, reject: %d bytes.\n"

    new-array v1, v8, [Ljava/lang/Object;

    iget-wide v2, p0, Lhtm$c;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lhtm$c;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-wide/16 v2, 0x0

    .line 3243
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    .line 3242
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 3244
    const-string/jumbo v0, "log end: %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lhtr;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 248
    const-string/jumbo v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method protected final d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 281
    :try_start_0
    const-string/jumbo v4, "meminfo:\n"

    invoke-virtual {p0, v4}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lhtr;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lhua;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "meminfo":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 3248
    const-string/jumbo v4, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v4}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1    # "meminfo":Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string/jumbo v4, "status:\n"

    invoke-virtual {p0, v4}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lhtr;->d()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lhua;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "status":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 4248
    const-string/jumbo v4, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v4}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .end local v2    # "status":Ljava/lang/String;
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "virtual machine:\nMaxMemory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " TotalMemory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 298
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " FreeMemory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 299
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "vmMeminfo":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5248
    .end local v3    # "vmMeminfo":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v4}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 305
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "write meminfo."

    invoke-static {v4, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 294
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "write status."

    invoke-static {v4, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 302
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "write virtual machine info."

    invoke-static {v4, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 308
    const-string/jumbo v0, "storageinfo:\n"

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lhtm$c;->h:Landroid/content/Context;

    invoke-static {v0}, Lhtr;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 6248
    const-string/jumbo v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 314
    const-string/jumbo v0, "appliction meminfo:\n"

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lhtm$c;->h:Landroid/content/Context;

    invoke-static {v0}, Lhtr;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 7248
    const-string/jumbo v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v0}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method protected final g()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 320
    iget-object v6, p0, Lhtm$c;->j:Lhtd;

    const-string/jumbo v7, "Configuration.fileDescriptorLimit"

    const/16 v8, 0x384

    invoke-virtual {v6, v7, v8}, Lhtd;->a(Ljava/lang/String;I)I

    move-result v4

    .line 321
    .local v4, "writeLimit":I
    const/4 v2, 0x0

    .line 323
    .local v2, "fds":[Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/proc/self/fd"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    const-string/jumbo v6, "opened file count: %d, write limit: %d.\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    array-length v6, v2

    if-lt v6, v4, :cond_2

    .line 333
    const-string/jumbo v6, "opened files:\n"

    invoke-virtual {p0, v6}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 337
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_2
    array-length v6, v2

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 338
    .local v1, "fd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string/jumbo v7, " -> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 326
    .end local v1    # "fd":Ljava/io/File;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    const-string/jumbo v6, "[DEBUG] listFiles failed!\n"

    invoke-virtual {p0, v6}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "print file descriptor."

    invoke-static {v6, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 344
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v5, "print file descriptor."

    invoke-static {v5, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 8248
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    const-string/jumbo v5, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v5}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 352
    return-void

    .line 348
    :catch_2
    move-exception v0

    .line 349
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "print file descriptor."

    invoke-static {v5, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected final h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 355
    iget-object v2, p0, Lhtm$c;->j:Lhtd;

    const-string/jumbo v3, "Configuration.mainLogLineLimit"

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Lhtd;->a(Ljava/lang/String;I)I

    move-result v1

    .line 356
    .local v1, "mainLogLineLimit":I
    iget-object v2, p0, Lhtm$c;->j:Lhtd;

    const-string/jumbo v3, "Configuration.eventsLogLineLimit"

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Lhtd;->a(Ljava/lang/String;I)I

    move-result v0

    .line 357
    .local v0, "eventsLogLineLimit":I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lhtm$c;->a(Ljava/lang/String;I)V

    .line 358
    const-string/jumbo v2, "events"

    invoke-direct {p0, v2, v0}, Lhtm$c;->a(Ljava/lang/String;I)V

    .line 359
    return-void
.end method

.method protected final i()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 417
    iget-object v2, p0, Lhtm$c;->l:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhtm$c;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    :try_start_0
    const-string/jumbo v2, "extrainfo:\n"

    invoke-virtual {p0, v2}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lhtm$c;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 421
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "%s: %s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lhtm$c;->l:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lhtm$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write extral info"

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10248
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v2}, Lhtm$c;->a(Ljava/lang/String;)V

    .line 428
    :cond_1
    return-void
.end method
