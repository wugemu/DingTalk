.class public final Lgxb;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgxb$b;,
        Lgxb$a;,
        Lgxb$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private final f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgxb$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lgxb;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide v4, p0, Lgxb;->h:J

    .line 162
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    .line 171
    iput-wide v4, p0, Lgxb;->l:J

    .line 270
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lgxb;->m:Ljava/util/concurrent/ExecutorService;

    .line 272
    new-instance v0, Lgxb$1;

    invoke-direct {v0, p0}, Lgxb$1;-><init>(Lgxb;)V

    iput-object v0, p0, Lgxb;->n:Ljava/util/concurrent/Callable;

    .line 289
    iput-object p1, p0, Lgxb;->b:Ljava/io/File;

    .line 290
    iput p2, p0, Lgxb;->e:I

    .line 291
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lgxb;->c:Ljava/io/File;

    .line 292
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lgxb;->d:Ljava/io/File;

    .line 293
    iput p3, p0, Lgxb;->g:I

    .line 294
    iput-wide p4, p0, Lgxb;->f:J

    .line 295
    return-void
.end method

.method static synthetic a(Lgxb;I)I
    .locals 1
    .param p0, "x0"    # Lgxb;
    .param p1, "x1"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lgxb;->k:I

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lgxb$a;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    .line 518
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgxb;->h()V

    .line 519
    invoke-static {p1}, Lgxb;->d(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxb$b;

    .line 521
    .local v1, "entry":Lgxb$b;
    cmp-long v2, v4, v4

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 13896
    iget-wide v2, v1, Lgxb$b;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 538
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 525
    :cond_1
    if-nez v1, :cond_3

    .line 526
    :try_start_1
    new-instance v1, Lgxb$b;

    .end local v1    # "entry":Lgxb$b;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lgxb$b;-><init>(Lgxb;Ljava/lang/String;B)V

    .line 527
    .restart local v1    # "entry":Lgxb$b;
    iget-object v2, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_2
    new-instance v0, Lgxb$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lgxb$a;-><init>(Lgxb;Lgxb$b;B)V

    .line 15896
    .local v0, "editor":Lgxb$a;
    iput-object v0, v1, Lgxb$b;->d:Lgxb$a;

    .line 536
    iget-object v2, p0, Lgxb;->i:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lgxb;->i:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    .end local v0    # "editor":Lgxb$a;
    .end local v1    # "entry":Lgxb$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 14896
    .restart local v1    # "entry":Lgxb$b;
    :cond_3
    :try_start_2
    iget-object v2, v1, Lgxb$b;->d:Lgxb$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;IIJ)Lgxb;
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 309
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    new-instance v0, Lgxb;

    move-object v1, p0

    move v3, v2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lgxb;-><init>(Ljava/io/File;IIJ)V

    .line 318
    .local v0, "cache":Lgxb;
    iget-object v1, v0, Lgxb;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :try_start_0
    invoke-direct {v0}, Lgxb;->d()V

    .line 321
    invoke-direct {v0}, Lgxb;->e()V

    .line 322
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, v0, Lgxb;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lgxb;->i:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 336
    .end local v0    # "cache":Lgxb;
    .local v6, "cache":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 328
    .end local v6    # "cache":Ljava/lang/Object;
    .restart local v0    # "cache":Lgxb;
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lgxb;->c()V

    .line 333
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 334
    new-instance v0, Lgxb;

    .end local v0    # "cache":Lgxb;
    move-object v1, p0

    move v3, v2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lgxb;-><init>(Ljava/io/File;IIJ)V

    .line 335
    .restart local v0    # "cache":Lgxb;
    invoke-direct {v0}, Lgxb;->f()V

    move-object v6, v0

    .line 336
    .restart local v6    # "cache":Ljava/lang/Object;
    goto :goto_0
.end method

