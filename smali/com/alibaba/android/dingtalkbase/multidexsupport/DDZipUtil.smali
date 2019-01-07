.class final Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil;
.super Ljava/lang/Object;
.source "DDZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final ENDHDR:I = 0x16

.field private static final ENDSIG:I = 0x6054b50


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;)J
    .locals 12
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "dir"    # Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x4000

    const/4 v8, 0x0

    .line 88
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 89
    .local v1, "crc":Ljava/util/zip/CRC32;
    iget-wide v4, p1, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;->size:J

    .line 90
    .local v4, "stillToRead":J
    iget-wide v6, p1, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;->offset:J

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 91
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 92
    .local v2, "length":I
    const/16 v3, 0x4000

    new-array v0, v3, [B

    .line 93
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 94
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 95
    invoke-virtual {v1, v0, v8, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 96
    int-to-long v6, v2

    sub-long/2addr v4, v6

    .line 97
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 100
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 101
    invoke-virtual {p0, v0, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    return-wide v6
.end method

.method static findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;
    .locals 10
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x16

    sub-long v2, v6, v8

    .line 49
    .local v2, "scanOffset":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 50
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

    .line 53
    :cond_0
    const-wide/32 v6, 0x10000

    sub-long v4, v2, v6

    .line 54
    .local v4, "stopOffset":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 55
    const-wide/16 v4, 0x0

    .line 58
    :cond_1
    const v6, 0x6054b50

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    .line 60
    .local v1, "endSig":I
    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    if-eq v6, v1, :cond_3

    .line 65
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    .line 66
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 67
    new-instance v6, Ljava/util/zip/ZipException;

    const-string/jumbo v7, "End Of Central Directory signature not found"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 76
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 77
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 78
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 79
    new-instance v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;-><init>()V

    .line 80
    .local v0, "dir":Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;->size:J

    .line 81
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;->offset:J

    .line 82
    return-object v0
.end method

.method static getZipCrc(Ljava/io/File;)J
    .locals 4
    .param p0, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil;->findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;

    move-result-object v0

    .line 39
    .local v0, "dir":Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;
    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil;->computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 41
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-wide v2

    .end local v0    # "dir":Lcom/alibaba/android/dingtalkbase/multidexsupport/DDZipUtil$CentralDirectory;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method
