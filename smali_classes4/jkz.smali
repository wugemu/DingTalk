.class public Ljkz;
.super Ljava/lang/Object;
.source "ChocolateCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljkz$b;,
        Ljkz$c;,
        Ljkz$f;,
        Ljkz$e;,
        Ljkz$d;,
        Ljkz$a;,
        Ljkz$g;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljkz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljkz$c;

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:Ljava/io/RandomAccessFile;

.field private j:Ljava/nio/channels/FileChannel;

.field private k:Ljava/nio/channels/FileLock;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/io/File;

.field private o:Ljava/nio/ByteBuffer;

.field private p:Ljava/nio/ByteBuffer;

.field private q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private r:Z

.field private s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljkz$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Ljkz$a;

.field private u:Z

.field private v:Ljkz$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljkz;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "isProcessSafe"    # Z

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v0, 0x32

    iput v0, p0, Ljkz;->c:I

    .line 101
    const/4 v0, 0x3

    iput v0, p0, Ljkz;->d:I

    .line 102
    const/16 v0, 0xa

    iput v0, p0, Ljkz;->e:I

    .line 128
    iput-boolean v1, p0, Ljkz;->r:Z

    .line 134
    iput-boolean v1, p0, Ljkz;->u:Z

    .line 176
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 177
    const/16 v0, 0x580

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    .line 178
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljkz;->p:Ljava/nio/ByteBuffer;

    .line 179
    new-instance v0, Ljkz$a;

    invoke-direct {v0}, Ljkz$a;-><init>()V

    iput-object v0, p0, Ljkz;->t:Ljkz$a;

    .line 180
    iput-boolean p1, p0, Ljkz;->l:Z

    .line 181
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Z)Ljkz$f;
    .locals 6
    .param p1, "indexBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "overwrite"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 698
    .line 39718
    new-instance v2, Ljkz$f;

    invoke-direct {v2}, Ljkz$f;-><init>()V

    .line 39719
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Ljkz$f;->a:I

    .line 39721
    iget v4, v2, Ljkz$f;->a:I

    const v5, 0x19861103

    if-eq v4, v5, :cond_2

    move-object v2, v3

    .line 701
    .local v2, "index":Ljkz$f;
    :goto_0
    if-eqz v2, :cond_0

    iget-byte v4, v2, Ljkz$f;->c:B

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x16

    const/16 v5, 0x580

    if-le v4, v5, :cond_3

    :cond_0
    move-object v2, v3

    .line 710
    .end local v2    # "index":Ljkz$f;
    :cond_1
    return-object v2

    .line 39724
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Ljkz$f;->b:B

    .line 39725
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Ljkz$f;->c:B

    .line 39726
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Ljkz$f;->d:I

    .line 39727
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Ljkz$f;->e:I

    .line 39728
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, v2, Ljkz$f;->f:J

    goto :goto_0

    .line 705
    .restart local v2    # "index":Ljkz$f;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-byte v4, v2, Ljkz$f;->c:B

    if-ge v1, v4, :cond_1

    .line 40583
    if-nez p1, :cond_4

    move-object v0, v3

    .line 707
    .local v0, "co":Ljkz$d;
    :goto_2
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v2}, Ljkz;->a(Ljkz$d;ZLjkz$f;)V

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40585
    .end local v0    # "co":Ljkz$d;
    :cond_4
    new-instance v0, Ljkz$d;

    invoke-direct {v0}, Ljkz$d;-><init>()V

    .line 40586
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Ljkz$d;->a:I

    .line 40587
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v0, Ljkz$d;->b:B

    .line 40588
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v0, Ljkz$d;->c:B

    .line 40589
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Ljkz$d;->d:I

    .line 40590
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Ljkz$d;->e:I

    .line 40591
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Ljkz$d;->f:I

    .line 40592
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Ljkz$d;->g:I

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;IZ)Ljkz;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "maxSize"    # I
    .param p2, "isProcessSafe"    # Z

    .prologue
    const/4 v1, 0x0

    .line 150
    const-class v2, Ljkz;

    monitor-enter v2

    .line 151
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const-string/jumbo v3, "ChocolateCache"

    const-string/jumbo v4, "fileName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v2

    move-object v0, v1

    .line 169
    :goto_0
    return-object v0

    .line 156
    :cond_0
    const/high16 v3, 0x100000

    if-ge p1, v3, :cond_1

    .line 157
    const-string/jumbo v3, "ChocolateCache"

    const-string/jumbo v4, "size must larger than1048576"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 160
    :cond_1
    sget-object v3, Ljkz;->a:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljkz;

    .line 161
    .local v0, "instance":Ljkz;
    if-eqz v0, :cond_2

    .line 162
    monitor-exit v2

    goto :goto_0

    .line 171
    .end local v0    # "instance":Ljkz;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    .restart local v0    # "instance":Ljkz;
    :cond_2
    :try_start_1
    new-instance v0, Ljkz;

    .end local v0    # "instance":Ljkz;
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljkz;-><init>(Z)V

    .line 165
    .restart local v0    # "instance":Ljkz;
    invoke-direct {v0, p0, p1}, Ljkz;->d(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    sget-object v1, Ljkz;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v2

    goto :goto_0

    .line 169
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljkz$d;ZLjkz$f;)V
    .locals 6
    .param p1, "co"    # Ljkz$d;
    .param p2, "overwrite"    # Z
    .param p3, "index"    # Ljkz$f;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 720
    if-eqz p1, :cond_0

    iget v1, p1, Ljkz$d;->d:I

    if-nez v1, :cond_2

    .line 721
    :cond_0
    const-string/jumbo v1, "ChocolateCache"

    const-string/jumbo v2, "err hashcode 0: on load file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_1
    :goto_0
    return-void

    .line 725
    :cond_2
    iget v1, p1, Ljkz$d;->a:I

    iget-object v2, p0, Ljkz;->b:Ljkz$c;

    .line 40738
    iget v2, v2, Ljkz$c;->d:I

    .line 725
    if-ge v1, v2, :cond_3

    if-eqz p3, :cond_4

    iget-byte v1, p1, Ljkz$d;->b:B

    iget-byte v2, p3, Ljkz$f;->b:B

    if-eq v1, v2, :cond_4

    .line 726
    :cond_3
    const-string/jumbo v1, "ChocolateCache"

    const-string/jumbo v2, "err object: on load file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    :cond_4
    iget v1, p1, Ljkz$d;->e:I

    if-eqz v1, :cond_5

    .line 732
    iget-wide v2, p0, Ljkz;->g:J

    iget v1, p1, Ljkz$d;->e:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljkz;->g:J

    .line 733
    iget-wide v2, p0, Ljkz;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljkz;->h:J

    .line 736
    :cond_5
    iget-object v1, p0, Ljkz;->s:Landroid/util/SparseArray;

    iget v2, p1, Ljkz$d;->d:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 737
    .local v0, "categoryMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    if-nez v0, :cond_6

    .line 738
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "categoryMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 739
    .restart local v0    # "categoryMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    iget-object v1, p0, Ljkz;->s:Landroid/util/SparseArray;

    iget v2, p1, Ljkz$d;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    :cond_6
    iget v1, p1, Ljkz$d;->f:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_1

    .line 743
    :cond_7
    iget v1, p1, Ljkz$d;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Ljkz;)V
    .locals 3
    .param p0, "x0"    # Ljkz;

    .prologue
    .line 72
    .line 50779
    :try_start_0
    iget-object v0, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 50780
    const-string/jumbo v0, "ChocolateCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CossCache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been delete & now close the handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50781
    iget-object v0, p0, Ljkz;->k:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 50782
    iget-object v0, p0, Ljkz;->k:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 50783
    :cond_0
    iget-object v0, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 50784
    iget-object v0, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 50785
    :cond_1
    iget-object v0, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    .line 50786
    iget-object v0, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50791
    :cond_2
    iget-object v0, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 50792
    :goto_0
    return-void

    .line 50787
    :catch_0
    move-exception v0

    .line 50789
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50791
    iget-object v0, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private a(Ljkz$d;)Z
    .locals 8
    .param p1, "co"    # Ljkz$d;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 940
    iget-byte v4, p1, Ljkz$d;->b:B

    iget-object v5, p0, Ljkz;->b:Ljkz$c;

    .line 42738
    iget-byte v5, v5, Ljkz$c;->f:B

    .line 940
    if-ne v4, v5, :cond_0

    .line 941
    iget-object v4, p0, Ljkz;->b:Ljkz$c;

    .line 43738
    iget v4, v4, Ljkz$c;->d:I

    .line 941
    iget-object v5, p0, Ljkz;->b:Ljkz$c;

    .line 44738
    iget v5, v5, Ljkz$c;->e:I

    .line 941
    sub-int/2addr v4, v5

    iget v5, p1, Ljkz$d;->a:I

    add-int v0, v4, v5

    .line 945
    .local v0, "currentInterval":I
    :goto_0
    iget v4, p0, Ljkz;->f:I

    if-le v0, v4, :cond_1

    move v2, v3

    .line 957
    :goto_1
    return v2

    .line 943
    .end local v0    # "currentInterval":I
    :cond_0
    iget v4, p1, Ljkz$d;->a:I

    iget-object v5, p0, Ljkz;->b:Ljkz$c;

    .line 45738
    iget v5, v5, Ljkz$c;->e:I

    .line 943
    sub-int v0, v4, v5

    .restart local v0    # "currentInterval":I
    goto :goto_0

    .line 949
    :cond_1
    iget-byte v4, p1, Ljkz$d;->c:B

    div-int/lit8 v1, v4, 0x3

    .line 950
    .local v1, "relocateInterval":I
    if-le v1, v2, :cond_2

    move v1, v2

    .end local v1    # "relocateInterval":I
    :cond_2
    mul-int/lit8 v1, v1, 0x32

    .line 952
    .restart local v1    # "relocateInterval":I
    int-to-float v2, v1

    iget-wide v4, p0, Ljkz;->g:J

    long-to-float v4, v4

    iget-wide v6, p0, Ljkz;->h:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    mul-float/2addr v2, v4

    float-to-int v1, v2

    .line 955
    mul-int/lit16 v2, v0, 0x80

    if-ge v2, v1, :cond_3

    .line 956
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 957
    goto :goto_1
