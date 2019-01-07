.class public Lcom/taobao/android/runtime/OatFile;
.super Lcom/taobao/android/runtime/BaseDexBuffer;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;,
        Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;
    }
.end annotation


# static fields
.field private static final ELF_MAGIC:[B

.field private static final MAX_OAT_VERSION:I = 0x56

.field private static final MIN_ELF_HEADER_SIZE:I = 0x34

.field private static final MIN_OAT_VERSION_LOLLIPOP:I = 0x27

.field private static final MIN_OAT_VERSION_LOLLIPOP_MR1:I = 0x2d

.field private static final MIN_OAT_VERSION_M:I = 0x38

.field private static final OAT_MAGIC:[B

.field public static final SUPPORTED:I = 0x1

.field public static final UNKNOWN:I = 0x2

.field public static final UNSUPPORTED:I


# instance fields
.field private final is64bit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/android/runtime/OatFile;->ELF_MAGIC:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/taobao/android/runtime/OatFile;->OAT_MAGIC:[B

    return-void

    .line 44
    .line 46
    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x6ft
        0x61t
        0x74t
        0xat
    .end array-data
.end method

.method public constructor <init>([BJ)V
    .locals 8
    .param p1, "buf"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "length"    # J

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/taobao/android/runtime/BaseDexBuffer;-><init>([B)V

    .line 77
    array-length v3, p1

    const/16 v4, 0x34

    if-ge v3, v4, :cond_0

    .line 78
    new-instance v3, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;

    invoke-direct {v3}, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;-><init>()V

    throw v3

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/runtime/OatFile;->verifyMagic([B)V

    .line 83
    aget-byte v3, p1, v6

    if-ne v3, v5, :cond_1

    .line 84
    iput-boolean v7, p0, Lcom/taobao/android/runtime/OatFile;->is64bit:Z

    .line 93
    :goto_0
    iget-boolean v3, p0, Lcom/taobao/android/runtime/OatFile;->is64bit:Z

    if-eqz v3, :cond_3

    .line 94
    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/taobao/android/runtime/OatFile;->readLongAsSmallUint(I)I

    move-result v2

    .line 95
    .local v2, "offset":I
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Lcom/taobao/android/runtime/OatFile;->readUshort(I)I

    move-result v1

    .line 96
    .local v1, "entrySize":I
    const/16 v3, 0x3c

    invoke-virtual {p0, v3}, Lcom/taobao/android/runtime/OatFile;->readUshort(I)I

    move-result v0

    .line 103
    .local v0, "entryCount":I
    :goto_1
    mul-int v3, v1, v0

    add-int/2addr v3, v2

    int-to-long v4, v3

    cmp-long v3, v4, p2

    if-lez v3, :cond_4

    .line 104
    new-instance v3, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;

    const-string/jumbo v4, "The ELF section headers extend past the end of the file"

    invoke-direct {v3, v4}, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    .end local v0    # "entryCount":I
    .end local v1    # "entrySize":I
    .end local v2    # "offset":I
    :cond_1
    aget-byte v3, p1, v6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 86
    iput-boolean v5, p0, Lcom/taobao/android/runtime/OatFile;->is64bit:Z

    goto :goto_0

    .line 88
    :cond_2
    new-instance v3, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;

    const-string/jumbo v4, "Invalid word-size value: %x"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x5

    aget-byte v6, p1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_3
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/taobao/android/runtime/OatFile;->readSmallUint(I)I

    move-result v2

    .line 99
    .restart local v2    # "offset":I
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lcom/taobao/android/runtime/OatFile;->readUshort(I)I

    move-result v1

    .line 100
    .restart local v1    # "entrySize":I
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/taobao/android/runtime/OatFile;->readUshort(I)I

    move-result v0

    .restart local v0    # "entryCount":I
    goto :goto_1

    .line 127
    :cond_4
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lcom/taobao/android/runtime/OatFile;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 140
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "InputStream must support mark"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3

    .line 143
    :cond_0
    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 144
    const/4 v3, 0x4

    new-array v2, v3, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .local v2, "partialHeader":[B
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 153
    invoke-static {v2}, Lcom/taobao/android/runtime/OatFile;->verifyMagic([B)V

    .line 155
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 157
    const/16 v3, 0x40

    new-array v0, v3, [B

    .line 158
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 159
    new-instance v3, Lcom/taobao/android/runtime/OatFile;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lcom/taobao/android/runtime/OatFile;-><init>([BJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 148
    .end local v0    # "buf":[B
    :catch_0
    move-exception v3

    :try_start_4
    new-instance v3, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;

    invoke-direct {v3}, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private static verifyMagic([B)V
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/taobao/android/runtime/OatFile;->ELF_MAGIC:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 131
    aget-byte v1, p0, v0

    sget-object v2, Lcom/taobao/android/runtime/OatFile;->ELF_MAGIC:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 132
    new-instance v1, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;

    invoke-direct {v1}, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;-><init>()V

    throw v1

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method
