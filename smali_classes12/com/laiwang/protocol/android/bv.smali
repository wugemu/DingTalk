.class public Lcom/laiwang/protocol/android/bv;
.super Ljava/lang/Object;
.source "UpFileItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bv$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/upload/OnUploadListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile E:J

.field private F:Lcom/laiwang/protocol/connection/LWPConnection;

.field private volatile G:Z

.field private H:I

.field private I:I

.field private J:I

.field public volatile a:I

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z

.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:J

.field public volatile l:J

.field public volatile m:J

.field public volatile n:Z

.field public o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private r:Lcom/laiwang/protocol/upload/MediaType;

.field private volatile s:J

.field private volatile t:I

.field private volatile u:Ljava/lang/String;

.field private volatile v:J

.field private volatile w:Ljava/util/BitSet;

.field private final x:Ljava/util/BitSet;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v1, "-1"

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->u:Ljava/lang/String;

    .line 34
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->z:Z

    .line 37
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->C:Z

    .line 41
    iput-wide v6, p0, Lcom/laiwang/protocol/android/bv;->E:J

    .line 42
    iput v4, p0, Lcom/laiwang/protocol/android/bv;->a:I

    .line 44
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->G:Z

    .line 47
    sget-object v1, Lcom/laiwang/protocol/upload/Constants$a;->a:Lcom/laiwang/protocol/upload/Constants$a;

    iget v1, v1, Lcom/laiwang/protocol/upload/Constants$a;->d:I

    iput v1, p0, Lcom/laiwang/protocol/android/bv;->H:I

    .line 49
    sget-object v1, Lcom/laiwang/protocol/upload/Constants$b;->a:Lcom/laiwang/protocol/upload/Constants$b;

    iget v1, v1, Lcom/laiwang/protocol/upload/Constants$b;->f:I

    iput v1, p0, Lcom/laiwang/protocol/android/bv;->I:I

    .line 56
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->b:Z

    .line 57
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->c:Z

    .line 58
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->d:Z

    .line 59
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->e:Z

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/laiwang/protocol/android/bv;->f:Z

    .line 62
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->g:Z

    .line 64
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/laiwang/protocol/android/bv;->k:J

    .line 69
    iput-wide v6, p0, Lcom/laiwang/protocol/android/bv;->l:J

    .line 70
    iput-wide v6, p0, Lcom/laiwang/protocol/android/bv;->m:J

    .line 71
    iput-boolean v4, p0, Lcom/laiwang/protocol/android/bv;->n:Z

    .line 73
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    iput-object p1, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/laiwang/protocol/android/bv;->s:J

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->q:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->D:Ljava/util/List;

    .line 81
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->w:Ljava/util/BitSet;

    .line 82
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->x:Ljava/util/BitSet;

    .line 84
    invoke-static {p1}, Lcom/laiwang/protocol/android/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->A:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/laiwang/protocol/android/by;->a(Ljava/lang/String;)Lcom/laiwang/protocol/upload/MediaType;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/bv;->r:Lcom/laiwang/protocol/upload/MediaType;

    .line 86
    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(I)[B
    .locals 12
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 193
    iget v7, p0, Lcom/laiwang/protocol/android/bv;->t:I

    mul-int/2addr v7, p1

    int-to-long v2, v7

    .line 194
    .local v2, "offset":J
    iget v1, p0, Lcom/laiwang/protocol/android/bv;->t:I

    .line 195
    .local v1, "len":I
    iget-wide v8, p0, Lcom/laiwang/protocol/android/bv;->s:J

    cmp-long v7, v2, v8

    if-ltz v7, :cond_1

    move-object v0, v6

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    iget v7, p0, Lcom/laiwang/protocol/android/bv;->t:I

    int-to-long v8, v7

    add-long/2addr v8, v2

    iget-wide v10, p0, Lcom/laiwang/protocol/android/bv;->s:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 197
    iget-boolean v7, p0, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/laiwang/protocol/android/bv;->g:Z

    if-nez v7, :cond_2

    move-object v0, v6

    goto :goto_0

    .line 198
    :cond_2
    iget-wide v8, p0, Lcom/laiwang/protocol/android/bv;->s:J

    sub-long/2addr v8, v2

    long-to-int v1, v8

    .line 200
    :cond_3
    new-array v0, v1, [B

    .line 201
    .local v0, "dst":[B
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "r"

    invoke-direct {v4, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 203
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    .line 204
    .local v5, "readSize":I
    invoke-direct {p0, v4}, Lcom/laiwang/protocol/android/bv;->a(Ljava/io/RandomAccessFile;)V

    .line 205
    array-length v7, v0

    if-eq v5, v7, :cond_0

    .line 206
    const-string/jumbo v7, "[upload] %s read frag size mismatch, except %d but %d, offset %d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/laiwang/protocol/android/bv;->u:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    array-length v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 207
    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/laiwang/protocol/android/bv;->I:I

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/laiwang/protocol/android/bv;->J:I

    return v0
.end method

.method public a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/laiwang/protocol/android/bv;->s:J

    return-wide v0
.end method

.method public declared-synchronized a(I)V
    .locals 2
    .param p1, "idx"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    monitor-enter p0

    if-gez p1, :cond_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->w:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 126
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->x:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)V
    .locals 10
    .param p1, "idx"    # I
    .param p2, "fragLength"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    if-gtz p1, :cond_1

    .line 121
    :cond_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bv;->s()Lcom/laiwang/protocol/upload/UploaderExtra;

    move-result-object v6

    .line 117
    .local v6, "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    iget-wide v2, p0, Lcom/laiwang/protocol/android/bv;->E:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/laiwang/protocol/android/bv;->E:J

    .line 118
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 119
    .local v1, "listener":Lcom/laiwang/protocol/upload/OnUploadListener;
    iget-wide v2, p0, Lcom/laiwang/protocol/android/bv;->s:J

    iget-wide v4, p0, Lcom/laiwang/protocol/android/bv;->E:J

    iget-wide v8, p0, Lcom/laiwang/protocol/android/bv;->s:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    iget-wide v4, p0, Lcom/laiwang/protocol/android/bv;->E:J

    :goto_1
    invoke-interface/range {v1 .. v6}, Lcom/laiwang/protocol/upload/OnUploadListener;->onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/laiwang/protocol/android/bv;->s:J

    goto :goto_1
.end method

.method public a(J)V
    .locals 1
    .param p1, "uip"    # J

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/laiwang/protocol/android/bv;->v:J

    .line 158
    return-void
.end method

.method public a(Lcom/laiwang/protocol/connection/LWPConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/connection/LWPConnection;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/laiwang/protocol/android/bv;->F:Lcom/laiwang/protocol/connection/LWPConnection;

    .line 395
    return-void
.end method

.method public a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    .locals 4
    .param p1, "errorStatus"    # Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/laiwang/protocol/android/bv;->n:Z

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/laiwang/protocol/android/bv;->m:J

    .line 108
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 109
    .local v0, "listener":Lcom/laiwang/protocol/upload/OnUploadListener;
    invoke-interface {v0, p1}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    goto :goto_0

    .line 111
    .end local v0    # "listener":Lcom/laiwang/protocol/upload/OnUploadListener;
    :cond_0
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bv;->u()V

    .line 112
    return-void
.end method

.method public a(Lcom/laiwang/protocol/upload/OnUploadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/upload/OnUploadListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public a(Lcom/laiwang/protocol/upload/UploadResult;)V
    .locals 4
    .param p1, "result"    # Lcom/laiwang/protocol/upload/UploadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 99
    .local v0, "listener":Lcom/laiwang/protocol/upload/OnUploadListener;
    invoke-interface {v0, p1}, Lcom/laiwang/protocol/upload/OnUploadListener;->onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V

    goto :goto_0

    .line 101
    .end local v0    # "listener":Lcom/laiwang/protocol/upload/OnUploadListener;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/laiwang/protocol/android/bv;->m:J

    .line 102
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bv;->u()V

    .line 103
    return-void
.end method

.method public a(Lcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 3
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 320
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/bv;->v:J

    .line 321
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/bv;->u:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->isMediaId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->e:Z

    .line 326
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpFrag()I

    move-result v0

    iput v0, p0, Lcom/laiwang/protocol/android/bv;->t:I

    .line 327
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->isHd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->d:Z

    .line 328
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->isPrivate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->b:Z

    .line 330
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpIdx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/android/bv;->c(I)V

    .line 331
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpIdx()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/laiwang/protocol/android/bv;->t:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/bv;->E:J

    .line 332
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->isNg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->z:Z

    .line 333
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->isLarge()Z

    move-result v0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->C:Z

    .line 334
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/bv;->y:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getMediaIdVer()I

    move-result v0

    iput v0, p0, Lcom/laiwang/protocol/android/bv;->H:I

    .line 336
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getAuthType()I

    move-result v0

    iput v0, p0, Lcom/laiwang/protocol/android/bv;->I:I

    .line 337
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getExpiredTime()I

    move-result v0

    iput v0, p0, Lcom/laiwang/protocol/android/bv;->J:I

    .line 338
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/laiwang/protocol/android/bv;->B:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "fragSize"    # I

    .prologue
    .line 285
    iput p1, p0, Lcom/laiwang/protocol/android/bv;->t:I

    .line 286
    return-void
.end method

.method public b(Lcom/laiwang/protocol/upload/OnUploadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/upload/OnUploadListener;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "upId"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/laiwang/protocol/android/bv;->u:Ljava/lang/String;

    .line 282
    return-void
.end method

.method c(I)V
    .locals 3
    .param p1, "idx"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    if-gez p1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->w:Ljava/util/BitSet;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 141
    :goto_0
    return v1

    .line 140
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->q:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/laiwang/protocol/upload/MediaType;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->r:Lcom/laiwang/protocol/upload/MediaType;

    return-object v0
.end method

.method public f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/laiwang/protocol/android/bv;->v:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/bv;->s:J

    .line 162
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->y:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->A:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->B:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->z:Z

    return v0
.end method

.method public declared-synchronized l()Lcom/laiwang/protocol/android/bv$a;
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
    const/4 v0, 0x0

    .line 219
    monitor-enter p0

    const/4 v1, 0x0

    .line 220
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/laiwang/protocol/android/bv;->t:I

    mul-int/2addr v3, v1

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/laiwang/protocol/android/bv;->s:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/laiwang/protocol/android/bv;->w:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/laiwang/protocol/android/bv;->x:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    invoke-direct {p0, v1}, Lcom/laiwang/protocol/android/bv;->d(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 224
    .local v2, "payload":[B
    if-nez v2, :cond_1

    .line 233
    .end local v2    # "payload":[B
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 226
    .restart local v2    # "payload":[B
    :cond_1
    :try_start_1
    new-instance v0, Lcom/laiwang/protocol/android/bv$a;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/bv$a;-><init>()V

    .line 227
    .local v0, "frag":Lcom/laiwang/protocol/android/bv$a;
    iput v1, v0, Lcom/laiwang/protocol/android/bv$a;->a:I

    .line 228
    iput-object v2, v0, Lcom/laiwang/protocol/android/bv$a;->b:[B

    .line 229
    iget-object v3, p0, Lcom/laiwang/protocol/android/bv;->x:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/BitSet;->set(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 219
    .end local v0    # "frag":Lcom/laiwang/protocol/android/bv$a;
    .end local v2    # "payload":[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public m()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 239
    .local v2, "fi":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 240
    .local v1, "crc32":Ljava/util/zip/CRC32;
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v2    # "fi":Ljava/io/InputStream;
    .local v3, "fi":Ljava/io/InputStream;
    const/16 v5, 0x4000

    :try_start_1
    new-array v0, v5, [B

    .line 243
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "gByte":I
    if-lez v4, :cond_1

    .line 244
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 251
    .end local v0    # "buf":[B
    .end local v4    # "gByte":I
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v1    # "crc32":Ljava/util/zip/CRC32;
    .end local v3    # "fi":Ljava/io/InputStream;
    .restart local v2    # "fi":Ljava/io/InputStream;
    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    const-wide/16 v6, 0x0

    :goto_3
    return-wide v6

    .line 246
    .end local v2    # "fi":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "crc32":Ljava/util/zip/CRC32;
    .restart local v3    # "fi":Ljava/io/InputStream;
    .restart local v4    # "gByte":I
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 247
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    .line 251
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v2, v3

    .end local v3    # "fi":Ljava/io/InputStream;
    .restart local v2    # "fi":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "buf":[B
    .end local v1    # "crc32":Ljava/util/zip/CRC32;
    .end local v4    # "gByte":I
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_6
    throw v5

    .end local v2    # "fi":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "crc32":Ljava/util/zip/CRC32;
    .restart local v3    # "fi":Ljava/io/InputStream;
    .restart local v4    # "gByte":I
    :catch_1
    move-exception v5

    goto :goto_4

    .end local v0    # "buf":[B
    .end local v1    # "crc32":Ljava/util/zip/CRC32;
    .end local v3    # "fi":Ljava/io/InputStream;
    .end local v4    # "gByte":I
    .restart local v2    # "fi":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_6

    .end local v2    # "fi":Ljava/io/InputStream;
    .restart local v1    # "crc32":Ljava/util/zip/CRC32;
    .restart local v3    # "fi":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fi":Ljava/io/InputStream;
    .restart local v2    # "fi":Ljava/io/InputStream;
    goto :goto_5

    .end local v1    # "crc32":Ljava/util/zip/CRC32;
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method public n()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    iget-wide v2, p0, Lcom/laiwang/protocol/android/bv;->s:J

    iget v4, p0, Lcom/laiwang/protocol/android/bv;->t:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 257
    .local v0, "fragNum":I
    iget-wide v2, p0, Lcom/laiwang/protocol/android/bv;->s:J

    iget v4, p0, Lcom/laiwang/protocol/android/bv;->t:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 258
    add-int/lit8 v0, v0, 0x1

    .line 260
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 261
    iget-object v2, p0, Lcom/laiwang/protocol/android/bv;->w:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    const/4 v2, 0x0

    .line 265
    :goto_1
    return v2

    .line 260
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public o()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    iget-wide v2, p0, Lcom/laiwang/protocol/android/bv;->s:J

    iget v1, p0, Lcom/laiwang/protocol/android/bv;->t:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 270
    .local v0, "fragNum":I
    iget-wide v2, p0, Lcom/laiwang/protocol/android/bv;->s:J

    iget v1, p0, Lcom/laiwang/protocol/android/bv;->t:I

    int-to-long v4, v1

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 271
    add-int/lit8 v0, v0, 0x1

    .line 273
    :cond_0
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->u:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/laiwang/protocol/android/bv;->t:I

    return v0
.end method

.method public declared-synchronized r()V
    .locals 1

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->w:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 294
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->x:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 295
    iget v0, p0, Lcom/laiwang/protocol/android/bv;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/laiwang/protocol/android/bv;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()Lcom/laiwang/protocol/upload/UploaderExtra;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    new-instance v0, Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-direct {v0}, Lcom/laiwang/protocol/upload/UploaderExtra;-><init>()V

    .line 300
    .local v0, "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setFilePath(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->r:Lcom/laiwang/protocol/upload/MediaType;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->r:Lcom/laiwang/protocol/upload/MediaType;

    invoke-virtual {v1}, Lcom/laiwang/protocol/upload/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setMimeType(Ljava/lang/String;)V

    .line 304
    :cond_0
    iget-wide v2, p0, Lcom/laiwang/protocol/android/bv;->v:J

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUip(J)V

    .line 305
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUpId(Ljava/lang/String;)V

    .line 306
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/bv;->e:Z

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setMediaId(Z)V

    .line 307
    iget v1, p0, Lcom/laiwang/protocol/android/bv;->t:I

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUpFrag(I)V

    .line 308
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/bv;->d:Z

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setHd(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bv;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUpIdx(I)V

    .line 311
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/bv;->z:Z

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setNg(Z)V

    .line 312
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/bv;->C:Z

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setLarge(Z)V

    .line 313
    iget v1, p0, Lcom/laiwang/protocol/android/bv;->H:I

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setMediaIdVer(I)V

    .line 314
    iget v1, p0, Lcom/laiwang/protocol/android/bv;->I:I

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setAuthType(I)V

    .line 315
    iget v1, p0, Lcom/laiwang/protocol/android/bv;->J:I

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setExpiredTime(I)V

    .line 316
    return-object v0
.end method

.method declared-synchronized t()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    monitor-enter p0

    const/4 v0, 0x0

    .line 343
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bv;->w:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    add-int/lit8 v0, v0, -0x1

    monitor-exit p0

    return v0

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public u()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    const-string/jumbo v2, "[uploader]\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/laiwang/protocol/android/bv;->u:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/laiwang/protocol/android/bv;->q:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/laiwang/protocol/android/bv;->s:J

    .line 372
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/laiwang/protocol/android/bv;->n:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/laiwang/protocol/android/bv;->l:J

    iget-wide v6, p0, Lcom/laiwang/protocol/android/bv;->k:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/laiwang/protocol/android/bv;->m:J

    iget-wide v6, p0, Lcom/laiwang/protocol/android/bv;->l:J

    sub-long/2addr v4, v6

    .line 373
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/laiwang/protocol/android/bv;->m:J

    iget-wide v6, p0, Lcom/laiwang/protocol/android/bv;->k:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    .line 371
    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    return-void

    :cond_0
    move v0, v1

    .line 372
    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->C:Z

    return v0
.end method

.method public w()Lcom/laiwang/protocol/connection/LWPConnection;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/laiwang/protocol/android/bv;->F:Lcom/laiwang/protocol/connection/LWPConnection;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->G:Z

    return v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bv;->G:Z

    .line 403
    return-void
.end method

.method public z()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/laiwang/protocol/android/bv;->H:I

    return v0
.end method
