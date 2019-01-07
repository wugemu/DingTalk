.class public final Lhtm$a;
.super Lhtm$b;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;

.field final synthetic b:Lhtm;


# direct methods
.method public constructor <init>(Lhtm;Landroid/content/Context;Lhtn;Lhtd;Ljava/lang/String;JLjava/io/File;Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;)V
    .locals 14
    .param p1, "this$0"    # Lhtm;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "reporterContext"    # Lhtn;
    .param p4, "configuration"    # Lhtd;
    .param p5, "reportName"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "reportFile"    # Ljava/io/File;
    .param p9, "tracesFinder"    # Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;

    .prologue
    .line 526
    iput-object p1, p0, Lhtm$a;->b:Lhtm;

    .line 527
    const-string/jumbo v9, "anr"

    const/4 v13, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lhtm$b;-><init>(Lhtm;Landroid/content/Context;Lhtn;Lhtd;Ljava/lang/String;Ljava/lang/String;JLjava/io/File;Ljava/util/Map;)V

    .line 529
    move-object/from16 v0, p9

    iput-object v0, p0, Lhtm$a;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;

    .line 530
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 533
    .line 1538
    :try_start_0
    const-string/jumbo v1, "traces starts.\n"

    invoke-virtual {p0, v1}, Lhtm$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1539
    const/4 v2, 0x0

    .line 1542
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lhtm$a;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;

    iget-object v5, v5, Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;->g:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    .line 1545
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1546
    add-int/lit8 v2, v2, 0x1

    .line 1548
    iget-object v4, p0, Lhtm$a;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;

    iget-object v4, v4, Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1549
    const/4 v0, 0x1

    .line 1551
    :cond_1
    if-eqz v0, :cond_3

    .line 1552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lhtm$a;->a(Ljava/lang/String;)V

    .line 1560
    :goto_0
    iget-object v4, p0, Lhtm$a;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;

    iget-object v4, v4, Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1567
    :cond_2
    :try_start_3
    invoke-static {v1}, Lhtr;->a(Ljava/io/Closeable;)V

    .line 1569
    :goto_1
    const-string/jumbo v0, "traces end.\n"

    invoke-virtual {p0, v0}, Lhtm$a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1573
    :goto_2
    invoke-virtual {p0}, Lhtm$a;->c()V

    .line 534
    return-void

    .line 1555
    :cond_3
    const/4 v4, 0x5

    if-gt v2, v4, :cond_2

    goto :goto_0

    .line 1564
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1565
    :goto_3
    :try_start_4
    const-string/jumbo v2, "read anr file."

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1567
    :try_start_5
    invoke-static {v1}, Lhtr;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1570
    :catch_1
    move-exception v0

    .line 1571
    const-string/jumbo v1, "write traces."

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1567
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_6
    invoke-static {v1}, Lhtr;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1564
    :catch_2
    move-exception v0

    goto :goto_3
.end method
