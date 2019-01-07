.class public Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;,
        Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;,
        Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;,
        Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$LowMemoryListener;
    }
.end annotation


# static fields
.field private static final CPU_HZ_THRESHOLD:J = 0x16e360L

.field public static LOW_MACHINE_MEMORY:J = 0x0L

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ImageMemoryCache"

.field public static mMaxMemory:J

.field public static mMaxMemory2:J


# instance fields
.field private mBitmapArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapBytesPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImageBytesArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;",
            ">;"
        }
    .end annotation
.end field

.field private mMemeoryOccupy:J

.field private mMemeoryOccupy2:J

.field private mPiexlThreshold:J

.field private mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

.field private sPool:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

.field private sPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x41

    sput-wide v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->LOW_MACHINE_MEMORY:J

    .line 54
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    .line 65
    const-wide/32 v0, 0x500000

    sput-wide v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    .line 51
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    .line 53
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    .line 56
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPool:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 57
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPoolSize:I

    .line 64
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    .line 68
    const-wide/32 v6, 0x9c400

    iput-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mPiexlThreshold:J

    .line 78
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapBytesPool:Ljava/util/Map;

    .line 79
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mImageBytesArray:Ljava/util/List;

    .line 83
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$LowMemoryListener;

    invoke-direct {v7, p0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$LowMemoryListener;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 85
    :cond_0
    const-string/jumbo v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 86
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    .line 89
    .local v4, "memClass":I
    if-eqz v4, :cond_2

    .line 90
    int-to-long v6, v4

    sget-wide v8, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->LOW_MACHINE_MEMORY:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 91
    mul-int/lit16 v6, v4, 0x400

    mul-int/lit16 v6, v6, 0x100

    int-to-long v6, v6

    sput-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    .line 94
    :cond_1
    mul-int/lit16 v6, v4, 0x400

    mul-int/lit16 v6, v6, 0x80

    int-to-long v6, v6

    sput-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    .line 97
    :cond_2
    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    const-wide/32 v8, 0x1400000

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    const-wide/32 v6, 0x1400000

    .line 98
    :goto_0
    sput-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    const-wide/32 v8, 0x400000

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    const-wide/32 v6, 0x400000

    :goto_1
    sput-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    .line 100
    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    const-wide/32 v8, 0x500000

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    const-wide/32 v6, 0x500000

    .line 101
    :goto_2
    sput-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    const-wide/32 v8, 0x200000

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    const-wide/32 v6, 0x200000

    :goto_3
    sput-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    .line 105
    const-wide/16 v2, 0x0

    .line 106
    .local v2, "cpuHZ":J
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "hzString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 109
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 114
    :cond_3
    :goto_4
    const-string/jumbo v6, "ImageMemoryCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cpu HZ =>>>>>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-wide/32 v6, 0x16e360

    cmp-long v6, v2, v6

    if-gtz v6, :cond_4

    .line 116
    const-wide/32 v6, 0x15f90

    iput-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mPiexlThreshold:J

    .line 122
    .end local v1    # "hzString":Ljava/lang/String;
    .end local v2    # "cpuHZ":J
    .end local v4    # "memClass":I
    :cond_4
    return-void

    .line 97
    .restart local v4    # "memClass":I
    :cond_5
    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    goto :goto_0

    .line 98
    :cond_6
    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    goto :goto_1

    .line 100
    :cond_7
    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    goto :goto_2

    .line 101
    :cond_8
    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    goto :goto_3

    .line 110
    .restart local v1    # "hzString":Ljava/lang/String;
    .restart local v2    # "cpuHZ":J
    :catch_0
    move-exception v5

    .line 111
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
    .param p1, "x1"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc2(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    return-object v0
.end method

.method private gc(JLjava/lang/String;)V
    .locals 9
    .param p1, "maxToKeep"    # J
    .param p3, "currentKey"    # Ljava/lang/String;

    .prologue
    .line 446
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 447
    const-wide/16 p1, 0x0

    .line 449
    :cond_0
    sget-wide v2, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 450
    sget-wide p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 453
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 456
    .local v0, "bitmapRef":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    cmp-long v2, v2, p1

    if-ltz v2, :cond_3

    .line 460
    iget v2, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    if-nez v2, :cond_2

    invoke-direct {p0, v0, p3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasKey(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 461
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 464
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->clear()V

    .line 465
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->recycleBitmapRef(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;)V

    goto :goto_0

    .line 468
    .end local v0    # "bitmapRef":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    sget-wide v4, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 469
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    sget-wide v4, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    iget-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;->onMemoryOverflow(JJ)V

    .line 471
    :cond_4
    return-void
.end method

.method private gc2(J)V
    .locals 11
    .param p1, "maxToKeep"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 476
    cmp-long v2, p1, v8

    if-gez v2, :cond_0

    .line 477
    const-wide/16 p1, 0x0

    .line 479
    :cond_0
    sget-wide v2, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 480
    sget-wide p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    .line 482
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mImageBytesArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 483
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    .line 487
    .local v0, "imageBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    cmp-long v2, v2, p1

    if-ltz v2, :cond_3

    .line 490
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 492
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapBytesPool:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;->onImageBytesReleased(Ljava/lang/String;J)V

    .line 494
    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mPiexls:J

    .line 495
    iget-object v2, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 496
    iget-object v2, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    .line 498
    :cond_2
    iput-object v6, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 499
    iput-object v6, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 502
    .end local v0    # "imageBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    :cond_3
    return-void
.end method

.method private getMaxCpuFreq()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, -0x1

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, ""

    .line 531
    .local v3, "resultStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 533
    .local v2, "re":[B
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string/jumbo v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v6, 0x18

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 535
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 536
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 546
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 547
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v6, "ImageMemoryCache"

    invoke-static {v6, v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    if-eqz v2, :cond_0

    .line 550
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 553
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-object v3

    .line 538
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 540
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 542
    .local v1, "index":I
    if-ne v1, v7, :cond_2

    .line 543
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 545
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 549
    if-eqz v2, :cond_0

    .line 550
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_1

    .line 549
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v1    # "index":I
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_3

    .line 550
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_3
    throw v6
.end method

.method private hasKey(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;Ljava/lang/String;)Z
    .locals 4
    .param p1, "bitmapRef"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 433
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v1

    .line 436
    :cond_1
    iget-object v2, p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;

    .line 437
    .local v0, "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mKey:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isBitmapAlive(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;)Z
    .locals 4
    .param p1, "reference"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_0

    iget-boolean v3, p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    if-nez v3, :cond_0

    .line 193
    iget-object v3, p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 196
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 204
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return v2

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private obtainBitmapRef(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;I)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 509
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPool:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    if-eqz v2, :cond_0

    .line 510
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPool:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 511
    .local v1, "p":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    iget-object v2, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mNext:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPool:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 512
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->init(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;I)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 513
    iget v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPoolSize:I

    .line 517
    .end local v1    # "p":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    :goto_0
    return-object v1

    .line 516
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)V

    .line 517
    .local v0, "br":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->init(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;I)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    move-result-object v1

    goto :goto_0
.end method

.method private recycleBitmapRef(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;)V
    .locals 2
    .param p1, "br"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    iget v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPoolSize:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPool:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    iput-object v0, p1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mNext:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 523
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPool:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 524
    iget v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->sPoolSize:I

    .line 526
    :cond_0
    return-void
.end method


# virtual methods
.method public cloneBitmap(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "newKey"    # Ljava/lang/String;
    .param p2, "oldKey"    # Ljava/lang/String;
    .param p3, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 215
    .local v3, "mSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 217
    .local v1, "bitmapReference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    if-eqz v1, :cond_2

    .line 218
    const-string/jumbo v6, "ImageMemoryCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cloneBitmap  newKey="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is existed!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v1    # "bitmapReference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 225
    .local v0, "bitmapDrawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 226
    :cond_3
    const-string/jumbo v6, "ImageMemoryCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cloneBitmap  oldKey="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " has not bitmapDrawable!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_4
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 233
    .local v5, "reference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    if-eqz v5, :cond_0

    iget-boolean v6, v5, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    if-nez v6, :cond_0

    iget-object v6, v5, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 234
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 235
    .local v4, "newBitmapDrawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    if-nez v4, :cond_5

    .line 236
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "newBitmapDrawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 237
    .restart local v4    # "newBitmapDrawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_5
    invoke-virtual {v5, p1, p3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->addKeyRef(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {v4, p3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 243
    .end local v4    # "newBitmapDrawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    .end local v5    # "reference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public dumpMemoryInfo()Lcom/alibaba/doraemon/image/ImageMemoryStatus;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 388
    new-instance v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;

    invoke-direct {v4}, Lcom/alibaba/doraemon/image/ImageMemoryStatus;-><init>()V

    .line 389
    .local v4, "imageMemoryStatus":Lcom/alibaba/doraemon/image/ImageMemoryStatus;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mBitmapStatus:Ljava/util/List;

    .line 391
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 392
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 393
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 395
    .local v0, "br":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 396
    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;

    .line 397
    .local v6, "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    new-instance v1, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;

    invoke-direct {v1}, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;-><init>()V

    .line 398
    .local v1, "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    iget-object v8, v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mKey:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mUrl:Ljava/lang/String;

    .line 399
    iget v8, v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mDisplayMode:I

    iput v8, v1, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mDisplayMode:I

    .line 400
    iget-wide v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    iput-wide v8, v1, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mSize:J

    .line 402
    iget-object v8, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mBitmapStatus:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    .end local v1    # "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    .end local v6    # "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    :cond_0
    iget-wide v8, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mBitmapsSize:J

    iget-wide v10, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    add-long/2addr v8, v10

    iput-wide v8, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mBitmapsSize:J

    goto :goto_0

    .line 409
    .end local v0    # "br":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mImageBytesStatus:Ljava/util/List;

    .line 410
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mImageBytesArray:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    .line 411
    .local v2, "ib":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    new-instance v3, Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;

    invoke-direct {v3}, Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;-><init>()V

    .line 412
    .local v3, "imageBytesStatus":Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;
    iget-object v8, v2, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v8}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v3, Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;->mSize:J

    .line 413
    iget-object v8, v2, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mUrl:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;->mUrl:Ljava/lang/String;

    .line 414
    iget-wide v8, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mImageBytesSize:J

    iget-wide v10, v3, Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;->mSize:J

    add-long/2addr v8, v10

    iput-wide v8, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mImageBytesSize:J

    .line 415
    iget-object v8, v4, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mImageBytesStatus:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 417
    .end local v2    # "ib":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    .end local v3    # "imageBytesStatus":Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;
    :cond_2
    return-object v4
.end method

.method public fillBytes2Cache(Ljava/lang/String;Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageBytes"    # Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .param p3, "piexlsSize"    # J

    .prologue
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapBytesPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;-><init>()V

    .line 321
    .local v0, "bitmapBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    iput-object p1, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mUrl:Ljava/lang/String;

    .line 322
    iput-object p2, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 323
    iput-wide p3, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mPiexls:J

    .line 325
    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mPiexls:J

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mPiexlThreshold:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapBytesPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mImageBytesArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    iget-object v1, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    .line 330
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    invoke-interface {p2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, p1, v2, v3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;->onImageBytesFilled(Ljava/lang/String;J)V

    .line 331
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    sget-wide v4, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    sget-wide v2, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    invoke-direct {p0, v2, v3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc2(J)V

    goto :goto_0
.end method

.method public forceGC(F)V
    .locals 10
    .param p1, "rate"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 360
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    sget-wide v8, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    add-long v0, v4, v8

    .line 361
    .local v0, "maxToKeep":J
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    .line 362
    long-to-float v4, v0

    mul-float/2addr v4, p1

    float-to-long v0, v4

    .line 363
    :cond_0
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    iget-wide v8, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    add-long/2addr v4, v8

    sub-long v2, v4, v0

    .line 364
    .local v2, "toRelease":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    sub-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    sub-long/2addr v4, v2

    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, v4, v5, v8}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc(JLjava/lang/String;)V

    .line 367
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    iget-wide v8, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    add-long/2addr v4, v8

    sub-long v2, v4, v0

    .line 368
    cmp-long v4, v2, v6

    if-ltz v4, :cond_1

    .line 370
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    sub-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    sub-long v6, v4, v2

    :cond_3
    invoke-direct {p0, v6, v7}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc2(J)V

    goto :goto_0

    :cond_4
    move-wide v4, v6

    .line 366
    goto :goto_1
.end method

.method public forceGC(J)V
    .locals 9
    .param p1, "maxToKeep"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 375
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 376
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    add-long p1, v2, v6

    .line 377
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    iget-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    add-long/2addr v2, v6

    sub-long v0, v2, p1

    .line 378
    .local v0, "toRelease":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    sub-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    sub-long/2addr v2, v0

    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v2, v3, v6}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc(JLjava/lang/String;)V

    .line 381
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    iget-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    add-long/2addr v2, v6

    sub-long v0, v2, p1

    .line 382
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    .line 384
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    sub-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    sub-long v4, v2, v0

    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc2(J)V

    goto :goto_0

    :cond_4
    move-wide v2, v4

    .line 380
    goto :goto_1
.end method

.method public getBitmapBytes(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapBytesPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    return-object v0
.end method

.method public getBitmapMemorySize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    return-wide v0
.end method

.method public getMaxMemorySize()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    sget-wide v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    sget-wide v2, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getMemorySize()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy2:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hasBitmap(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 338
    .local v0, "bitmapReferences":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v2

    .line 340
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 341
    .local v1, "reference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    if-nez v3, :cond_2

    .line 342
    const/4 v2, 0x1

    goto :goto_0

    .line 343
    :cond_2
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 346
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasBitmapBytes(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapBytesPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    .line 356
    .local v0, "tmpImageBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hireBitmap(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 169
    .local v0, "bitmapReferences":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v2

    .line 171
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 172
    .local v1, "reference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->isBitmapAlive(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget v2, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    .line 176
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    iget-object v2, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 182
    :cond_3
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 186
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remandBitmap(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayMode"    # I
    .param p3, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 269
    .local v2, "bitmapReferences":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    if-nez v2, :cond_0

    .line 270
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "bitmapReferences":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 271
    .restart local v2    # "bitmapReferences":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapPool:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 275
    .local v3, "reference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    if-eqz v3, :cond_3

    .line 276
    iget-boolean v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    if-nez v4, :cond_2

    iget v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    if-lez v4, :cond_2

    .line 278
    iget v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    .line 279
    iget v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    if-nez v4, :cond_1

    .line 280
    iget-object v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v4, v4, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_1

    .line 281
    iget-object v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    iget-boolean v4, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    if-eqz v4, :cond_1

    .line 286
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 287
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 293
    :cond_4
    const-string/jumbo v4, "ImageMagician"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "add a recycled bitmap "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_5
    invoke-direct {p0, p1, p3, p2}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->obtainBitmapRef(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;I)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    move-result-object v1

    .line 297
    .local v1, "bitmapReference":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    iget-wide v6, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    .line 299
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMemeoryOccupy:J

    sget-wide v6, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 300
    sget-wide v4, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory:J

    invoke-direct {p0, v4, v5, p1}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc(JLjava/lang/String;)V

    .line 302
    sget-wide v4, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mMaxMemory2:J

    invoke-direct {p0, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->gc2(J)V

    .line 304
    :cond_6
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;->onAllocateBitmap(Ljava/lang/String;J)V

    .line 305
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mBitmapArray:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setStateListener(Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->mStateListener:Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    .line 506
    return-void
.end method