.end method

.method private a(Z)Z
    .locals 10
    .param p1, "end"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1143
    iget-object v6, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1144
    .local v3, "len":I
    const/16 v6, 0x2c

    if-lt v3, v6, :cond_0

    .line 1146
    iget-object v6, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1149
    new-instance v1, Ljkz$f;

    invoke-direct {v1}, Ljkz$f;-><init>()V

    .line 1150
    .local v1, "coi":Ljkz$f;
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 50741
    iget v6, v6, Ljkz$c;->e:I

    .line 1150
    iput v6, v1, Ljkz$f;->e:I

    .line 1151
    div-int/lit8 v6, v3, 0x16

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    iput-byte v6, v1, Ljkz$f;->c:B

    .line 1152
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 50742
    iget-byte v6, v6, Ljkz$c;->f:B

    .line 1152
    iput-byte v6, v1, Ljkz$f;->b:B

    .line 1153
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 50743
    iget v6, v6, Ljkz$c;->c:I

    .line 1153
    iput v6, v1, Ljkz$f;->d:I

    .line 1154
    iget-object v6, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-static {v6, v1}, Ljkz$f;->a(Ljava/nio/ByteBuffer;Ljkz$f;)V

    .line 1157
    :try_start_0
    iget-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    iget-object v7, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v8, p0, Ljkz;->b:Ljkz$c;

    .line 50744
    iget v8, v8, Ljkz$c;->b:I

    .line 1157
    mul-int/lit16 v8, v8, 0x80

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 1158
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    iget-object v7, p0, Ljkz;->b:Ljkz$c;

    .line 50745
    iget v7, v7, Ljkz$c;->b:I

    .line 50746
    iput v7, v6, Ljkz$c;->c:I

    .line 1159
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    iget-object v7, p0, Ljkz;->b:Ljkz$c;

    .line 50747
    iget v7, v7, Ljkz$c;->e:I

    .line 50748
    iput v7, v6, Ljkz$c;->b:I

    .line 1160
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    const/16 v7, 0xb

    invoke-static {v6, v7}, Ljkz$c;->a(Ljkz$c;I)I

    .line 1163
    iget-object v6, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    const/16 v7, 0x16

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    .end local v1    # "coi":Ljkz$f;
    :cond_0
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 50749
    iget v6, v6, Ljkz$c;->e:I

    .line 1173
    iget-object v7, p0, Ljkz;->b:Ljkz$c;

    .line 50750
    iget v7, v7, Ljkz$c;->d:I

    .line 1173
    if-ge v6, v7, :cond_1

    if-eqz p1, :cond_2

    .line 1175
    :cond_1
    invoke-direct {p0}, Ljkz;->f()V

    .line 1177
    iget-object v6, p0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v6}, Ljkz$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1178
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 50751
    iput v5, v6, Ljkz$c;->b:I

    .line 1179
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    const/16 v7, 0xc

    .line 50752
    iput v7, v6, Ljkz$c;->e:I

    .line 1180
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 50753
    iget-byte v7, v6, Ljkz$c;->f:B

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    iput-byte v7, v6, Ljkz$c;->f:B

    .line 1181
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    invoke-static {v0, v6}, Ljkz$c;->a(Ljava/nio/ByteBuffer;Ljkz$c;)V

    .line 1183
    const/16 v6, 0x80

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1185
    new-instance v1, Ljkz$f;

    invoke-direct {v1}, Ljkz$f;-><init>()V

    .line 1186
    .restart local v1    # "coi":Ljkz$f;
    iput v5, v1, Ljkz$f;->e:I

    .line 1187
    iput-byte v4, v1, Ljkz$f;->c:B

    .line 1188
    iget-object v4, p0, Ljkz;->b:Ljkz$c;

    .line 50754
    iget-byte v4, v4, Ljkz$c;->f:B

    .line 1188
    iput-byte v4, v1, Ljkz$f;->b:B

    .line 1189
    iget-object v4, p0, Ljkz;->b:Ljkz$c;

    .line 50755
    iget v4, v4, Ljkz$c;->c:I

    .line 1189
    iput v4, v1, Ljkz$f;->d:I

    .line 1190
    invoke-static {v0, v1}, Ljkz$f;->a(Ljava/nio/ByteBuffer;Ljkz$f;)V

    .line 1192
    :try_start_1
    iget-object v4, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-static {v6, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v6, v8, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1196
    :goto_0
    iget-object v4, p0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v4, v0}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "coi":Ljkz$f;
    :cond_2
    move v4, v5

    .line 1199
    :goto_1
    return v4

    .line 1164
    .restart local v1    # "coi":Ljkz$f;
    :catch_0
    move-exception v2

    .line 1165
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "ChocolateCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "write file info failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v5, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 1193
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v2

    .line 1194
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "ChocolateCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "write file info failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljkz$d;)Z
    .locals 4
    .param p1, "co"    # Ljkz$d;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1097
    if-nez p1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return v0

    .line 1100
    :cond_1
    iget v2, p1, Ljkz$d;->e:I

    if-eqz v2, :cond_0

    .line 1103
    iget-byte v2, p1, Ljkz$d;->b:B

    iget-object v3, p0, Ljkz;->b:Ljkz$c;

    .line 47738
    iget-byte v3, v3, Ljkz$c;->f:B

    .line 1103
    if-ne v2, v3, :cond_2

    iget v2, p1, Ljkz$d;->a:I

    iget-object v3, p0, Ljkz;->b:Ljkz$c;

    .line 48738
    iget v3, v3, Ljkz$c;->e:I

    .line 1103
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 1104
    goto :goto_0

    .line 1106
    :cond_2
    iget-byte v2, p1, Ljkz$d;->b:B

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljkz;->b:Ljkz$c;

    .line 49738
    iget-byte v3, v3, Ljkz$c;->f:B

    .line 1106
    if-ne v2, v3, :cond_0

    iget v2, p1, Ljkz$d;->a:I

    iget-object v3, p0, Ljkz;->b:Ljkz$c;

    .line 50738
    iget v3, v3, Ljkz$c;->e:I

    .line 1106
    if-ge v2, v3, :cond_3

    iget v2, p1, Ljkz$d;->a:I

    iget-object v3, p0, Ljkz;->b:Ljkz$c;

    .line 50739
    iget v3, v3, Ljkz$c;->b:I

    .line 1106
    if-lt v2, v3, :cond_0

    iget v2, p1, Ljkz$d;->a:I

    iget-object v3, p0, Ljkz;->b:Ljkz$c;

    .line 50740
    iget v3, v3, Ljkz$c;->b:I

    .line 1106
    add-int/lit8 v3, v3, 0xb

    if-ge v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 1107
    goto :goto_0
