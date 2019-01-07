.class public final Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;,
        Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;,
        Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field public static final DIRTY_APPEND:I = 0x2

.field public static final DIRTY_RENAME:I = 0x1

.field public static final DIRTY_SEEK:I = 0x3

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
.field protected final appVersion:I

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
            "Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field protected final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 913
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$2;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

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

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    .line 165
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 175
    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->nextSequenceNumber:J

    .line 180
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 184
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 202
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 203
    iput p2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->appVersion:I

    .line 204
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 205
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 206
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 207
    iput p3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    .line 208
    iput-wide p4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->maxSize:J

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->completeEdit(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->innerRemove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private appendCleanFile(Ljava/io/File;Ljava/io/File;J)Z
    .locals 9
    .param p1, "dirty"    # Ljava/io/File;
    .param p2, "clean"    # Ljava/io/File;
    .param p3, "seekBytes"    # J

    .prologue
    const/4 v7, 0x0

    .line 621
    const/16 v8, 0x1400

    invoke-static {v8}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 622
    .local v0, "b":[B
    const/4 v5, 0x0

    .line 623
    .local v5, "raFile":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 625
    .local v2, "inBuff":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "rwd"

    invoke-direct {v6, p2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .local v6, "raFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 628
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .local v3, "inBuff":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 631
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 635
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 636
    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 640
    if-eqz v2, :cond_0

    .line 642
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 648
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 650
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 655
    :cond_1
    :goto_3
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 658
    :goto_4
    return v7

    .line 640
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v4    # "len":I
    .restart local v6    # "raFile":Ljava/io/RandomAccessFile;
    :cond_2
    if-eqz v3, :cond_3

    .line 642
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 648
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    .line 650
    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 655
    :cond_4
    :goto_6
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    const/4 v7, 0x1

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 643
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v6    # "raFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 644
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 651
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 652
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 643
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "len":I
    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    .line 644
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 651
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 652
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 637
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 638
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 640
    if-eqz v2, :cond_5

    .line 642
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 648
    :cond_5
    :goto_8
    if-eqz v5, :cond_6

    .line 650
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 655
    :cond_6
    :goto_9
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_4

    .line 643
    :catch_6
    move-exception v1

    .line 644
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 651
    :catch_7
    move-exception v1

    .line 652
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 640
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v2, :cond_7

    .line 642
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 648
    :cond_7
    :goto_b
    if-eqz v5, :cond_8

    .line 650
    :try_start_c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 655
    :cond_8
    :goto_c
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v7

    .line 643
    :catch_8
    move-exception v1

    .line 644
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 651
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 652
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 640
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "raFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    goto :goto_a

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v6    # "raFile":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    goto :goto_a

    .line 637
    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "raFile":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    goto :goto_7

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v6    # "raFile":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 635
    :catch_c
    move-exception v1

    goto/16 :goto_1

    .end local v5    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "raFile":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v1

    move-object v5, v6

    .end local v6    # "raFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "raFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method

.method private checkNotClosed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 798
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)V
    .locals 14
    .param p1, "editor"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->access$1400(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    move-result-object v3

    .line 664
    .local v3, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v5

    if-eq v5, p1, :cond_0

    .line 665
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    .end local v3    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 669
    .restart local v3    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 670
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    if-ge v4, v5, :cond_4

    .line 671
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->access$1500(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)[Z

    move-result-object v5

    aget-boolean v5, v5, v4

    if-nez v5, :cond_1

    .line 672
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->abort()V

    .line 673
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Newly created entry didn\'t create value for index "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 676
    :cond_1
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 677
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 670
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 683
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    :try_start_2
    iget v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    if-ge v4, v5, :cond_9

    .line 684
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 685
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_8

    .line 686
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 687
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 688
    .local v0, "clean":Ljava/io/File;
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[I

    move-result-object v5

    aget v1, v5, v4

    .line 690
    .local v1, "command":I
    const/4 v5, 0x1

    if-ne v5, v1, :cond_6

    .line 691
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 702
    :goto_3
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v8, v5, v4

    .line 703
    .local v8, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 704
    .local v6, "newLength":J
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v5

    aput-wide v6, v5, v4

    .line 706
    iget-wide v10, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    sub-long/2addr v10, v8

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    .line 683
    .end local v0    # "clean":Ljava/io/File;
    .end local v1    # "command":I
    .end local v6    # "newLength":J
    .end local v8    # "oldLength":J
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 692
    .restart local v0    # "clean":Ljava/io/File;
    .restart local v1    # "command":I
    :cond_6
    const/4 v5, 0x3

    if-ne v5, v1, :cond_7

    .line 694
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v10, v5, v4

    invoke-direct {p0, v2, v0, v10, v11}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->appendCleanFile(Ljava/io/File;Ljava/io/File;J)Z

    .line 695
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 698
    :cond_7
    const/4 v5, 0x1

    invoke-static {v2, v0, v5}, Lcom/alibaba/doraemon/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)Z

    .line 699
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 709
    .end local v0    # "clean":Ljava/io/File;
    .end local v1    # "command":I
    :cond_8
    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_4

    .line 713
    .end local v2    # "dirty":Ljava/io/File;
    :cond_9
    iget v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    .line 714
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    .line 716
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Z

    move-result v5

    or-int v5, v5, p2

    if-eqz v5, :cond_c

    .line 717
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$602(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Z)Z

    .line 718
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "CLEAN "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 719
    if-eqz p2, :cond_a

    .line 720
    iget-wide v10, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v3, v10, v11}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1202(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;J)J

    .line 726
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 728
    iget-wide v10, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    iget-wide v12, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->maxSize:J

    cmp-long v5, v10, v12

    if-gtz v5, :cond_b

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 729
    :cond_b
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 723
    :cond_c
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "REMOVE "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
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
    .line 467
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 470
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
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

    .line 564
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->checkNotClosed()V

    .line 565
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .line 568
    .local v1, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 569
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1200(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 586
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 573
    :cond_1
    if-nez v1, :cond_3

    .line 574
    :try_start_1
    new-instance v1, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Ljava/lang/String;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V

    .line 575
    .restart local v1    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_2
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V

    .line 581
    .local v0, "editor":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    .line 584
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    .line 585
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    .end local v0    # "editor":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 576
    .restart local v1    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private declared-synchronized innerRemove(Ljava/lang/String;)Z
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
    const/4 v3, 0x1

    .line 766
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .local v0, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    if-nez v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 772
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 773
    const/4 v3, 0x0

    goto :goto_0

    .line 776
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    if-ge v2, v4, :cond_4

    .line 777
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 778
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 779
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

    .line 766
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 781
    .restart local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_3
    :try_start_2
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    .line 782
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v4

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 785
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    iget v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    .line 786
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 787
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 790
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
    .line 854
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/alibaba/doraemon/impl/cache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 739
    iget v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 740
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

.method public static open(Ljava/io/File;IIJ)Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    if-gtz p2, :cond_1

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    new-instance v8, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v8, "journalFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 242
    .end local v8    # "journalFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 243
    .local v0, "cache":Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    iget-object v1, v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 245
    :try_start_0
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 246
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 249
    :cond_3
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->readJournal()V

    .line 250
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->processJournal()V

    .line 251
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/alibaba/doraemon/impl/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_6

    .line 262
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 263
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 262
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_4
    :goto_1
    move-object v7, v0

    .line 291
    .end local v0    # "cache":Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .local v7, "cache":Ljava/lang/Object;
    :goto_2
    return-object v7

    .line 237
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalFile":Ljava/io/File;
    :cond_5
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 267
    .end local v8    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_7

    .line 268
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 269
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    .line 275
    :cond_7
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 276
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 275
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    .line 256
    :catch_0
    move-exception v9

    .line 257
    .local v9, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "DiskLruCache"

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_9

    .line 262
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 263
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 262
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 288
    .end local v9    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 289
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    .end local v0    # "cache":Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 290
    .restart local v0    # "cache":Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->rebuildJournal()V

    move-object v7, v0

    .line 291
    .restart local v7    # "cache":Ljava/lang/Object;
    goto/16 :goto_2

    .line 267
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v9    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_a

    .line 268
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 269
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_3

    .line 275
    :cond_a
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 276
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 275
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_3

    .line 260
    .end local v9    # "journalIsCorrupt":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 261
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_c

    .line 262
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 263
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 262
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 275
    :cond_b
    :goto_4
    throw v1

    .line 267
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_d

    .line 268
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 269
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 268
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_4

    .line 275
    :cond_d
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 276
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 275
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_4
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
    .line 372
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 373
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .line 375
    .local v0, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 376
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 377
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 380
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    .line 381
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 382
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 383
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 388
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
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
    .line 295
    new-instance v4, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lcom/alibaba/doraemon/impl/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 298
    .local v4, "reader":Lcom/alibaba/doraemon/impl/cache/StrictLineReader;
    :try_start_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "magic":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "1"

    .line 304
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->appVersion:I

    .line 305
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    .line 306
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    .line 307
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 308
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

    .line 323
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 312
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 315
    .local v2, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v7

    :try_start_2
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v2, v7

    iput v7, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    invoke-static {v4}, Lcom/alibaba/doraemon/impl/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 324
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

    .line 329
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 330
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 331
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

    .line 334
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 335
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 337
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 338
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x6

    if-ne v1, v6, :cond_3

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 344
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .line 348
    .local v0, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    if-nez v0, :cond_4

    .line 349
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Ljava/lang/String;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V

    .line 350
    .restart local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_4
    if-eq v5, v7, :cond_5

    if-ne v1, v9, :cond_5

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 354
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$602(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Z)Z

    .line 356
    invoke-static {v0, v8}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    .line 357
    invoke-static {v0, v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$800(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    if-ne v1, v9, :cond_6

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 359
    new-instance v6, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$702(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    goto :goto_0

    .line 360
    :cond_6
    if-ne v5, v7, :cond_7

    const/4 v6, 0x4

    if-ne v1, v6, :cond_7

    const-string/jumbo v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
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
    const/16 v8, 0x10

    const/16 v7, 0xb

    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 399
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/alibaba/doraemon/impl/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 402
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    const-string/jumbo v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 404
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 406
    iget v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 407
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    iget v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .line 413
    .local v0, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Ljava/lang/String;

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

    .line 420
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 395
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 416
    .restart local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

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

    .line 420
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 423
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 426
    :cond_3
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 427
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 430
    :try_start_5
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 431
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 434
    :cond_4
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/alibaba/doraemon/impl/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 437
    :try_start_6
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 438
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_6

    .line 439
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 440
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 441
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 439
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 464
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 444
    :cond_6
    :try_start_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v8, :cond_7

    .line 445
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 446
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 445
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    .line 452
    :cond_7
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 453
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 454
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 455
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 456
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 452
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    .line 437
    :catchall_2
    move-exception v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 438
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_9

    .line 439
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 440
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 441
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 443
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    .line 439
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 452
    :cond_8
    :goto_2
    throw v2

    .line 444
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v8, :cond_a

    .line 445
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 446
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 447
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 450
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    .line 445
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_2

    .line 452
    :cond_a
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 453
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 454
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 456
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 458
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    .line 452
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
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
    .line 473
    if-eqz p2, :cond_0

    .line 474
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 476
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 479
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
    .line 830
    :goto_0
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 832
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->innerRemove(Ljava/lang/String;)Z

    goto :goto_0

    .line 834
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;>;"
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
    .line 846
    sget-object v1, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 847
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
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

    .line 851
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
    .line 816
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 827
    :goto_0
    monitor-exit p0

    return-void

    .line 819
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .line 820
    .local v0, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 821
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 816
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 824
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->trimToSize()V

    .line 825
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 826
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
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
    .line 841
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->close()V

    .line 842
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/Util;->deleteContents(Ljava/io/File;)V

    .line 843
    return-void
.end method

.method public final edit(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 560
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

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
    .line 807
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->checkNotClosed()V

    .line 808
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->trimToSize()V

    .line 809
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    monitor-exit p0

    return-void

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    .locals 10
    .param p1, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x10

    const/16 v5, 0xb

    const/4 v8, 0x0

    .line 486
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->checkNotClosed()V

    .line 488
    invoke-direct {p0, v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .line 490
    .local v0, "entry":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-object v8

    .line 494
    :cond_1
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    new-array v6, v1, [Ljava/io/InputStream;

    .line 503
    .local v6, "ins":[Ljava/io/InputStream;
    :try_start_0
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 504
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 507
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_3

    .line 508
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0, v9}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v6, v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 521
    :cond_3
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 522
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_6

    .line 523
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 524
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 523
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 547
    :cond_4
    :goto_2
    iget v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->redundantOpCount:I

    .line 548
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v2, "READ "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 549
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 550
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 553
    :cond_5
    new-instance v1, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1200(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V

    move-object v8, v1

    goto/16 :goto_0

    .line 528
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v7, :cond_7

    .line 529
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 530
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 532
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 529
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_2

    .line 536
    :cond_7
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 537
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 536
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_2

    .line 512
    .end local v9    # "i":I
    :catch_0
    move-exception v1

    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    :try_start_1
    iget v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_8

    .line 513
    aget-object v1, v6, v9

    if-eqz v1, :cond_8

    .line 514
    aget-object v1, v6, v9

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/cache/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 521
    :cond_8
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 522
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_9

    .line 523
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 524
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 523
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/16 :goto_0

    .line 528
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v7, :cond_a

    .line 529
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 530
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 532
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 529
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/16 :goto_0

    .line 536
    :cond_a
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 537
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 536
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/16 :goto_0

    .line 521
    .end local v9    # "i":I
    :catchall_0
    move-exception v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-ne v2, v4, :cond_b

    .line 522
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_c

    .line 523
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 524
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 525
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 527
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 523
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 536
    :cond_b
    :goto_4
    throw v1

    .line 528
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_d

    .line 529
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 530
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 532
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 529
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_4

    .line 536
    :cond_d
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 537
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 539
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 540
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 542
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 536
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_4
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized getMaxSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->maxSize:J
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
    .line 761
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
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
    .locals 2
    .param p1, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->checkNotClosed()V

    .line 752
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 754
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->innerRemove(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 750
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized setMaxSize(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->maxSize:J

    .line 609
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 608
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
    .line 617
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
