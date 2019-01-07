.class public final Lhtm$d;
.super Lhtm$b;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/Throwable;

.field b:Ljava/lang/Thread;

.field final synthetic p:Lhtm;


# direct methods
.method public constructor <init>(Lhtm;Landroid/content/Context;Lhtn;Lhtd;Ljava/lang/String;JLjava/io/File;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/util/Map;)V
    .locals 14
    .param p1, "this$0"    # Lhtm;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "reporterContext"    # Lhtn;
    .param p4, "configuration"    # Lhtd;
    .param p5, "reportName"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "reportFile"    # Ljava/io/File;
    .param p9, "throwable"    # Ljava/lang/Throwable;
    .param p10, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lhtn;",
            "Lhtd;",
            "Ljava/lang/String;",
            "J",
            "Ljava/io/File;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Thread;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p11, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lhtm$d;->p:Lhtm;

    .line 469
    const-string/jumbo v9, "java"

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lhtm$b;-><init>(Lhtm;Landroid/content/Context;Lhtn;Lhtd;Ljava/lang/String;Ljava/lang/String;JLjava/io/File;Ljava/util/Map;)V

    .line 471
    move-object/from16 v0, p9

    iput-object v0, p0, Lhtm$d;->a:Ljava/lang/Throwable;

    .line 472
    move-object/from16 v0, p10

    iput-object v0, p0, Lhtm$d;->b:Ljava/lang/Thread;

    .line 473
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 476
    .line 1491
    :try_start_0
    const-string/jumbo v0, "Process Name: \'%s\' \n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhtm$d;->i:Lhtn;

    const-string/jumbo v4, "PROCESS_NAME"

    invoke-virtual {v3, v4}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$d;->a(Ljava/lang/String;)V

    .line 1492
    const-string/jumbo v0, "Thread Name: \'%s\' \n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhtm$d;->b:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$d;->a(Ljava/lang/String;)V

    .line 1493
    const-string/jumbo v0, "Back traces starts.\n"

    invoke-virtual {p0, v0}, Lhtm$d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1494
    const/4 v2, 0x0

    .line 1496
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    :try_start_2
    iget-object v0, p0, Lhtm$d;->a:Ljava/lang/Throwable;

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1498
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$d;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1502
    :try_start_3
    invoke-static {v1}, Lhtr;->a(Ljava/io/Closeable;)V

    .line 1504
    :goto_0
    const-string/jumbo v0, "Back traces end.\n"

    invoke-virtual {p0, v0}, Lhtm$d;->a(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0}, Lhtm$d;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1511
    :goto_1
    :try_start_4
    iget-object v0, p0, Lhtm$d;->b:Ljava/lang/Thread;

    invoke-static {v0}, Lhtr;->b(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhtm$d;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1515
    :goto_2
    invoke-virtual {p0}, Lhtm$d;->c()V

    .line 477
    invoke-virtual {p0}, Lhtm$d;->i()V

    .line 478
    invoke-virtual {p0}, Lhtm$d;->d()V

    .line 479
    invoke-virtual {p0}, Lhtm$d;->e()V

    .line 480
    invoke-virtual {p0}, Lhtm$d;->g()V

    .line 482
    iget-object v0, p0, Lhtm$d;->a:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lhtm$d;->f()V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lhtm$d;->h()V

    .line 486
    return-void

    .line 1499
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1500
    :goto_3
    :try_start_5
    const-string/jumbo v2, "print throwable"

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1502
    :try_start_6
    invoke-static {v1}, Lhtr;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 1506
    :catch_1
    move-exception v0

    .line 1507
    const-string/jumbo v1, "write throwable"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1502
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_7
    invoke-static {v1}, Lhtr;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1512
    :catch_2
    move-exception v0

    .line 1513
    const-string/jumbo v1, "write thread"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1502
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1499
    :catch_3
    move-exception v0

    goto :goto_3
.end method