.end method

.method private c(Ljkz$d;)Z
    .locals 5
    .param p1, "co"    # Ljkz$d;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1217
    iget-object v3, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1218
    .local v0, "pos":I
    iget-object v3, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    .line 50756
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 1220
    :cond_0
    :goto_0
    iget-object v3, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    iget-object v4, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 1221
    invoke-direct {p0, v1}, Ljkz;->a(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1223
    iget-object v2, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1229
    :goto_1
    return v1

    .line 50758
    :cond_1
    iget v4, p1, Ljkz$d;->a:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50759
    iget-byte v4, p1, Ljkz$d;->b:B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50760
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50761
    iget v4, p1, Ljkz$d;->d:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50762
    iget v4, p1, Ljkz$d;->e:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50763
    iget v4, p1, Ljkz$d;->f:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50764
    iget v4, p1, Ljkz$d;->g:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 1228
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Ljkz;->a(Ljkz$d;ZLjkz$f;)V

    move v1, v2

    .line 1229
    goto :goto_1
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 315
    iget-object v1, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    .line 319
    iget-object v1, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ChocolateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reopen file failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v1, "ChocolateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CossCache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljkz;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been delete & recovering"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_1
    iget-object v1, p0, Ljkz;->k:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Ljkz;->k:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 331
    :cond_2
    iget-object v1, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 333
    :cond_3
    iget-object v1, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_4

    .line 334
    iget-object v1, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :cond_4
    :goto_1
    iget-object v1, p0, Ljkz;->m:Ljava/lang/String;

    iget-object v2, p0, Ljkz;->b:Ljkz$c;

    .line 2738
    iget v2, v2, Ljkz$c;->d:I

    .line 338
    mul-int/lit16 v2, v2, 0x80

    invoke-direct {p0, v1, v2}, Ljkz;->d(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const-string/jumbo v1, "ChocolateCache"

    const-string/jumbo v2, "reinit failed : on delete event"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Ljkz;->a()V

    goto :goto_0

    .line 335
    :catch_1
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ChocolateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "close file failed : on delete event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private d(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "maxSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 348
    iget-boolean v6, p0, Ljkz;->u:Z

    if-eqz v6, :cond_0

    .line 349
    const/4 v6, 0x0

    .line 456
    :goto_0
    return v6

    .line 350
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 351
    .local v4, "time":J
    iput-object p1, p0, Ljkz;->m:Ljava/lang/String;

    .line 352
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Ljkz;->n:Ljava/io/File;

    .line 354
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 355
    new-instance v6, Ljkz$c;

    invoke-direct {v6}, Ljkz$c;-><init>()V

    iput-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 356
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    const/4 v7, 0x1

    .line 3738
    iput v7, v6, Ljkz$c;->b:I

    .line 357
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    const/4 v7, 0x0

    .line 4738
    iput v7, v6, Ljkz$c;->c:I

    .line 358
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    const/16 v7, 0xc

    .line 5738
    iput v7, v6, Ljkz$c;->e:I

    .line 359
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 6738
    const/4 v7, 0x0

    iput-byte v7, v6, Ljkz$c;->f:B

    .line 360
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 7738
    const/16 v7, 0x80

    iput v7, v6, Ljkz$c;->g:I

    .line 7748
    add-int/lit8 v6, p2, 0x7f

    and-int/lit8 p2, v6, -0x80

    .line 362
    const/high16 v6, 0x40000000    # 2.0f

    if-le p2, v6, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    .line 364
    :cond_1
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    div-int/lit16 v7, p2, 0x80

    .line 8738
    iput v7, v6, Ljkz$c;->d:I

    .line 369
    iget-object v6, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 371
    :try_start_0
    iget-object v6, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "rw"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    .line 384
    iget-object v6, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    iput-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    iget-boolean v6, p0, Ljkz;->l:Z

    if-eqz v6, :cond_6

    .line 393
    :try_start_2
    iget-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    if-eqz v6, :cond_3

    .line 394
    iget-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v6

    iput-object v6, p0, Ljkz;->k:Ljava/nio/channels/FileLock;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 400
    :cond_3
    :goto_1
    iget-object v6, p0, Ljkz;->k:Ljava/nio/channels/FileLock;

    if-nez v6, :cond_6

    .line 402
    :try_start_3
    iget-object v6, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    if-eqz v6, :cond_4

    .line 403
    iget-object v6, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 408
    :cond_4
    :goto_2
    :try_start_4
    iget-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    if-eqz v6, :cond_5

    .line 409
    iget-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 413
    :cond_5
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ChocolateCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "create file failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 385
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ChocolateCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "open file failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ChocolateCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "lock file failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 405
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ChocolateCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "close file failed: on lock failed "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 410
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 411
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ChocolateCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "close file failed: on lock failed "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 418
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    new-instance v6, Ljkz$g;

    iget-object v7, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    invoke-direct {v6, p0, v7}, Ljkz$g;-><init>(Ljkz;Ljava/lang/String;)V

    iput-object v6, p0, Ljkz;->v:Ljkz$g;

    .line 419
    iget-object v6, p0, Ljkz;->v:Ljkz$g;

    invoke-virtual {v6}, Ljkz$g;->startWatching()V

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "lock success process is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    new-instance v6, Landroid/util/SparseArray;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v6, p0, Ljkz;->s:Landroid/util/SparseArray;

    .line 425
    invoke-direct {p0}, Ljkz;->e()Ljava/util/Vector;

    move-result-object v3

    .line 427
    .local v3, "needRecover":Ljava/util/Vector;, "Ljava/util/Vector<Ljkz$d;>;"
    iget-object v6, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    const/16 v7, 0x16

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 429
    if-eqz v3, :cond_7

    .line 430
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljkz$d;

    .line 431
    .local v0, "co":Ljkz$d;
    invoke-direct {p0, v0}, Ljkz;->c(Ljkz$d;)Z

    goto :goto_4

    .line 438
    .end local v0    # "co":Ljkz$d;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_5
    iget-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    iget-object v8, p0, Ljkz;->b:Ljkz$c;

    .line 9738
    iget v8, v8, Ljkz$c;->d:I

    .line 438
    mul-int/lit16 v8, v8, 0x80

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 440
    iget-object v6, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    iget-object v7, p0, Ljkz;->b:Ljkz$c;

    .line 10738
    iget v7, v7, Ljkz$c;->d:I

    .line 440
    mul-int/lit16 v7, v7, 0x80

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 450
    :cond_8
    :goto_5
    div-int/lit16 v6, p2, 0x80

    iget-object v7, p0, Ljkz;->b:Ljkz$c;

    .line 11738
    iget v7, v7, Ljkz$c;->d:I

    .line 450
    if-le v6, v7, :cond_9

    .line 452
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    div-int/lit16 v7, p2, 0x80

    .line 12738
    iput v7, v6, Ljkz$c;->d:I

    .line 454
    :cond_9
    iget-object v6, p0, Ljkz;->b:Ljkz$c;

    .line 13738
    iget v6, v6, Ljkz$c;->d:I

    .line 454
    div-int/lit8 v6, v6, 0x4

    iput v6, p0, Ljkz;->f:I

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "chocloate cache item num : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "init time cost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 442
    :catch_5
    move-exception v1

    .line 443
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ChocolateCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "file to be set smaller:to truncate file failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private e()Ljava/util/Vector;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljkz$d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    const-wide/16 v24, 0x600

    cmp-long v21, v22, v24

    if-gtz v21, :cond_1

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 672
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_0

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljkz$c;->a(Ljava/nio/ByteBuffer;Ljkz$c;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 677
    new-instance v7, Ljkz$f;

    invoke-direct {v7}, Ljkz$f;-><init>()V

    .line 678
    .local v7, "coi":Ljkz$f;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v7, Ljkz$f;->e:I

    .line 679
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-byte v0, v7, Ljkz$f;->c:B

    .line 680
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-byte v0, v7, Ljkz$f;->b:B

    .line 681
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v7, Ljkz$f;->d:I

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Ljkz$f;->a(Ljava/nio/ByteBuffer;Ljkz$f;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->position()I

    move-result v24

    invoke-static/range {v22 .. v24}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 688
    .end local v7    # "coi":Ljkz$f;
    :cond_0
    :goto_2
    const/4 v15, 0x0

    :goto_3
    return-object v15

    .line 471
    :catch_0
    move-exception v8

    .line 472
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v21, "ChocolateCache"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "clean file failed: on load file "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v14, 0x0

    .line 479
    .local v14, "needBackWard":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v22

    add-int/lit8 v22, v22, -0x80

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v12, v0

    .line 481
    .local v12, "len":J
    const-wide/16 v22, 0x80

    cmp-long v21, v12, v22

    if-gez v21, :cond_2

    .line 482
    const-string/jumbo v21, "ChocolateCache"

    const-string/jumbo v22, "load file failed: on read info"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 655
    .end local v12    # "len":J
    :catch_1
    move-exception v8

    .line 656
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "ChocolateCache"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "load file failed: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 486
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v12    # "len":J
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v22

    add-int/lit8 v22, v22, -0x80

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    .line 13757
    if-nez v21, :cond_3

    .line 13758
    const/4 v10, 0x0

    .line 14738
    .local v10, "info":Ljkz$c;
    :goto_4
    iget v0, v10, Ljkz$c;->a:I

    move/from16 v21, v0

    .line 490
    const v22, 0x19820626

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 491
    const-string/jumbo v21, "ChocolateCache"

    const-string/jumbo v22, "load file failed: not a cosscache file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 657
    .end local v10    # "info":Ljkz$c;
    .end local v12    # "len":J
    :catch_2
    move-exception v8

    .line 658
    .local v8, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v21, "ChocolateCache"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "load file failed: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 13759
    .end local v8    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v12    # "len":J
    :cond_3
    :try_start_5
    new-instance v10, Ljkz$c;

    invoke-direct {v10}, Ljkz$c;-><init>()V

    .line 13760
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Ljkz$c;->a:I

    .line 13761
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Ljkz$c;->d:I

    .line 13762
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    move/from16 v0, v22

    iput-byte v0, v10, Ljkz$c;->f:B

    .line 13763
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Ljkz$c;->g:I

    goto :goto_4

    .line 15738
    .restart local v10    # "info":Ljkz$c;
    :cond_4
    iget v0, v10, Ljkz$c;->g:I

    move/from16 v21, v0

    .line 496
    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 497
    const-string/jumbo v21, "ChocolateCache"

    const-string/jumbo v22, "load file failed: err file info"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 16738
    :cond_5
    iget v0, v10, Ljkz$c;->d:I

    move/from16 v21, v0

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    .line 17738
    move-object/from16 v0, v22

    iget v0, v0, Ljkz$c;->d:I

    move/from16 v22, v0

    .line 505
    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 18738
    move-object/from16 v0, v21

    iget v0, v0, Ljkz$c;->d:I

    move/from16 v21, v0

    .line 19738
    move/from16 v0, v21

    iput v0, v10, Ljkz$c;->d:I

    .line 511
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 19768
    iget v0, v10, Ljkz$c;->b:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Ljkz$c;->b:I

    .line 19770
    iget v0, v10, Ljkz$c;->d:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Ljkz$c;->d:I

    .line 19771
    iget v0, v10, Ljkz$c;->e:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Ljkz$c;->e:I

    .line 19772
    iget-byte v0, v10, Ljkz$c;->f:B

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-byte v0, v1, Ljkz$c;->f:B

    .line 19773
    iget v0, v10, Ljkz$c;->g:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Ljkz$c;->g:I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 515
    const/16 v16, 0x0

    .line 516
    .local v16, "nextIndexPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x80

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v12, v0

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v21, v12, v22

    if-gez v21, :cond_7

    .line 519
    const-string/jumbo v21, "ChocolateCache"

    const-string/jumbo v22, "load file failed: on read first index"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 522
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljkz;->a(Ljava/nio/ByteBuffer;Z)Ljkz$f;

    move-result-object v9

    .line 525
    .local v9, "firstIndex":Ljkz$f;
    if-nez v9, :cond_8

    .line 526
    const-string/jumbo v21, "ChocolateCache"

    const-string/jumbo v22, "load file failed: on parse first index"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 531
    :cond_8
    iget-byte v0, v9, Ljkz$f;->c:B

    move/from16 v21, v0

    if-eqz v21, :cond_9

    iget v0, v9, Ljkz$f;->e:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 532
    const/16 v16, 0x1

    .line 536
    :cond_9
    iget v0, v9, Ljkz$f;->d:I

    move/from16 v19, v0

    .line 538
    .local v19, "preIndexPos":I
    const/16 v21, 0xc

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 539
    const/4 v14, 0x1

    .line 541
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 20738
    move/from16 v0, v16

    move-object/from16 v1, v21

    iput v0, v1, Ljkz$c;->c:I

    .line 542
    iget v0, v9, Ljkz$f;->e:I

    move/from16 v16, v0

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    if-gtz v16, :cond_c

    const/16 v21, 0x1

    .line 21738
    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Ljkz$c;->b:I

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    add-int/lit8 v22, v16, 0xb

    .line 22738
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Ljkz$c;->e:I

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 23738
    move-object/from16 v0, v21

    iget v0, v0, Ljkz$c;->e:I

    move/from16 v21, v0

    .line 24738
    iget v0, v10, Ljkz$c;->d:I

    move/from16 v23, v0

    .line 546
    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    .line 25738
    iget v0, v10, Ljkz$c;->d:I

    move/from16 v21, v0

    .line 27738
    :goto_6
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Ljkz$c;->e:I

    .line 548
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 28738
    iget v0, v10, Ljkz$c;->d:I

    move/from16 v21, v0

    .line 551
    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    .line 552
    const/4 v14, 0x0

    .line 574
    :cond_b
    :goto_7
    if-eqz v14, :cond_10

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 30738
    move-object/from16 v0, v21

    iget v0, v0, Ljkz$c;->d:I

    move/from16 v20, v0

    .line 580
    .local v20, "successPre":I
    :goto_8
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 31738
    iget v0, v10, Ljkz$c;->d:I

    move/from16 v21, v0

    .line 580
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 32738
    move-object/from16 v0, v21

    iget v0, v0, Ljkz$c;->b:I

    move/from16 v21, v0

    .line 580
    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_f

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v12, v0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v21, v12, v22

    if-ltz v21, :cond_f

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljkz;->a(Ljava/nio/ByteBuffer;Z)Ljkz$f;

    move-result-object v9

    .line 593
    if-eqz v9, :cond_f

    .line 597
    move/from16 v20, v19

    .line 598
    iget v0, v9, Ljkz$f;->d:I

    move/from16 v19, v0

    .line 600
    goto/16 :goto_8

    .end local v20    # "successPre":I
    :cond_c
    move/from16 v21, v16

    .line 544
    goto/16 :goto_5

    .line 546
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 26738
    move-object/from16 v0, v21

    iget v0, v0, Ljkz$c;->e:I

    move/from16 v21, v0

    goto/16 :goto_6

    .line 555
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v12, v0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v21, v12, v22

    if-ltz v21, :cond_b

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljkz;->a(Ljava/nio/ByteBuffer;Z)Ljkz$f;

    move-result-object v9

    .line 565
    if-eqz v9, :cond_b

    .line 568
    iget v0, v9, Ljkz$f;->e:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    iget v0, v9, Ljkz$f;->d:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    .line 29738
    move-object/from16 v0, v22

    iget v0, v0, Ljkz$c;->c:I

    move/from16 v22, v0

    .line 568
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    goto/16 :goto_7

    .line 601
    .restart local v20    # "successPre":I
    :cond_f
    move/from16 v19, v20

    .line 604
    .end local v20    # "successPre":I
    :cond_10
    if-nez v19, :cond_11

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    const-wide/16 v24, 0x80

    add-long v22, v22, v24

    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    const-wide/16 v24, 0x80

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    .line 610
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 33738
    move-object/from16 v0, v21

    iget v0, v0, Ljkz$c;->b:I

    move/from16 v21, v0

    .line 610
    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_12

    .line 611
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 617
    :cond_12
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "recover data index: start: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    .line 34738
    move-object/from16 v0, v22

    iget v0, v0, Ljkz$c;->b:I

    move/from16 v22, v0

    .line 617
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " end: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->t:Ljkz$a;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljkz$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 619
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    new-instance v15, Ljava/util/Vector;

    const/16 v21, 0x3f

    move/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/util/Vector;-><init>(I)V

    .line 620
    .local v15, "needRecover":Ljava/util/Vector;, "Ljava/util/Vector<Ljkz$d;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 35738
    move-object/from16 v0, v21

    iget v0, v0, Ljkz$c;->b:I

    move/from16 v18, v0

    .line 620
    .local v18, "pos":I
    :cond_13
    :goto_9
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljkz$e;->a(Ljava/nio/ByteBuffer;)Ljkz$e;

    move-result-object v6

    .line 627
    .local v6, "coh":Ljkz$e;
    if-eqz v6, :cond_16

    iget-short v0, v6, Ljkz$e;->e:S

    move/from16 v21, v0

    if-eqz v21, :cond_16

    iget v0, v6, Ljkz$e;->a:I

    move/from16 v21, v0

    const v22, 0x20120718

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 630
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    const/16 v22, 0x0

    iget-short v0, v6, Ljkz$e;->e:S

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 631
    .local v11, "keyBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v21, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x19

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v11, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v12, v0

    .line 632
    iget-short v0, v6, Ljkz$e;->e:S

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v21, v12, v22

    if-nez v21, :cond_14

    .line 633
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 634
    iget-short v0, v6, Ljkz$e;->e:S

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v11, v0, v6}, Ljkz$e;->a(Ljava/nio/ByteBuffer;ILjkz$e;)V

    .line 635
    move/from16 v0, v18

    invoke-static {v6, v0}, Ljkz$e;->a(Ljkz$e;I)Ljkz$d;

    move-result-object v5

    .line 637
    .local v5, "co":Ljkz$d;
    iget-byte v0, v6, Ljkz$e;->b:B

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    .line 36738
    move-object/from16 v0, v22

    iget-byte v0, v0, Ljkz$c;->f:B

    move/from16 v22, v0

    .line 637
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 639
    invoke-virtual {v15, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 643
    .end local v5    # "co":Ljkz$d;
    :cond_14
    :goto_a
    iget-short v0, v6, Ljkz$e;->e:S

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x19

    iget v0, v6, Ljkz$e;->c:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget-short v0, v6, Ljkz$e;->d:S

    move/from16 v22, v0

    add-int v17, v21, v22

    .line 645
    .local v17, "objectLen":I
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    add-int v18, v18, v21

    .line 647
    iget-byte v0, v6, Ljkz$e;->b:B

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v22, v0

    .line 37738
    move-object/from16 v0, v22

    iget-byte v0, v0, Ljkz$c;->f:B

    move/from16 v22, v0

    .line 647
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->b:Ljkz$c;

    move-object/from16 v21, v0

    .line 38738
    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Ljkz$c;->e:I

    goto/16 :goto_9

    .line 641
    .end local v17    # "objectLen":I
    .restart local v5    # "co":Ljkz$d;
    :cond_15
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v5, v1, v2}, Ljkz;->a(Ljkz$d;ZLjkz$f;)V

    goto :goto_a

    .line 651
    .end local v5    # "co":Ljkz$d;
    .end local v11    # "keyBuffer":Ljava/nio/ByteBuffer;
    :cond_16
    add-int/lit8 v18, v18, 0x1

    .line 652
    goto/16 :goto_9

    .line 653
    .end local v6    # "coh":Ljkz$e;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Ljkz;->t:Ljkz$a;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 666
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "firstIndex":Ljkz$f;
    .end local v10    # "info":Ljkz$c;
    .end local v12    # "len":J
    .end local v14    # "needBackWard":Z
    .end local v15    # "needRecover":Ljava/util/Vector;, "Ljava/util/Vector<Ljkz$d;>;"
    .end local v16    # "nextIndexPos":I
    .end local v18    # "pos":I
    .end local v19    # "preIndexPos":I
    :catch_3
    move-exception v8

    .line 667
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v21, "ChocolateCache"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "clean file failed: on load file "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 685
    .end local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 686
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "ChocolateCache"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "write coss header failed: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private f()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1117
    iget-object v11, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1119
    .local v9, "size":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0x400

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1120
    .local v8, "needRemoveO":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x5

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1121
    .local v7, "needRemoveC":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v9, :cond_4

    .line 1122
    iget-object v11, p0, Ljkz;->s:Landroid/util/SparseArray;

    sub-int v12, v9, v3

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 1123
    .local v6, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    iget-object v11, p0, Ljkz;->s:Landroid/util/SparseArray;

    sub-int v12, v9, v3

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1124
    .local v2, "hashKey":I
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1125
    .local v10, "size2":I
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    if-gt v5, v10, :cond_1

    .line 1126
    sub-int v11, v10, v5

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljkz$d;

    .line 1127
    .local v1, "co":Ljkz$d;
    invoke-direct {p0, v1}, Ljkz;->b(Ljkz$d;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1128
    iget v11, v1, Ljkz$d;->f:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1130
    .end local v1    # "co":Ljkz$d;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1131
    .local v0, "category":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 1133
    .end local v0    # "category":Ljava/lang/Integer;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1134
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 1135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1137
    .end local v2    # "hashKey":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v6    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    .end local v10    # "size2":I
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1138
    .local v2, "hashKey":Ljava/lang/Integer;
    iget-object v11, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 1140
    .end local v2    # "hashKey":Ljava/lang/Integer;
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Ljkz$b;
    .locals 22
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "category"    # I

    .prologue
    .line 769
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    const/16 v19, 0x0

    .line 917
    :cond_0
    :goto_0
    return-object v19

    .line 772
    :cond_1
    const/4 v8, 0x0

    .line 773
    .local v8, "co":Ljkz$d;
    const/16 v18, 0x0

    .line 777
    .local v18, "ret":Ljkz$b;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 778
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljkz;->u:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v2

    if-nez v2, :cond_3

    .line 895
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto :goto_0

    .line 780
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 781
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    .line 782
    .local v13, "hash":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 783
    .local v16, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    if-nez v16, :cond_4

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto :goto_0

    .line 786
    :cond_4
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto :goto_0

    .line 792
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljkz$d;

    move-object v8, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 793
    if-nez v8, :cond_6

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 796
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljkz;->b(Ljkz$d;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 798
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 802
    :cond_7
    :try_start_5
    iget v2, v8, Ljkz$d;->a:I

    mul-int/lit16 v12, v2, 0x80

    .line 803
    .local v12, "fpos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2}, Ljkz$a;->a()Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v14

    .line 805
    .local v14, "keyBuffer":Ljava/nio/ByteBuffer;
    const/16 v2, 0x3e7

    :try_start_6
    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    int-to-long v4, v12

    invoke-virtual {v2, v14, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v15

    .line 808
    .local v15, "len":I
    const/16 v2, 0x19

    if-eq v15, v2, :cond_8

    .line 809
    const-string/jumbo v2, "ChocolateCache"

    const-string/jumbo v3, "read cache header failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 878
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 812
    :cond_8
    const/16 v2, 0x3e7

    :try_start_8
    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 814
    invoke-static {v14}, Ljkz$e;->a(Ljava/nio/ByteBuffer;)Ljkz$e;

    move-result-object v9

    .line 815
    .local v9, "coh":Ljkz$e;
    if-eqz v9, :cond_9

    iget-short v2, v9, Ljkz$e;->e:S

    .line 41689
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 815
    array-length v3, v3

    if-ne v2, v3, :cond_9

    iget v2, v9, Ljkz$e;->c:I

    iget-short v3, v9, Ljkz$e;->d:S

    add-int/2addr v2, v3

    const/high16 v3, 0x500000

    if-gt v2, v3, :cond_9

    iget-short v2, v9, Ljkz$e;->e:S

    const/16 v3, 0x400

    if-le v2, v3, :cond_a

    .line 817
    :cond_9
    const-string/jumbo v2, "ChocolateCache"

    const-string/jumbo v3, "err cache data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 878
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 823
    :cond_a
    add-int/lit8 v12, v12, 0x19

    .line 824
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-short v5, v9, Ljkz$e;->e:S

    invoke-static {v3, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    int-to-long v4, v12

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v15

    .line 825
    iget-short v2, v9, Ljkz$e;->e:S

    if-eq v2, v15, :cond_b

    .line 826
    const-string/jumbo v2, "ChocolateCache"

    const-string/jumbo v3, "read cache key err"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 878
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 830
    :cond_b
    :try_start_c
    iget-short v2, v9, Ljkz$e;->e:S

    invoke-static {v14, v2, v9}, Ljkz$e;->a(Ljava/nio/ByteBuffer;ILjkz$e;)V

    .line 832
    iget-object v2, v9, Ljkz$e;->k:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 833
    const-string/jumbo v2, "ChocolateCache"

    const-string/jumbo v3, "hash Conflict"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 878
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 838
    :cond_c
    :try_start_e
    iget v2, v9, Ljkz$e;->c:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 839
    .local v20, "valueBuffer":Ljava/nio/ByteBuffer;
    iget-short v2, v9, Ljkz$e;->e:S

    add-int/2addr v12, v2

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    int-to-long v4, v12

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v15

    .line 842
    iget v2, v9, Ljkz$e;->c:I

    if-eq v15, v2, :cond_d

    .line 843
    const-string/jumbo v2, "ChocolateCache"

    const-string/jumbo v3, "read data failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 878
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 848
    :cond_d
    :try_start_10
    iget-short v2, v9, Ljkz$e;->d:S

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 849
    .local v10, "desBuffer":Ljava/nio/ByteBuffer;
    iget v2, v9, Ljkz$e;->c:I

    add-int/2addr v12, v2

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    int-to-long v4, v12

    invoke-virtual {v2, v10, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v15

    .line 851
    iget-short v2, v9, Ljkz$e;->d:S

    if-eq v15, v2, :cond_e

    .line 852
    const-string/jumbo v2, "ChocolateCache"

    const-string/jumbo v3, "read description failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 878
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 856
    :cond_e
    :try_start_12
    new-instance v19, Ljkz$b;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljkz$b;-><init>(Ljkz;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 858
    .end local v18    # "ret":Ljkz$b;
    .local v19, "ret":Ljkz$b;
    :try_start_13
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ljkz$b;->a:[B

    .line 859
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Ljkz$b;->b:[B

    .line 861
    iget-byte v2, v8, Ljkz$d;->c:B

    if-nez v2, :cond_f

    .line 862
    iget-byte v2, v9, Ljkz$e;->g:B

    iput-byte v2, v8, Ljkz$d;->c:B

    .line 42565
    :cond_f
    iget-byte v2, v8, Ljkz$d;->c:B

    const/16 v3, 0xff

    if-ge v2, v3, :cond_10

    .line 42566
    iget-byte v2, v8, Ljkz$d;->c:B

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v8, Ljkz$d;->c:B

    .line 42567
    :cond_10
    iget-byte v2, v8, Ljkz$d;->c:B

    .line 863
    move-object/from16 v0, v19

    iput-byte v2, v0, Ljkz$b;->c:B

    .line 865
    iget-byte v2, v8, Ljkz$d;->c:B

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_11

    iget-byte v2, v8, Ljkz$d;->c:B

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_11

    .line 867
    iget-byte v2, v8, Ljkz$d;->c:B

    iput-byte v2, v9, Ljkz$e;->g:B

    .line 868
    const/16 v2, 0x3e7

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 869
    invoke-static {v14, v9}, Ljkz$e;->a(Ljava/nio/ByteBuffer;Ljkz$e;)V

    .line 870
    const/16 v2, 0x3e7

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    iget v3, v8, Ljkz$d;->a:I

    mul-int/lit16 v3, v3, 0x80

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 878
    :cond_11
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 881
    const/16 v17, 0x0

    .line 882
    .local v17, "needRelocate":Z
    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljkz;->a(Ljkz$d;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 883
    const/16 v17, 0x1

    .line 895
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 896
    if-eqz v17, :cond_0

    .line 897
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-object v5, v0, Ljkz$b;->a:[B

    move-object/from16 v0, v19

    iget-object v6, v0, Ljkz$b;->b:[B

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Ljkz;->a(Ljava/lang/String;I[B[BZ)Z

    .line 900
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 875
    .end local v9    # "coh":Ljkz$e;
    .end local v10    # "desBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "len":I
    .end local v17    # "needRelocate":Z
    .end local v19    # "ret":Ljkz$b;
    .end local v20    # "valueBuffer":Ljava/nio/ByteBuffer;
    .restart local v18    # "ret":Ljkz$b;
    :catch_0
    move-exception v11

    .line 876
    .local v11, "e":Ljava/io/IOException;
    :goto_1
    :try_start_16
    const-string/jumbo v2, "ChocolateCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "read cache failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 878
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v2, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 881
    const/16 v17, 0x0

    .line 882
    .restart local v17    # "needRelocate":Z
    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljkz;->a(Ljkz$d;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v18, :cond_13

    .line 883
    const/16 v17, 0x1

    .line 895
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 896
    if-eqz v17, :cond_14

    .line 897
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Ljkz$b;->a:[B

    move-object/from16 v0, v18

    iget-object v6, v0, Ljkz$b;->b:[B

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Ljkz;->a(Ljava/lang/String;I[B[BZ)Z

    .line 900
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 917
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 878
    .end local v11    # "e":Ljava/io/IOException;
    .end local v17    # "needRelocate":Z
    :catchall_1
    move-exception v2

    :goto_2
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3, v14}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V

    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 881
    .end local v12    # "fpos":I
    .end local v13    # "hash":I
    .end local v14    # "keyBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    :catchall_2
    move-exception v2

    move-object/from16 v21, v2

    :goto_3
    const/16 v17, 0x0

    .line 882
    .restart local v17    # "needRelocate":Z
    if-eqz v8, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljkz;->a(Ljkz$d;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v18, :cond_15

    .line 883
    const/16 v17, 0x1

    .line 895
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 896
    if-eqz v17, :cond_16

    .line 897
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Ljkz$b;->a:[B

    move-object/from16 v0, v18

    iget-object v6, v0, Ljkz$b;->b:[B

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Ljkz;->a(Ljava/lang/String;I[B[BZ)Z

    .line 900
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 916
    :cond_16
    throw v21

    .line 909
    .restart local v11    # "e":Ljava/io/IOException;
    .restart local v12    # "fpos":I
    .restart local v13    # "hash":I
    .restart local v14    # "keyBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    :catchall_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "fpos":I
    .end local v13    # "hash":I
    .end local v14    # "keyBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    :catchall_4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 881
    .end local v17    # "needRelocate":Z
    .end local v18    # "ret":Ljkz$b;
    .restart local v9    # "coh":Ljkz$e;
    .restart local v10    # "desBuffer":Ljava/nio/ByteBuffer;
    .restart local v12    # "fpos":I
    .restart local v13    # "hash":I
    .restart local v14    # "keyBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "len":I
    .restart local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    .restart local v19    # "ret":Ljkz$b;
    .restart local v20    # "valueBuffer":Ljava/nio/ByteBuffer;
    :catchall_5
    move-exception v2

    move-object/from16 v21, v2

    move-object/from16 v18, v19

    .end local v19    # "ret":Ljkz$b;
    .restart local v18    # "ret":Ljkz$b;
    goto :goto_3

    .line 878
    .end local v18    # "ret":Ljkz$b;
    .restart local v19    # "ret":Ljkz$b;
    :catchall_6
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "ret":Ljkz$b;
    .restart local v18    # "ret":Ljkz$b;
    goto :goto_2

    .line 875
    .end local v18    # "ret":Ljkz$b;
    .restart local v19    # "ret":Ljkz$b;
    :catch_1
    move-exception v11

    move-object/from16 v18, v19

    .end local v19    # "ret":Ljkz$b;
    .restart local v18    # "ret":Ljkz$b;
    goto/16 :goto_1
.end method

.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    const-class v2, Ljkz;

    monitor-enter v2

    .line 202
    :try_start_0
    sget-object v1, Ljkz;->a:Ljava/util/Map;

    iget-object v3, p0, Ljkz;->m:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 204
    :try_start_1
    iget-object v1, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljkz;->u:Z

    .line 206
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljkz;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :try_start_2
    iget-object v1, p0, Ljkz;->k:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Ljkz;->k:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 211
    :cond_0
    iget-object v1, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Ljkz;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 213
    :cond_1
    iget-object v1, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :cond_2
    :goto_0
    :try_start_3
    iget-object v1, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 222
    iget-object v1, p0, Ljkz;->t:Ljkz$a;

    .line 2543
    iget-object v3, v1, Ljkz$a;->a:Ljava/util/List;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2544
    :try_start_4
    iget-object v1, v1, Ljkz$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2545
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 224
    :try_start_5
    iget-object v1, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 226
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "ChocolateCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "close file failed : on close cosscache :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_7
    iget-object v3, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    .line 226
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 2545
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public a(Ljava/lang/String;I[BI[BZ)Z
    .locals 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "category"    # I
    .param p3, "value"    # [B
    .param p4, "valueLength"    # I
    .param p5, "description"    # [B
    .param p6, "relocate"    # Z

    .prologue
    .line 1234
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    if-gtz p4, :cond_1

    .line 1235
    :cond_0
    const/4 v3, 0x0

    .line 1321
    :goto_0
    return v3

    .line 1237
    :cond_1
    const/4 v5, 0x0

    .line 1238
    .local v5, "desLen":S
    if-eqz p5, :cond_2

    .line 1239
    move-object/from16 v0, p5

    array-length v3, v0

    int-to-short v5, v3

    .line 1240
    :cond_2
    new-instance v2, Ljkz$e;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move/from16 v4, p4

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Ljkz$e;-><init>(BISLjava/lang/String;I)V

    .line 1242
    .local v2, "coh":Ljkz$e;
    iget-short v3, v2, Ljkz$e;->e:S

    const/16 v4, 0x400

    if-gt v3, v4, :cond_3

    add-int v3, p4, v5

    const/high16 v4, 0x500000

    if-gt v3, v4, :cond_3

    if-nez p4, :cond_4

    .line 1243
    :cond_3
    const-string/jumbo v3, "ChocolateCache"

    const-string/jumbo v4, "key need less than 1024byte; value need less than 5242880 byte;"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string/jumbo v3, "ChocolateCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "key is "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "value length is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v3, 0x0

    goto :goto_0

    .line 1249
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1251
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljkz;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto :goto_0

    .line 1254
    :cond_5
    :try_start_1
    invoke-direct/range {p0 .. p0}, Ljkz;->d()V

    .line 1256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1257
    iget-short v3, v2, Ljkz$e;->e:S

    add-int/lit8 v3, v3, 0x19

    iget v4, v2, Ljkz$e;->c:I

    add-int/2addr v3, v4

    add-int v16, v3, v5

    .line 1259
    .local v16, "useBlocks":I
    move/from16 v0, v16

    add-int/lit16 v3, v0, 0x80

    add-int/lit8 v3, v3, -0x1

    div-int/lit16 v0, v3, 0x80

    move/from16 v16, v0

    .line 1263
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1264
    new-instance v15, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v15, "sfs":Landroid/os/StatFs;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_7

    .line 1266
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    .line 1273
    .local v8, "availableSpace":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    .line 50766
    iget v3, v3, Ljkz$c;->e:I

    .line 1273
    add-int v3, v3, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->b:Ljkz$c;

    .line 50767
    iget v4, v4, Ljkz$c;->d:I

    .line 1273
    if-gt v3, v4, :cond_6

    move/from16 v0, v16

    mul-int/lit16 v3, v0, 0x80

    int-to-long v6, v3

    cmp-long v3, v8, v6

    if-gez v3, :cond_9

    .line 1274
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljkz;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_9

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1268
    .end local v8    # "availableSpace":J
    :cond_7
    :try_start_2
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    mul-long v8, v6, v18

    .line 1269
    .restart local v8    # "availableSpace":J
    goto :goto_1

    .line 1319
    .end local v8    # "availableSpace":J
    .end local v15    # "sfs":Landroid/os/StatFs;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1277
    .restart local v8    # "availableSpace":J
    .restart local v15    # "sfs":Landroid/os/StatFs;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    .line 50768
    iget-byte v3, v3, Ljkz$c;->f:B

    .line 1277
    iput-byte v3, v2, Ljkz$e;->b:B

    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    .line 50769
    iget v3, v3, Ljkz$c;->e:I

    .line 1278
    invoke-static {v2, v3}, Ljkz$e;->a(Ljkz$e;I)Ljkz$d;

    move-result-object v11

    .line 1280
    .local v11, "co":Ljkz$d;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3}, Ljkz$a;->a()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 1282
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1283
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2}, Ljkz$e;->a(Ljava/nio/ByteBuffer;Ljkz$e;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1285
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-short v6, v2, Ljkz$e;->e:S

    invoke-static {v3, v4, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1286
    .local v14, "keyBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v14, v2}, Ljkz$e;->b(Ljava/nio/ByteBuffer;Ljkz$e;)V

    .line 1287
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1289
    if-eqz p5, :cond_a

    .line 1290
    const/4 v3, 0x4

    new-array v12, v3, [Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    aput-object v4, v12, v3

    const/4 v3, 0x1

    aput-object v14, v12, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x3

    invoke-static/range {p5 .. p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v12, v3

    .line 1298
    .local v12, "dataStruct":[Ljava/nio/ByteBuffer;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->b:Ljkz$c;

    .line 50770
    iget v4, v4, Ljkz$c;->e:I

    .line 1298
    mul-int/lit16 v4, v4, 0x80

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v12}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljkz$c;->a(Ljkz$c;I)I

    .line 1301
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljkz;->c(Ljkz$d;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_b

    .line 1316
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1294
    .end local v12    # "dataStruct":[Ljava/nio/ByteBuffer;
    :cond_a
    const/4 v3, 0x3

    :try_start_6
    new-array v12, v3, [Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    aput-object v4, v12, v3

    const/4 v3, 0x1

    aput-object v14, v12, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v12, v3

    .restart local v12    # "dataStruct":[Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 1310
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljkz$c;->b(Ljkz$c;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1316
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1313
    .end local v12    # "dataStruct":[Ljava/nio/ByteBuffer;
    .end local v14    # "keyBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v13

    .line 1314
    .local v13, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v3, "ChocolateCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "write data failed: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1316
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1321
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1316
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v4, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1319
    .end local v8    # "availableSpace":J
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "co":Ljkz$d;
    .end local v15    # "sfs":Landroid/os/StatFs;
    .end local v16    # "useBlocks":I
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method public a(Ljava/lang/String;I[B[BZ)Z
    .locals 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "category"    # I
    .param p3, "value"    # [B
    .param p4, "description"    # [B
    .param p5, "relocate"    # Z

    .prologue
    .line 1326
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_1

    .line 1327
    :cond_0
    const/4 v3, 0x0

    .line 1413
    :goto_0
    return v3

    .line 1329
    :cond_1
    const/4 v5, 0x0

    .line 1330
    .local v5, "desLen":S
    if-eqz p4, :cond_2

    .line 1331
    move-object/from16 v0, p4

    array-length v3, v0

    int-to-short v5, v3

    .line 1332
    :cond_2
    new-instance v2, Ljkz$e;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    array-length v4, v0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Ljkz$e;-><init>(BISLjava/lang/String;I)V

    .line 1334
    .local v2, "coh":Ljkz$e;
    iget-short v3, v2, Ljkz$e;->e:S

    const/16 v4, 0x400

    if-gt v3, v4, :cond_3

    move-object/from16 v0, p3

    array-length v3, v0

    add-int/2addr v3, v5

    const/high16 v4, 0x500000

    if-gt v3, v4, :cond_3

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_4

    .line 1335
    :cond_3
    const-string/jumbo v3, "ChocolateCache"

    const-string/jumbo v4, "key need less than 1024byte; value need less than 5242880 byte;"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string/jumbo v3, "ChocolateCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "key is "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "value length is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v3, 0x0

    goto :goto_0

    .line 1341
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1343
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljkz;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto :goto_0

    .line 1346
    :cond_5
    :try_start_1
    invoke-direct/range {p0 .. p0}, Ljkz;->d()V

    .line 1348
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1349
    iget-short v3, v2, Ljkz$e;->e:S

    add-int/lit8 v3, v3, 0x19

    iget v4, v2, Ljkz$e;->c:I

    add-int/2addr v3, v4

    add-int v16, v3, v5

    .line 1351
    .local v16, "useBlocks":I
    move/from16 v0, v16

    add-int/lit16 v3, v0, 0x80

    add-int/lit8 v3, v3, -0x1

    div-int/lit16 v0, v3, 0x80

    move/from16 v16, v0

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1356
    new-instance v15, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->n:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v15, "sfs":Landroid/os/StatFs;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_7

    .line 1358
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    .line 1365
    .local v8, "availableSpace":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    .line 50771
    iget v3, v3, Ljkz$c;->e:I

    .line 1365
    add-int v3, v3, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->b:Ljkz$c;

    .line 50772
    iget v4, v4, Ljkz$c;->d:I

    .line 1365
    if-gt v3, v4, :cond_6

    move/from16 v0, v16

    mul-int/lit16 v3, v0, 0x80

    int-to-long v6, v3

    cmp-long v3, v8, v6

    if-gez v3, :cond_9

    .line 1366
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljkz;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_9

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1360
    .end local v8    # "availableSpace":J
    :cond_7
    :try_start_2
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    mul-long v8, v6, v18

    .line 1361
    .restart local v8    # "availableSpace":J
    goto :goto_1

    .line 1411
    .end local v8    # "availableSpace":J
    .end local v15    # "sfs":Landroid/os/StatFs;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1369
    .restart local v8    # "availableSpace":J
    .restart local v15    # "sfs":Landroid/os/StatFs;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    .line 50773
    iget-byte v3, v3, Ljkz$c;->f:B

    .line 1369
    iput-byte v3, v2, Ljkz$e;->b:B

    .line 1370
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    .line 50774
    iget v3, v3, Ljkz$c;->e:I

    .line 1370
    invoke-static {v2, v3}, Ljkz$e;->a(Ljkz$e;I)Ljkz$d;

    move-result-object v11

    .line 1372
    .local v11, "co":Ljkz$d;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3}, Ljkz$a;->a()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 1374
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2}, Ljkz$e;->a(Ljava/nio/ByteBuffer;Ljkz$e;)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1377
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-short v6, v2, Ljkz$e;->e:S

    invoke-static {v3, v4, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1378
    .local v14, "keyBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v14, v2}, Ljkz$e;->b(Ljava/nio/ByteBuffer;Ljkz$e;)V

    .line 1379
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1381
    if-eqz p4, :cond_a

    .line 1382
    const/4 v3, 0x4

    new-array v12, v3, [Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    aput-object v4, v12, v3

    const/4 v3, 0x1

    aput-object v14, v12, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x3

    invoke-static/range {p4 .. p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v12, v3

    .line 1390
    .local v12, "dataStruct":[Ljava/nio/ByteBuffer;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->b:Ljkz$c;

    .line 50775
    iget v4, v4, Ljkz$c;->e:I

    .line 1390
    mul-int/lit16 v4, v4, 0x80

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v12}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 1392
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljkz$c;->a(Ljkz$c;I)I

    .line 1393
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljkz;->c(Ljkz$d;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_b

    .line 1408
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1386
    .end local v12    # "dataStruct":[Ljava/nio/ByteBuffer;
    :cond_a
    const/4 v3, 0x3

    :try_start_6
    new-array v12, v3, [Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->p:Ljava/nio/ByteBuffer;

    aput-object v4, v12, v3

    const/4 v3, 0x1

    aput-object v14, v12, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v12, v3

    .restart local v12    # "dataStruct":[Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 1402
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->b:Ljkz$c;

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljkz$c;->b(Ljkz$c;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1408
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1405
    .end local v12    # "dataStruct":[Ljava/nio/ByteBuffer;
    .end local v14    # "keyBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v13

    .line 1406
    .local v13, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v3, "ChocolateCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "write data failed: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1408
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v3, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1413
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1408
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->t:Ljkz$a;

    invoke-virtual {v4, v10}, Ljkz$a;->a(Ljava/nio/ByteBuffer;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1411
    .end local v8    # "availableSpace":J
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "co":Ljkz$d;
    .end local v15    # "sfs":Landroid/os/StatFs;
    .end local v16    # "useBlocks":I
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method public final b()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1466
    :try_start_0
    iget-object v3, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1467
    iget-boolean v3, p0, Ljkz;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1487
    iget-object v2, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return v1

    .line 1469
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljkz;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    :try_start_2
    iget-object v3, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x80

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1478
    :try_start_3
    iget-object v1, p0, Ljkz;->o:Ljava/nio/ByteBuffer;

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1480
    iget-object v1, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1482
    iget-object v1, p0, Ljkz;->b:Ljkz$c;

    const/16 v3, 0xc

    .line 50776
    iput v3, v1, Ljkz$c;->e:I

    .line 1483
    iget-object v1, p0, Ljkz;->b:Ljkz$c;

    const/4 v3, 0x1

    .line 50777
    iput v3, v1, Ljkz$c;->b:I

    .line 1484
    iget-object v1, p0, Ljkz;->b:Ljkz$c;

    const/4 v3, 0x0

    .line 50778
    iput v3, v1, Ljkz$c;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1487
    iget-object v1, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v1, v2

    goto :goto_0

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v2, "ChocolateCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clear data failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1487
    iget-object v2, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public final b(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "category"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 967
    if-nez p1, :cond_0

    .line 997
    :goto_0
    return v3

    .line 971
    :cond_0
    :try_start_0
    iget-object v5, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 972
    iget-boolean v5, p0, Ljkz;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 997
    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 975
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljkz;->d()V

    .line 977
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 979
    .local v1, "hash":I
    iget-object v5, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    .local v2, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    if-nez v2, :cond_2

    .line 997
    iget-object v5, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 983
    :cond_2
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljkz$d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 984
    .local v0, "co":Ljkz$d;
    if-nez v0, :cond_3

    .line 997
    iget-object v5, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 986
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    iput v4, v0, Ljkz$d;->e:I

    .line 987
    iget-object v4, p0, Ljkz;->b:Ljkz$c;

    .line 46738
    iget-byte v4, v4, Ljkz$c;->f:B

    .line 987
    iput-byte v4, v0, Ljkz$d;->b:B

    .line 988
    invoke-direct {p0, v0}, Ljkz;->c(Ljkz$d;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 997
    .local v3, "ret":Z
    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0    # "co":Ljkz$d;
    .end local v1    # "hash":I
    .end local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    .end local v3    # "ret":Z
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1497
    :try_start_0
    iget-object v0, p0, Ljkz;->j:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1499
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "category"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1072
    :try_start_0
    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1073
    iget-boolean v4, p0, Ljkz;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1092
    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return v3

    .line 1075
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1076
    .local v0, "hash":I
    iget-object v4, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    if-nez v1, :cond_1

    .line 1092
    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1080
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1082
    .local v2, "size":I
    if-nez v2, :cond_2

    .line 1084
    iget-object v4, p0, Ljkz;->s:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1092
    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1087
    :cond_2
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1092
    iget-object v3, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0    # "hash":I
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljkz$d;>;"
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Ljkz;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3
.end method
