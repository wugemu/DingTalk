.class public Lcom/alibaba/doraemon/image/memory/SharedByteArray;
.super Ljava/lang/Object;
.source "SharedByteArray.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;


# instance fields
.field final mByteArraySoftRef:Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference",
            "<[B>;"
        }
    .end annotation
.end field

.field final mMaxByteArraySize:I

.field final mMinByteArraySize:I

.field private final mResourceReleaser:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<[B>;"
        }
    .end annotation
.end field

.field final mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;)V
    .locals 4
    .param p1, "memoryTrimmableRegistry"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;
    .param p2, "params"    # Lcom/alibaba/doraemon/image/memory/PoolParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget v0, p2, Lcom/alibaba/doraemon/image/memory/PoolParams;->minBucketSize:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 57
    iget v0, p2, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxBucketSize:I

    iget v3, p2, Lcom/alibaba/doraemon/image/memory/PoolParams;->minBucketSize:I

    if-lt v0, v3, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 59
    iget v0, p2, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxBucketSize:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mMaxByteArraySize:I

    .line 60
    iget v0, p2, Lcom/alibaba/doraemon/image/memory/PoolParams;->minBucketSize:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mMinByteArraySize:I

    .line 61
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mByteArraySoftRef:Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;

    .line 62
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 63
    new-instance v0, Lcom/alibaba/doraemon/image/memory/SharedByteArray$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/image/memory/SharedByteArray$1;-><init>(Lcom/alibaba/doraemon/image/memory/SharedByteArray;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mResourceReleaser:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;

    .line 70
    invoke-interface {p1, p0}, Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;->registerMemoryTrimmable(Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;)V

    .line 71
    return-void

    :cond_1
    move v0, v2

    .line 56
    goto :goto_0
.end method

.method private declared-synchronized allocateByteArray(I)[B
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mByteArraySoftRef:Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->clear()V

    .line 127
    new-array v0, p1, [B

    .line 128
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mByteArraySoftRef:Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-object v0

    .line 126
    .end local v0    # "byteArray":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getByteArray(I)[B
    .locals 3
    .param p1, "requestedSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->getBucketedSize(I)I

    move-result v0

    .line 94
    .local v0, "bucketedSize":I
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mByteArraySoftRef:Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 95
    .local v1, "byteArray":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 96
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->allocateByteArray(I)[B

    move-result-object v1

    .line 98
    :cond_1
    return-object v1
.end method


# virtual methods
.method public get(I)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .locals 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<[B>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    if-lez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Size must be greater than zero"

    invoke-static {v2, v5}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mMaxByteArraySize:I

    if-gt p1, v2, :cond_1

    :goto_1
    const-string/jumbo v2, "Requested size is too big"

    invoke-static {v3, v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 84
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->getByteArray(I)[B

    move-result-object v0

    .line 85
    .local v0, "byteArray":[B
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mResourceReleaser:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;

    invoke-static {v0, v2}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "byteArray":[B
    :cond_0
    move v2, v4

    .line 80
    goto :goto_0

    :cond_1
    move v3, v4

    .line 81
    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 88
    invoke-static {v1}, Lcom/alibaba/doraemon/image/utils/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method getBucketedSize(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mMinByteArraySize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 121
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public trim(Lcom/alibaba/doraemon/image/memory/MemoryTrimType;)V
    .locals 2
    .param p1, "trimType"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mByteArraySoftRef:Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
