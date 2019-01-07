.class public final Lcom/amap/api/services/a/cp;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/cp$c;,
        Lcom/amap/api/services/a/cp$a;,
        Lcom/amap/api/services/a/cp$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final q:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/services/a/cp$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/amap/api/services/a/cq;

.field private o:J

.field private final p:Ljava/util/concurrent/Callable;
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
    .line 100
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/cp;->a:Ljava/util/regex/Pattern;

    .line 757
    new-instance v0, Lcom/amap/api/services/a/cp$2;

    invoke-direct {v0}, Lcom/amap/api/services/a/cp$2;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/cp;->q:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide v4, p0, Lcom/amap/api/services/a/cp;->j:J

    .line 148
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    .line 165
    iput-wide v4, p0, Lcom/amap/api/services/a/cp;->o:J

    .line 168
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/amap/api/services/a/cp;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 171
    new-instance v0, Lcom/amap/api/services/a/cp$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/cp$1;-><init>(Lcom/amap/api/services/a/cp;)V

    iput-object v0, p0, Lcom/amap/api/services/a/cp;->p:Ljava/util/concurrent/Callable;

    .line 189
    iput-object p1, p0, Lcom/amap/api/services/a/cp;->c:Ljava/io/File;

    .line 190
    iput p2, p0, Lcom/amap/api/services/a/cp;->g:I

    .line 191
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    .line 192
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/services/a/cp;->e:Ljava/io/File;

    .line 193
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/services/a/cp;->f:Ljava/io/File;

    .line 194
    iput p3, p0, Lcom/amap/api/services/a/cp;->i:I

    .line 195
    iput-wide p4, p0, Lcom/amap/api/services/a/cp;->h:J

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/cp;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/amap/api/services/a/cp;->m:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/amap/api/services/a/cp$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 481
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->i()V

    .line 482
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/cp;->e(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cp$c;

    .line 484
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 485
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->e(Lcom/amap/api/services/a/cp$c;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 501
    :goto_0
    monitor-exit p0

    return-object v0

    .line 488
    :cond_1
    if-nez v0, :cond_2

    .line 489
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/cp$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/services/a/cp$c;-><init>(Lcom/amap/api/services/a/cp;Ljava/lang/String;Lcom/amap/api/services/a/cp$1;)V

    .line 490
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 495
    :goto_1
    new-instance v0, Lcom/amap/api/services/a/cp$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amap/api/services/a/cp$a;-><init>(Lcom/amap/api/services/a/cp;Lcom/amap/api/services/a/cp$c;Lcom/amap/api/services/a/cp$1;)V

    .line 496
    invoke-static {v1, v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;Lcom/amap/api/services/a/cp$a;)Lcom/amap/api/services/a/cp$a;

    .line 499
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 491
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;)Lcom/amap/api/services/a/cp$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 492
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/cp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    if-gtz p2, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 237
    :cond_2
    :goto_0
    new-instance v0, Lcom/amap/api/services/a/cp;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cp;-><init>(Ljava/io/File;IIJ)V

    .line 239
    iget-object v1, v0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    :try_start_0
    invoke-direct {v0}, Lcom/amap/api/services/a/cp;->e()V

    .line 242
    invoke-direct {v0}, Lcom/amap/api/services/a/cp;->f()V

    .line 243
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/amap/api/services/a/cs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    return-object v0

    .line 232
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amap/api/services/a/cp;->c()V

    .line 256
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 260
    new-instance v0, Lcom/amap/api/services/a/cp;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cp;-><init>(Ljava/io/File;IIJ)V

    .line 261
    invoke-direct {v0}, Lcom/amap/api/services/a/cp;->g()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/services/a/cp;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/amap/api/services/a/cp$a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 537
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/cp$a;->a(Lcom/amap/api/services/a/cp$a;)Lcom/amap/api/services/a/cp$c;

    move-result-object v2

    .line 538
    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;)Lcom/amap/api/services/a/cp$a;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 544
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->d(Lcom/amap/api/services/a/cp$c;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 545
    :goto_0
    iget v3, p0, Lcom/amap/api/services/a/cp;->i:I

    if-ge v1, v3, :cond_4

    .line 546
    invoke-static {p1}, Lcom/amap/api/services/a/cp$a;->b(Lcom/amap/api/services/a/cp$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 547
    invoke-virtual {p1}, Lcom/amap/api/services/a/cp$a;->b()V

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_1
    invoke-virtual {v2, v1}, Lcom/amap/api/services/a/cp$c;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 553
    invoke-virtual {p1}, Lcom/amap/api/services/a/cp$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 545
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/amap/api/services/a/cp;->i:I

    if-ge v0, v1, :cond_7

    .line 560
    invoke-virtual {v2, v0}, Lcom/amap/api/services/a/cp$c;->b(I)Ljava/io/File;

    move-result-object v1

    .line 561
    if-eqz p2, :cond_6

    .line 562
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 563
    invoke-virtual {v2, v0}, Lcom/amap/api/services/a/cp$c;->a(I)Ljava/io/File;

    move-result-object v3

    .line 564
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 568
    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->b(Lcom/amap/api/services/a/cp$c;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 569
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 570
    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->b(Lcom/amap/api/services/a/cp$c;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 571
    iget-wide v8, p0, Lcom/amap/api/services/a/cp;->j:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/services/a/cp;->j:J

    .line 559
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 574
    :cond_6
    invoke-static {v1}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;)V

    goto :goto_3

    .line 578
    :cond_7
    iget v0, p0, Lcom/amap/api/services/a/cp;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/services/a/cp;->m:I

    .line 579
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;Lcom/amap/api/services/a/cp$a;)Lcom/amap/api/services/a/cp$a;

    .line 580
    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->d(Lcom/amap/api/services/a/cp$c;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 581
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;Z)Z

    .line 582
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->c(Lcom/amap/api/services/a/cp$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/amap/api/services/a/cp$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 584
    if-eqz p2, :cond_8

    .line 585
    iget-wide v0, p0, Lcom/amap/api/services/a/cp;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/amap/api/services/a/cp;->o:J

    invoke-static {v2, v0, v1}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;J)J

    .line 591
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 593
    iget-wide v0, p0, Lcom/amap/api/services/a/cp;->j:J

    iget-wide v2, p0, Lcom/amap/api/services/a/cp;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    :cond_9
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/amap/api/services/a/cp;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 588
    :cond_a
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->c(Lcom/amap/api/services/a/cp$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amap/api/services/a/cp$c;->c(Lcom/amap/api/services/a/cp$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/amap/api/services/a/cp;Lcom/amap/api/services/a/cp$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/cp;->a(Lcom/amap/api/services/a/cp$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 413
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    if-eqz p2, :cond_0

    .line 418
    invoke-static {p1}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;)V

    .line 420
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 423
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/amap/api/services/a/cp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->j()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/services/a/cp;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/amap/api/services/a/cp;->q:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/cp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->g()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x20

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 299
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 300
    if-ne v2, v5, :cond_0

    .line 301
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 305
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 307
    if-ne v3, v5, :cond_2

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    const/4 v1, 0x6

    if-ne v2, v1, :cond_7

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 310
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cp$c;

    .line 318
    if-nez v0, :cond_3

    .line 319
    new-instance v0, Lcom/amap/api/services/a/cp$c;

    invoke-direct {v0, p0, v1, v6}, Lcom/amap/api/services/a/cp$c;-><init>(Lcom/amap/api/services/a/cp;Ljava/lang/String;Lcom/amap/api/services/a/cp$1;)V

    .line 320
    iget-object v4, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_3
    if-eq v3, v5, :cond_4

    if-ne v2, v7, :cond_4

    const-string/jumbo v1, "CLEAN"

    .line 324
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 326
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;Z)Z

    .line 327
    invoke-static {v0, v6}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;Lcom/amap/api/services/a/cp$a;)Lcom/amap/api/services/a/cp$a;

    .line 328
    invoke-static {v0, v1}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;[Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_4
    if-ne v3, v5, :cond_5

    if-ne v2, v7, :cond_5

    const-string/jumbo v1, "DIRTY"

    .line 330
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    new-instance v1, Lcom/amap/api/services/a/cp$a;

    invoke-direct {v1, p0, v0, v6}, Lcom/amap/api/services/a/cp$a;-><init>(Lcom/amap/api/services/a/cp;Lcom/amap/api/services/a/cp$c;Lcom/amap/api/services/a/cp$1;)V

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;Lcom/amap/api/services/a/cp$a;)Lcom/amap/api/services/a/cp$a;

    goto :goto_0

    .line 332
    :cond_5
    if-ne v3, v5, :cond_6

    const/4 v0, 0x4

    if-ne v2, v0, :cond_6

    const-string/jumbo v0, "READ"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/amap/api/services/a/cp;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/amap/api/services/a/cp;->i:I

    return v0
.end method

.method private e()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    new-instance v1, Lcom/amap/api/services/a/cr;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/amap/api/services/a/cs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/cr;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 269
    :try_start_0
    invoke-virtual {v1}, Lcom/amap/api/services/a/cr;->a()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {v1}, Lcom/amap/api/services/a/cr;->a()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v1}, Lcom/amap/api/services/a/cr;->a()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v1}, Lcom/amap/api/services/a/cr;->a()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-virtual {v1}, Lcom/amap/api/services/a/cr;->a()Ljava/lang/String;

    move-result-object v5

    .line 274
    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/amap/api/services/a/cp;->g:I

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/amap/api/services/a/cp;->i:I

    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    .line 277
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/amap/api/services/a/cs;->a(Ljava/io/Closeable;)V

    throw v0

    .line 283
    :cond_1
    const/4 v0, 0x0

    .line 286
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/a/cr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/services/a/cp;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amap/api/services/a/cp;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    invoke-static {v1}, Lcom/amap/api/services/a/cs;->a(Ljava/io/Closeable;)V

    .line 295
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 699
    sget-object v0, Lcom/amap/api/services/a/cp;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/amap/api/services/a/cp;)Ljava/io/File;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->c:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;)V

    .line 346
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cp$c;

    .line 348
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;)Lcom/amap/api/services/a/cp$a;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 349
    :goto_1
    iget v4, p0, Lcom/amap/api/services/a/cp;->i:I

    if-ge v1, v4, :cond_0

    .line 350
    iget-wide v4, p0, Lcom/amap/api/services/a/cp;->j:J

    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->b(Lcom/amap/api/services/a/cp$c;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/services/a/cp;->j:J

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;Lcom/amap/api/services/a/cp$a;)Lcom/amap/api/services/a/cp$a;

    move v1, v2

    .line 354
    :goto_2
    iget v4, p0, Lcom/amap/api/services/a/cp;->i:I

    if-ge v1, v4, :cond_2

    .line 355
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cp$c;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cp$c;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 361
    :cond_3
    return-void