.method static synthetic a(Lgxb;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lgxb;

    .prologue
    .line 100
    iget-object v0, p0, Lgxb;->i:Ljava/io/Writer;

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 221
    .local v0, "c":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 222
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 223
    :cond_0
    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    .line 227
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 230
    .local v1, "length":I
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 231
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 233
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized a(Lgxb$a;Z)V
    .locals 12
    .param p1, "editor"    # Lgxb$a;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 566
    monitor-enter p0

    .line 16774
    :try_start_0
    iget-object v2, p1, Lgxb$a;->a:Lgxb$b;

    .line 16896
    .local v2, "entry":Lgxb$b;
    iget-object v8, v2, Lgxb$b;->d:Lgxb$a;

    .line 567
    if-eq v8, p1, :cond_0

    .line 568
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    .end local v2    # "entry":Lgxb$b;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 572
    .restart local v2    # "entry":Lgxb$b;
    :cond_0
    if-eqz p2, :cond_2

    .line 17896
    :try_start_1
    iget-boolean v8, v2, Lgxb$b;->c:Z

    .line 572
    if-nez v8, :cond_2

    .line 573
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lgxb;->g:I

    if-ge v3, v8, :cond_2

    .line 574
    invoke-virtual {v2, v3}, Lgxb$b;->b(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 575
    invoke-virtual {p1}, Lgxb$a;->b()V

    .line 576
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "edit didn\'t create file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 573
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lgxb;->g:I

    if-ge v3, v8, :cond_5

    .line 582
    invoke-virtual {v2, v3}, Lgxb$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 583
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_4

    .line 584
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 585
    invoke-virtual {v2, v3}, Lgxb$b;->a(I)Ljava/io/File;

    move-result-object v0

    .line 586
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 18896
    iget-object v8, v2, Lgxb$b;->b:[J

    .line 587
    aget-wide v6, v8, v3

    .line 588
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 19896
    .local v4, "newLength":J
    iget-object v8, v2, Lgxb$b;->b:[J

    .line 589
    aput-wide v4, v8, v3

    .line 590
    iget-wide v8, p0, Lgxb;->h:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lgxb;->h:J

    .line 581
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 593
    :cond_4
    invoke-static {v1}, Lgxb;->b(Ljava/io/File;)V

    goto :goto_2

    .line 597
    .end local v1    # "dirty":Ljava/io/File;
    :cond_5
    iget v8, p0, Lgxb;->k:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lgxb;->k:I

    .line 598
    const/4 v8, 0x0

    .line 20896
    iput-object v8, v2, Lgxb$b;->d:Lgxb$a;

    .line 21896
    iget-boolean v8, v2, Lgxb$b;->c:Z

    .line 599
    or-int/2addr v8, p2

    if-eqz v8, :cond_9

    .line 22896
    const/4 v8, 0x1

    iput-boolean v8, v2, Lgxb$b;->c:Z

    .line 601
    iget-object v8, p0, Lgxb;->i:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23896
    iget-object v10, v2, Lgxb$b;->a:Ljava/lang/String;

    .line 601
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lgxb$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    if-eqz p2, :cond_6

    .line 603
    iget-wide v8, p0, Lgxb;->l:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lgxb;->l:J

    .line 24896
    iput-wide v8, v2, Lgxb$b;->e:J

    .line 610
    :cond_6
    :goto_3
    iget-wide v8, p0, Lgxb;->h:J

    iget-wide v10, p0, Lgxb;->f:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    invoke-direct {p0}, Lgxb;->g()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 611
    :cond_7
    iget-object v8, p0, Lgxb;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lgxb;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    :cond_8
    monitor-exit p0

    return-void

    .line 606
    :cond_9
    :try_start_2
    iget-object v8, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    .line 25896
    iget-object v9, v2, Lgxb$b;->a:Ljava/lang/String;

    .line 606
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v8, p0, Lgxb;->i:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26896
    iget-object v10, v2, Lgxb$b;->a:Ljava/lang/String;

    .line 607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method static synthetic a(Lgxb;Lgxb$a;Z)V
    .locals 0
    .param p0, "x0"    # Lgxb;
    .param p1, "x1"    # Lgxb$a;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lgxb;->a(Lgxb$a;Z)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 240
    if-eqz p0, :cond_0

    .line 242
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 256
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "not a directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 260
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-static {v0}, Lgxb;->a(Ljava/io/File;)V

    .line 263
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 264
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "failed to delete file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method static synthetic b(Lgxb;)V
    .locals 0
    .param p0, "x0"    # Lgxb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lgxb;->i()V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 466
    :cond_0
    return-void
.end method

.method static synthetic c(Lgxb;)Z
    .locals 1
    .param p0, "x0"    # Lgxb;

    .prologue
    .line 100
    invoke-direct {p0}, Lgxb;->g()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v12, 0x2

    .line 340
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lgxb;->c:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x2000

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 342
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v2}, Lgxb;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "magic":Ljava/lang/String;
    invoke-static {v2}, Lgxb;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "version":Ljava/lang/String;
    invoke-static {v2}, Lgxb;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-static {v2}, Lgxb;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "valueCountString":Ljava/lang/String;
    invoke-static {v2}, Lgxb;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "1"

    .line 348
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lgxb;->e:I

    .line 349
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lgxb;->g:I

    .line 350
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, ""

    .line 351
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 352
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-static {v2}, Lgxb;->a(Ljava/io/Closeable;)V

    throw v6

    .line 1374
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v4    # "valueCountString":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    aget-object v7, v9, v6

    .line 1375
    const/4 v6, 0x0

    aget-object v6, v9, v6

    const-string/jumbo v10, "REMOVE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    array-length v6, v9

    if-ne v6, v12, :cond_3

    .line 1376
    iget-object v6, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_2
    :goto_0
    invoke-static {v2}, Lgxb;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 1369
    const-string/jumbo v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1370
    array-length v6, v9

    if-ge v6, v12, :cond_1

    .line 1371
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unexpected journal line: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v6

    .line 364
    invoke-static {v2}, Lgxb;->a(Ljava/io/Closeable;)V

    .line 365
    return-void

    .line 1380
    :cond_3
    :try_start_2
    iget-object v6, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgxb$b;

    .line 1381
    if-nez v6, :cond_9

    .line 1382
    new-instance v6, Lgxb$b;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v7, v10}, Lgxb$b;-><init>(Lgxb;Ljava/lang/String;B)V

    .line 1383
    iget-object v10, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 1386
    :goto_1
    const/4 v6, 0x0

    aget-object v6, v9, v6

    const-string/jumbo v10, "CLEAN"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    array-length v6, v9

    iget v10, p0, Lgxb;->g:I

    add-int/lit8 v10, v10, 0x2

    if-ne v6, v10, :cond_6

    .line 1896
    const/4 v6, 0x1

    iput-boolean v6, v7, Lgxb$b;->c:Z

    .line 1388
    const/4 v6, 0x0

    .line 2896
    iput-object v6, v7, Lgxb$b;->d:Lgxb$a;

    .line 1389
    array-length v6, v9

    .line 3176
    array-length v8, v9

    .line 3177
    if-le v12, v6, :cond_4

    .line 3178
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 3180
    :cond_4
    if-le v12, v8, :cond_5

    .line 3181
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v6

    .line 3183
    :cond_5
    add-int/lit8 v6, v6, -0x2

    .line 3184
    add-int/lit8 v8, v8, -0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3186
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 3187
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1389
    check-cast v6, [Ljava/lang/String;

    .line 3896
    invoke-virtual {v7, v6}, Lgxb$b;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1390
    :cond_6
    const/4 v6, 0x0

    aget-object v6, v9, v6

    const-string/jumbo v10, "DIRTY"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    array-length v6, v9

    if-ne v6, v12, :cond_7

    .line 1391
    new-instance v6, Lgxb$a;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lgxb$a;-><init>(Lgxb;Lgxb$b;B)V

    .line 4896
    iput-object v6, v7, Lgxb$b;->d:Lgxb$a;

    goto/16 :goto_0

    .line 1392
    :cond_7
    const/4 v6, 0x0

    aget-object v6, v9, v6

    const-string/jumbo v7, "READ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    array-length v6, v9

    if-eq v6, v12, :cond_2

    .line 1395
    :cond_8
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unexpected journal line: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    move-object v7, v6

    goto/16 :goto_1
.end method

.method static synthetic d(Lgxb;)V
    .locals 0
    .param p0, "x0"    # Lgxb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lgxb;->f()V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 717
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keys must not contain spaces or newlines: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_1
    return-void
.end method

.method static synthetic e(Lgxb;)I
    .locals 1
    .param p0, "x0"    # Lgxb;

    .prologue
    .line 100
    iget v0, p0, Lgxb;->g:I

    return v0
.end method

.method private e()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 404
    iget-object v3, p0, Lgxb;->d:Ljava/io/File;

    invoke-static {v3}, Lgxb;->b(Ljava/io/File;)V

    .line 405
    iget-object v3, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgxb$b;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb$b;

    .line 5896
    .local v0, "entry":Lgxb$b;
    iget-object v3, v0, Lgxb$b;->d:Lgxb$a;

    .line 407
    if-nez v3, :cond_1

    .line 408
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lgxb;->g:I

    if-ge v2, v3, :cond_0

    .line 409
    iget-wide v4, p0, Lgxb;->h:J

    .line 6896
    iget-object v3, v0, Lgxb$b;->b:[J

    .line 409
    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lgxb;->h:J

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    .line 7896
    iput-object v3, v0, Lgxb$b;->d:Lgxb$a;

    .line 413
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lgxb;->g:I

    if-ge v2, v3, :cond_2

    .line 414
    invoke-virtual {v0, v2}, Lgxb$b;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lgxb;->b(Ljava/io/File;)V

    .line 415
    invoke-virtual {v0, v2}, Lgxb$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lgxb;->b(Ljava/io/File;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 417
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 420
    .end local v0    # "entry":Lgxb$b;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method static synthetic f(Lgxb;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lgxb;

    .prologue
    .line 100
    iget-object v0, p0, Lgxb;->b:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgxb;->i:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lgxb;->i:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 431
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lgxb;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 432
    .local v1, "writer":Ljava/io/Writer;
    const-string/jumbo v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 433
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    iget v2, p0, Lgxb;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget v2, p0, Lgxb;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb$b;

    .line 8896
    .local v0, "entry":Lgxb$b;
    iget-object v3, v0, Lgxb$b;->d:Lgxb$a;

    .line 443
    if-eqz v3, :cond_1

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9896
    iget-object v4, v0, Lgxb$b;->a:Ljava/lang/String;

    .line 444
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    .end local v0    # "entry":Lgxb$b;
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 446
    .restart local v0    # "entry":Lgxb$b;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10896
    iget-object v4, v0, Lgxb$b;->a:Ljava/lang/String;

    .line 446
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgxb$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .end local v0    # "entry":Lgxb$b;
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 451
    iget-object v2, p0, Lgxb;->d:Ljava/io/File;

    iget-object v3, p0, Lgxb;->c:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 452
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lgxb;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lgxb;->i:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    monitor-exit p0

    return-void
.end method

.method private g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 621
    iget v0, p0, Lgxb;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lgxb;->k:I

    iget-object v1, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    .line 622
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 621
    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 667
    iget-object v0, p0, Lgxb;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    return-void
.end method

.method private i()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 699
    :goto_0
    iget-wide v2, p0, Lgxb;->h:J

    iget-wide v4, p0, Lgxb;->f:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 701
    iget-object v1, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 702
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgxb$b;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lgxb;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 704
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgxb$b;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lgxb$c;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 474
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgxb;->h()V

    .line 475
    invoke-static {p1}, Lgxb;->d(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .local v0, "entry":Lgxb$b;
    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 11896
    :cond_1
    :try_start_1
    iget-boolean v2, v0, Lgxb$b;->c:Z

    .line 481
    if-eqz v2, :cond_0

    .line 490
    iget v2, p0, Lgxb;->g:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    :try_start_2
    iget v2, p0, Lgxb;->g:I

    if-ge v8, v2, :cond_2

    .line 493
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0, v8}, Lgxb$b;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v8
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 500
    :cond_2
    :try_start_3
    iget v1, p0, Lgxb;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxb;->k:I

    .line 501
    iget-object v1, p0, Lgxb;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 502
    invoke-direct {p0}, Lgxb;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lgxb;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lgxb;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 506
    :cond_3
    new-instance v1, Lgxb$c;

    .line 12896
    iget-wide v4, v0, Lgxb$b;->e:J

    .line 506
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lgxb$c;-><init>(Lgxb;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 474
    .end local v0    # "entry":Lgxb$b;
    .end local v6    # "ins":[Ljava/io/InputStream;
    .end local v8    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 497
    .restart local v0    # "entry":Lgxb$b;
    .restart local v6    # "ins":[Ljava/io/InputStream;
    .restart local v8    # "i":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lgxb;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lgxb$a;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 514
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lgxb;->a(Ljava/lang/String;J)Lgxb$a;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgxb;->h()V

    .line 677
    invoke-direct {p0}, Lgxb;->i()V

    .line 678
    iget-object v0, p0, Lgxb;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0}, Lgxb;->close()V

    .line 713
    iget-object v0, p0, Lgxb;->b:Ljava/io/File;

    invoke-static {v0}, Lgxb;->a(Ljava/io/File;)V

    .line 714
    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgxb;->h()V

    .line 633
    invoke-static {p1}, Lgxb;->d(Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb$b;

    .line 635
    .local v0, "entry":Lgxb$b;
    if-eqz v0, :cond_0

    .line 27896
    iget-object v3, v0, Lgxb$b;->d:Lgxb$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    if-eqz v3, :cond_1

    .line 636
    :cond_0
    const/4 v3, 0x0

    .line 656
    :goto_0
    monitor-exit p0

    return v3

    .line 639
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lgxb;->g:I

    if-ge v2, v3, :cond_3

    .line 640
    invoke-virtual {v0, v2}, Lgxb$b;->a(I)Ljava/io/File;

    move-result-object v1

    .line 641
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 642
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    .end local v0    # "entry":Lgxb$b;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 644
    .restart local v0    # "entry":Lgxb$b;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lgxb;->h:J

    .line 28896
    iget-object v3, v0, Lgxb$b;->b:[J

    .line 644
    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lgxb;->h:J

    .line 29896
    iget-object v3, v0, Lgxb$b;->b:[J

    .line 645
    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 648
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lgxb;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgxb;->k:I

    .line 649
    iget-object v3, p0, Lgxb;->i:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "REMOVE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 650
    iget-object v3, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-direct {p0}, Lgxb;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 653
    iget-object v3, p0, Lgxb;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lgxb;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgxb;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 696
    :goto_0
    monitor-exit p0

    return-void

    .line 688
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lgxb;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb$b;

    .line 30896
    .local v0, "entry":Lgxb$b;
    iget-object v2, v0, Lgxb$b;->d:Lgxb$a;

    .line 689
    if-eqz v2, :cond_1

    .line 31896
    iget-object v2, v0, Lgxb$b;->d:Lgxb$a;

    .line 690
    invoke-virtual {v2}, Lgxb$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 685
    .end local v0    # "entry":Lgxb$b;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 693
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lgxb;->i()V

    .line 694
    iget-object v1, p0, Lgxb;->i:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 695
    const/4 v1, 0x0

    iput-object v1, p0, Lgxb;->i:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
