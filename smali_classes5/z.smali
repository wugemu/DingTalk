.class public final Lz;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a(Ljava/io/File;)J
    .locals 4
    .param p0, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v1}, Lz;->a(Ljava/io/RandomAccessFile;)Lz$a;

    move-result-object v0

    .line 59
    .local v0, "dir":Lz$a;
    invoke-static {v1, v0}, Lz;->a(Ljava/io/RandomAccessFile;Lz$a;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 61
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-wide v2

    .end local v0    # "dir":Lz$a;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method

.method private static a(Ljava/io/RandomAccessFile;Lz$a;)J
    .locals 12
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "dir"    # Lz$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x4000

    const/4 v8, 0x0

    .line 108
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 109
    .local v1, "crc":Ljava/util/zip/CRC32;
    iget-wide v4, p1, Lz$a;->b:J

    .line 110
    .local v4, "stillToRead":J
    iget-wide v6, p1, Lz$a;->a:J

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 111
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 112
    .local v2, "length":I
    const/16 v3, 0x4000

    new-array v0, v3, [B

    .line 113
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 114
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 115
    invoke-virtual {v1, v0, v8, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 116
    int-to-long v6, v2

    sub-long/2addr v4, v6

    .line 117
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 120
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 121
    invoke-virtual {p0, v0, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    return-wide v6
.end method

.method private static a(Ljava/io/RandomAccessFile;)Lz$a;
    .locals 10
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x16

    sub-long v2, v6, v8

    .line 69
    .local v2, "scanOffset":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 70
    new-instance v6, Ljava/util/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "File too short to be a zip file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    :cond_0
    const-wide/32 v6, 0x10000

    sub-long v4, v2, v6

    .line 74
    .local v4, "stopOffset":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 75
    const-wide/16 v4, 0x0

    .line 78
    :cond_1
    const v6, 0x6054b50

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    .line 80
    .local v1, "endSig":I
    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    if-eq v6, v1, :cond_3

    .line 85
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    .line 86
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 87
    new-instance v6, Ljava/util/zip/ZipException;

    const-string/jumbo v7, "End Of Central Directory signature not found"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 96
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 97
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 98
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 99
    new-instance v0, Lz$a;

    invoke-direct {v0}, Lz$a;-><init>()V

    .line 100
    .local v0, "dir":Lz$a;
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Lz$a;->b:J

    .line 101
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Lz$a;->a:J

    .line 102
    return-object v0
.end method
