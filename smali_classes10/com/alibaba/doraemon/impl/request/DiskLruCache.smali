.class public final Lcom/alibaba/doraemon/impl/request/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;,
        Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;,
        Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 447
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$2;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

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

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 160
    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->nextSequenceNumber:J

    .line 163
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 182
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->directory:Ljava/io/File;

    .line 183
    iput p2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->appVersion:I

    .line 184
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 187
    iput p3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    .line 188
    iput-wide p4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->maxSize:J

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->completeEdit(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/alibaba/doraemon/impl/request/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 622
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->access$1400(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    move-result-object v2

    .line 519
    .local v2, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 520
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local v2    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 524
    .restart local v2    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 525
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4

    .line 526
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->access$1500(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 527
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->abort()V

    .line 528
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Newly created entry didn\'t create value for index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 530
    :cond_1
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 531
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 525
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7

    .line 538
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 539
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 540
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 541
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 542
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 543
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 544
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 545
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 546
    iget-wide v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    .line 537
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 549
    :cond_6
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 553
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    .line 554
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    .line 555
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 556
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$602(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Z)Z

    .line 557
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 558
    if-eqz p2, :cond_8

    .line 559
    iget-wide v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1202(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;J)J

    .line 565
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 567
    iget-wide v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 568
    :cond_9
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 562
    :cond_a
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

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

    goto :goto_4
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 390
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
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

    .line 463
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->checkNotClosed()V

    .line 464
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 466
    .local v1, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 467
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1200(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 470
    :cond_1
    if-nez v1, :cond_3

    .line 471
    :try_start_1
    new-instance v1, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V

    .line 472
    .restart local v1    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_2
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V

    .line 478
    .local v0, "editor":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    .line 481
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    .line 482
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 463
    .end local v0    # "editor":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 473
    .restart local v1    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 578
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 579
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

.method public static open(Ljava/io/File;IIJ)Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .locals 11
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
    .line 202
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    if-gtz p2, :cond_1

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    new-instance v8, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v8, "journalFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 222
    .end local v8    # "journalFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 223
    .local v0, "cache":Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    iget-object v1, v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    :try_start_0
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->readJournal()V

    .line 226
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->processJournal()V

    .line 227
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/alibaba/doraemon/impl/request/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 245
    .end local v0    # "cache":Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .local v7, "cache":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 217
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalFile":Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 230
    .end local v8    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    :catch_0
    move-exception v9

    .line 231
    .local v9, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->delete()V

    .line 242
    .end local v9    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 243
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    .end local v0    # "cache":Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 244
    .restart local v0    # "cache":Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->rebuildJournal()V

    move-object v7, v0

    .line 245
    .restart local v7    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method private processJournal()V
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
    .line 325
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 326
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 328
    .local v0, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 329
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 330
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    .line 334
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 335
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 336
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 338
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 341
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private readJournal()V
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
    .line 249
    new-instance v4, Lcom/alibaba/doraemon/impl/request/StrictLineReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lcom/alibaba/doraemon/impl/request/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Lcom/alibaba/doraemon/impl/request/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 251
    .local v4, "reader":Lcom/alibaba/doraemon/impl/request/StrictLineReader;
    :try_start_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "magic":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "1"

    .line 257
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->appVersion:I

    .line 258
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    .line 260
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 261
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 265
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 268
    .local v2, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v7

    :try_start_2
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v2, v7

    iput v7, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 277
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x20

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 282
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 283
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 284
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 288
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 290
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 291
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x6

    if-ne v1, v6, :cond_3

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 293
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 297
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 300
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 301
    .local v0, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    if-nez v0, :cond_4

    .line 302
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V

    .line 303
    .restart local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_4
    if-eq v5, v7, :cond_5

    if-ne v1, v9, :cond_5

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 307
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$602(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Z)Z

    .line 309
    invoke-static {v0, v8}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    .line 310
    invoke-static {v0, v4}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$800(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    if-ne v1, v9, :cond_6

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 312
    new-instance v6, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    goto :goto_0

    .line 313
    :cond_6
    if-ne v5, v7, :cond_7

    const/4 v6, 0x4

    if-ne v1, v6, :cond_7

    const-string/jumbo v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 316
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 352
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/alibaba/doraemon/impl/request/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    const-string/jumbo v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 366
    .local v0, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 369
    .restart local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 373
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 376
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/alibaba/doraemon/impl/request/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 384
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    if-eqz p2, :cond_0

    .line 394
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 399
    :cond_1
    return-void
.end method

.method private trimToSize()V
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
    .line 650
    :goto_0
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 652
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 654
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 667
    sget-object v1, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 668
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 669
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 636
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 647
    :goto_0
    monitor-exit p0

    return-void

    .line 639
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 640
    .local v0, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 641
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 636
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 644
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->trimToSize()V

    .line 645
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 646
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->close()V

    .line 663
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->deleteContents(Ljava/io/File;)V

    .line 664
    return-void
.end method

.method public final edit(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 459
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->checkNotClosed()V

    .line 630
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->trimToSize()V

    .line 631
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 407
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->checkNotClosed()V

    .line 408
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 410
    .local v0, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-object v8

    .line 414
    :cond_1
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    new-array v6, v1, [Ljava/io/InputStream;

    .line 423
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_2

    .line 424
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0, v9}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v6, v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 428
    :catch_0
    move-exception v1

    const/4 v9, 0x0

    :goto_2
    iget v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_0

    .line 429
    aget-object v1, v6, v9

    if-eqz v1, :cond_0

    .line 430
    aget-object v1, v6, v9

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 428
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 438
    :cond_2
    iget v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    .line 439
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v2, "READ "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 440
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 444
    :cond_3
    new-instance v1, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1200(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)[J

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V

    move-object v8, v1

    goto :goto_0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized getMaxSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;
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

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->checkNotClosed()V

    .line 590
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 592
    .local v0, "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 593
    :cond_0
    const/4 v3, 0x0

    .line 613
    :goto_0
    monitor-exit p0

    return v3

    .line 596
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 597
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 598
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 599
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

    .line 589
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 601
    .restart local v0    # "entry":Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J

    .line 602
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 605
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->redundantOpCount:I

    .line 606
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v4, "REMOVE "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 607
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 610
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized setMaxSize(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->maxSize:J

    .line 505
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