.end method

.method private declared-synchronized g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 372
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amap/api/services/a/cp;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/amap/api/services/a/cs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 375
    :try_start_1
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 377
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 379
    iget v0, p0, Lcom/amap/api/services/a/cp;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    iget v0, p0, Lcom/amap/api/services/a/cp;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cp$c;

    .line 386
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;)Lcom/amap/api/services/a/cp$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->c(Lcom/amap/api/services/a/cp$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 389
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->c(Lcom/amap/api/services/a/cp$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/services/a/cp$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 394
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 397
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/cp;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 401
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 405
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amap/api/services/a/cp;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/amap/api/services/a/cs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 407
    monitor-exit p0

    return-void
.end method

.method private h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 604
    iget v0, p0, Lcom/amap/api/services/a/cp;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/services/a/cp;->m:I

    iget-object v1, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    .line 605
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 648
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 677
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/amap/api/services/a/cp;->j:J

    iget-wide v2, p0, Lcom/amap/api/services/a/cp;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 679
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 681
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/cp;->c(Ljava/lang/String;)Z

    .line 682
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->n:Lcom/amap/api/services/a/cq;

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->n:Lcom/amap/api/services/a/cq;

    invoke-interface {v1, v0}, Lcom/amap/api/services/a/cq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/services/a/cp$b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 431
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->i()V

    .line 432
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/cp;->e(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cp$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 438
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->d(Lcom/amap/api/services/a/cp$c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    iget v3, p0, Lcom/amap/api/services/a/cp;->i:I

    new-array v6, v3, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .line 447
    :goto_1
    :try_start_2
    iget v4, p0, Lcom/amap/api/services/a/cp;->i:I

    if-ge v3, v4, :cond_2

    .line 448
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/amap/api/services/a/cp$c;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 452
    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/amap/api/services/a/cp;->i:I

    if-ge v0, v2, :cond_0

    .line 453
    aget-object v2, v6, v0

    if-eqz v2, :cond_0

    .line 454
    aget-object v2, v6, v0

    invoke-static {v2}, Lcom/amap/api/services/a/cs;->a(Ljava/io/Closeable;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 462
    :cond_2
    iget v1, p0, Lcom/amap/api/services/a/cp;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/services/a/cp;->m:I

    .line 463
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

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

    .line 464
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/amap/api/services/a/cp;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/amap/api/services/a/cp;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 468
    :cond_3
    new-instance v1, Lcom/amap/api/services/a/cp$b;

    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->e(Lcom/amap/api/services/a/cp$c;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->b(Lcom/amap/api/services/a/cp$c;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/amap/api/services/a/cp$b;-><init>(Lcom/amap/api/services/a/cp;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/amap/api/services/a/cp$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/amap/api/services/a/cq;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amap/api/services/a/cp;->n:Lcom/amap/api/services/a/cq;

    .line 158
    return-void
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/amap/api/services/a/cp$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 476
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/services/a/cp;->a(Ljava/lang/String;J)Lcom/amap/api/services/a/cp$a;

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
    .line 655
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->i()V

    .line 656
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->j()V

    .line 657
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 655
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
    .line 694
    invoke-virtual {p0}, Lcom/amap/api/services/a/cp;->close()V

    .line 695
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/services/a/cs;->a(Ljava/io/File;)V

    .line 696
    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 615
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->i()V

    .line 616
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/cp;->e(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cp$c;

    .line 618
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;)Lcom/amap/api/services/a/cp$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 639
    :goto_0
    monitor-exit p0

    return v0

    .line 627
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/amap/api/services/a/cp;->j:J

    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->b(Lcom/amap/api/services/a/cp$c;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/services/a/cp;->j:J

    .line 628
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->b(Lcom/amap/api/services/a/cp$c;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 622
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/amap/api/services/a/cp;->i:I

    if-ge v1, v2, :cond_3

    .line 623
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cp$c;->a(I)Ljava/io/File;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 625
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 631
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/amap/api/services/a/cp;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/services/a/cp;->m:I

    .line 632
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 633
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 636
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/amap/api/services/a/cp;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 673
    :goto_0
    monitor-exit p0

    return-void

    .line 665
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/services/a/cp;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cp$c;

    .line 666
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;)Lcom/amap/api/services/a/cp$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 667
    invoke-static {v0}, Lcom/amap/api/services/a/cp$c;->a(Lcom/amap/api/services/a/cp$c;)Lcom/amap/api/services/a/cp$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cp$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 670
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/services/a/cp;->j()V

    .line 671
    iget-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/cp;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
