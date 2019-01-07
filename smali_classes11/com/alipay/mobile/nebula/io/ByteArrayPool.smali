.class public Lcom/alipay/mobile/nebula/io/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;,
        Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ByteArrayPool"


# instance fields
.field private final mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

.field private mCurrentSize:I

.field private mEnabled:Z

.field private final mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSizeLimit:I

.field private final mSizeLock:Ljava/lang/Object;

.field private mTotallyReusedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "sizeLimit"    # I

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;ILcom/alipay/mobile/nebula/io/ByteArrayPool$1;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    .line 55
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput v4, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    .line 59
    iput v4, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    .line 62
    sget-boolean v1, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    .line 68
    iput p1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLimit:I

    .line 69
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 70
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "h5_enableByteArrayPool"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    return p1
.end method

.method private trim()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    iget v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLimit:I

    if-le v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->trimToSize(I)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getBuf(I)[B
    .locals 12
    .param p1, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 79
    iget-boolean v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    if-nez v6, :cond_1

    .line 80
    new-array v0, p1, [B

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 88
    .local v4, "start":J
    iget-object v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 89
    .local v1, "bufsMatchSize":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 92
    .local v0, "buf":[B
    if-eqz v0, :cond_2

    .line 93
    iget-object v7, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 94
    :try_start_0
    iget v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    array-length v8, v0

    sub-int/2addr v6, v8

    iput v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    .line 95
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-boolean v6, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 97
    iget v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    array-length v7, v0

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 99
    .local v2, "elapsed":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    .line 100
    const-string/jumbo v6, "ByteArrayPool"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "(debug only) reuse pool: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") use time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v2    # "elapsed":J
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 109
    .end local v0    # "buf":[B
    :cond_2
    sget-boolean v6, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 111
    .restart local v2    # "elapsed":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_3

    .line 112
    const-string/jumbo v6, "ByteArrayPool"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "(debug only) new byte, use time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v2    # "elapsed":J
    :cond_3
    new-array v0, p1, [B

    goto/16 :goto_0
.end method

.method public returnBuf([B)V
    .locals 8
    .param p1, "buf"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    iget v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLimit:I

    if-gt v1, v6, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 134
    .local v4, "start":J
    iget-object v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 135
    :try_start_0
    iget v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    array-length v7, p1

    add-int/2addr v1, v7

    iput v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    .line 136
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 139
    .local v0, "bufsMatchSize":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    if-nez v0, :cond_2

    .line 140
    new-instance v0, Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;

    .end local v0    # "bufsMatchSize":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;Lcom/alipay/mobile/nebula/io/ByteArrayPool$1;)V

    .line 141
    .restart local v0    # "bufsMatchSize":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->trim()V

    .line 148
    sget-boolean v1, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 150
    .local v2, "elapsed":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 151
    const-string/jumbo v1, "ByteArrayPool"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "(debug only) return use time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v0    # "bufsMatchSize":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .end local v2    # "elapsed":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 144
    .restart local v0    # "bufsMatchSize":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1
.end method
