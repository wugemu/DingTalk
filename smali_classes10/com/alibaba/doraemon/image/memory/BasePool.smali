.class public abstract Lcom/alibaba/doraemon/image/memory/BasePool;
.super Ljava/lang/Object;
.source "BasePool.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/Pool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/image/memory/BasePool$PoolSizeViolationException;,
        Lcom/alibaba/doraemon/image/memory/BasePool$SizeTooLargeException;,
        Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;,
        Lcom/alibaba/doraemon/image/memory/BasePool$InvalidValueException;,
        Lcom/alibaba/doraemon/image/memory/BasePool$Counter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/image/memory/Pool",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mAllowNewBuckets:Z

.field final mBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/image/memory/Bucket",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

.field final mInUseValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field final mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

.field final mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

.field private final mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

.field final mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V
    .locals 2
    .param p1, "memoryTrimmableRegistry"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;
    .param p2, "poolParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;
    .param p3, "poolStatsTracker"    # Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .prologue
    .line 157
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    .line 158
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    .line 159
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PoolParams;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 160
    invoke-static {p3}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/image/memory/BasePool;->initBuckets(Landroid/util/SparseIntArray;)V

    .line 166
    invoke-static {}, Lcom/alibaba/doraemon/image/utils/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mInUseValues:Ljava/util/Set;

    .line 168
    new-instance v0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    .line 169
    new-instance v0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    .line 170
    return-void
.end method

.method private declared-synchronized ensurePoolSizeInvariant()V
    .locals 1

    .prologue
    .line 460
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/BasePool;->isMaxSizeSoftCapExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v0, v0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initBuckets(Landroid/util/SparseIntArray;)V
    .locals 8
    .param p1, "inUseCounts"    # Landroid/util/SparseIntArray;

    .prologue
    .line 469
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 475
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget-object v2, v5, Lcom/alibaba/doraemon/image/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 476
    .local v2, "bucketSizes":Landroid/util/SparseIntArray;
    if-eqz v2, :cond_1

    .line 477
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 478
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 479
    .local v1, "bucketSize":I
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 480
    .local v4, "maxLength":I
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 481
    .local v0, "bucketInUseCount":I
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    new-instance v6, Lcom/alibaba/doraemon/image/memory/Bucket;

    .line 484
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getSizeInBytes(I)I

    move-result v7

    invoke-direct {v6, v7, v4, v0}, Lcom/alibaba/doraemon/image/memory/Bucket;-><init>(III)V

    .line 481
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    .end local v0    # "bucketInUseCount":I
    .end local v1    # "bucketSize":I
    .end local v4    # "maxLength":I
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mAllowNewBuckets:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .end local v3    # "i":I
    :goto_1
    monitor-exit p0

    return-void

    .line 490
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mAllowNewBuckets:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 469
    .end local v2    # "bucketSizes":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public abstract alloc(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public declared-synchronized canAllocate(I)Z
    .locals 5
    .param p1, "sizeInBytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    const/4 v2, 0x0

    .line 675
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget v0, v3, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeHardCap:I

    .line 679
    .local v0, "hardCap":I
    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v3, v3, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v3, p1

    if-le v3, v0, :cond_0

    .line 680
    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onHardCapReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :goto_0
    monitor-exit p0

    return v2

    .line 685
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget v1, v3, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeSoftCap:I

    .line 686
    .local v1, "softCap":I
    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v3, v3, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v4, v4, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    if-le v3, v1, :cond_1

    .line 687
    sub-int v3, v1, p1

    invoke-virtual {p0, v3}, Lcom/alibaba/doraemon/image/memory/BasePool;->trimToSize(I)V

    .line 691
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v3, v3, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v4, v4, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    if-le v3, v0, :cond_2

    .line 692
    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onHardCapReached()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 675
    .end local v0    # "hardCap":I
    .end local v1    # "softCap":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 696
    .restart local v0    # "hardCap":I
    .restart local v1    # "softCap":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public abstract free(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public get(I)Ljava/lang/Object;
    .locals 10
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/BasePool;->ensurePoolSizeInvariant()V

    .line 195
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getBucketedSize(I)I

    move-result v1

    .line 198
    .local v1, "bucketedSize":I
    monitor-enter p0

    .line 199
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getBucket(I)Lcom/alibaba/doraemon/image/memory/Bucket;

    move-result-object v0

    .line 201
    .local v0, "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/Bucket;->get()Ljava/lang/Object;

    move-result-object v5

    .line 204
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_1

    .line 205
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mInUseValues:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 209
    invoke-virtual {p0, v5}, Lcom/alibaba/doraemon/image/memory/BasePool;->getBucketedSizeForValue(Ljava/lang/Object;)I

    move-result v1

    .line 210
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getSizeInBytes(I)I

    move-result v3

    .line 211
    .local v3, "sizeInBytes":I
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v6, v3}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->increment(I)V

    .line 212
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v6, v3}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->decrement(I)V

    .line 213
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v6, v3}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onValueReuse(I)V

    .line 215
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v6, v7, :cond_0

    .line 216
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "Used = (%d, %d); Free = (%d, %d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 219
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 220
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 221
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 222
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 218
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 217
    invoke-static {v4, v6}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v6, "get (reuse) (object, size) = (%x, %s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 226
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 225
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-static {v4, v6}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 303
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v5

    .line 235
    .end local v3    # "sizeInBytes":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getSizeInBytes(I)I

    move-result v3

    .line 236
    .restart local v3    # "sizeInBytes":I
    invoke-virtual {p0, v3}, Lcom/alibaba/doraemon/image/memory/BasePool;->canAllocate(I)Z

    move-result v2

    .line 237
    .local v2, "isCanAllocate":Z
    if-nez v2, :cond_2

    .line 238
    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 239
    new-instance v6, Lcom/alibaba/doraemon/image/memory/BasePool$PoolSizeViolationException;

    iget-object v7, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget v7, v7, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeHardCap:I

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    invoke-direct {v6, v7, v8, v9, v3}, Lcom/alibaba/doraemon/image/memory/BasePool$PoolSizeViolationException;-><init>(IIII)V

    throw v6

    .line 252
    .end local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    .end local v2    # "isCanAllocate":Z
    .end local v3    # "sizeInBytes":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 248
    .restart local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    .restart local v2    # "isCanAllocate":Z
    .restart local v3    # "sizeInBytes":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v6, v3}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->increment(I)V

    .line 249
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/Bucket;->incrementInUseCount()V

    .line 252
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    const/4 v5, 0x0

    .line 259
    .restart local v5    # "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_5

    .line 260
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->alloc(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 282
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    monitor-enter p0

    .line 283
    :try_start_3
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mInUseValues:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/BasePool;->trimToSoftCap()V

    .line 286
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v6, v3}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onAlloc(I)V

    .line 287
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v6, v7, :cond_4

    .line 288
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 289
    .restart local v4    # "tagName":Ljava/lang/String;
    const-string/jumbo v6, "Used = (%d, %d); Free = (%d, %d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 291
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 292
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 293
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 294
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 290
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-static {v4, v6}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string/jumbo v6, "get (alloc) (object, size) = (%x, %s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 298
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 297
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-static {v4, v6}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 262
    .restart local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_5
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getWhenHardCapReached(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v5

    goto/16 :goto_1

    .line 268
    :catch_0
    move-exception v6

    monitor-enter p0

    .line 269
    :try_start_5
    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v6, v3}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->decrement(I)V

    .line 270
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getBucket(I)Lcom/alibaba/doraemon/image/memory/Bucket;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_6

    .line 272
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/Bucket;->decrementInUseCount()V

    .line 274
    :cond_6
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6
.end method

.method declared-synchronized getBucket(I)Lcom/alibaba/doraemon/image/memory/Bucket;
    .locals 5
    .param p1, "bucketedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/alibaba/doraemon/image/memory/Bucket",
            "<TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/Bucket;

    .line 636
    .local v0, "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mAllowNewBuckets:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 649
    :goto_0
    monitor-exit p0

    return-object v1

    .line 642
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "creating new bucket "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v1, Lcom/alibaba/doraemon/image/memory/Bucket;

    .line 645
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getSizeInBytes(I)I

    move-result v2

    const v3, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/doraemon/image/memory/Bucket;-><init>(III)V

    .line 648
    .local v1, "newBucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 635
    .end local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    .end local v1    # "newBucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract getBucketedSize(I)I
.end method

.method public abstract getBucketedSizeForValue(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public abstract getSizeInBytes(I)I
.end method

.method public declared-synchronized getStats()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 720
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 721
    .local v4, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 722
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 723
    .local v2, "bucketedSize":I
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/memory/Bucket;

    .line 724
    .local v1, "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "buckets_used_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0, v2}, Lcom/alibaba/doraemon/image/memory/BasePool;->getSizeInBytes(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "BUCKET_USED_KEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/Bucket;->getInUseCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 729
    .end local v0    # "BUCKET_USED_KEY":Ljava/lang/String;
    .end local v1    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    .end local v2    # "bucketedSize":I
    :cond_0
    const-string/jumbo v5, "soft_cap"

    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget v6, v6, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeSoftCap:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string/jumbo v5, "hard_cap"

    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget v6, v6, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeHardCap:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v5, "used_count"

    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v6, v6, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string/jumbo v5, "used_bytes"

    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v6, v6, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string/jumbo v5, "free_count"

    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v6, v6, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v5, "free_bytes"

    iget-object v6, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v6, v6, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit p0

    return-object v4

    .line 720
    .end local v3    # "i":I
    .end local v4    # "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;->registerMemoryTrimmable(Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->setBasePool(Lcom/alibaba/doraemon/image/memory/BasePool;)V

    .line 178
    return-void
.end method

.method declared-synchronized isMaxSizeSoftCapExceeded()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 657
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v1, v1, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v2, v2, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget v2, v2, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeSoftCap:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    .line 659
    .local v0, "isMaxSizeSoftCapExceeded":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v1}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onSoftCapReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :cond_0
    monitor-exit p0

    return v0

    .line 657
    .end local v0    # "isMaxSizeSoftCapExceeded":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected isReusable(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method protected onParamsChanged()V
    .locals 0

    .prologue
    .line 440
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    return-void
.end method

.method public release(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "tagName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getBucketedSizeForValue(Ljava/lang/Object;)I

    move-result v1

    .line 321
    .local v1, "bucketedSize":I
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getSizeInBytes(I)I

    move-result v2

    .line 322
    .local v2, "sizeInBytes":I
    monitor-enter p0

    .line 323
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/image/memory/BasePool;->getBucket(I)Lcom/alibaba/doraemon/image/memory/Bucket;

    move-result-object v0

    .line 324
    .local v0, "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mInUseValues:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 332
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BasePool;->free(Ljava/lang/Object;)V

    .line 333
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v4, v2}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onFree(I)V

    .line 376
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v5, :cond_1

    .line 377
    const-string/jumbo v4, "Used = (%d, %d); Free = (%d, %d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v7, v7, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 379
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v7, v7, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 380
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v7, v7, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 381
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v7, v7, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 382
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 378
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    monitor-exit p0

    return-void

    .line 344
    :cond_2
    if-eqz v0, :cond_3

    .line 345
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/Bucket;->isMaxLengthExceeded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 346
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/BasePool;->isMaxSizeSoftCapExceeded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 347
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BasePool;->isReusable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 348
    :cond_3
    if-eqz v0, :cond_4

    .line 349
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/Bucket;->decrementInUseCount()V

    .line 352
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v5, :cond_5

    .line 353
    const-string/jumbo v4, "release (free) (object, size) = (%x, %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 355
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 354
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BasePool;->free(Ljava/lang/Object;)V

    .line 360
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->decrement(I)V

    .line 361
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v4, v2}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onFree(I)V

    goto/16 :goto_0

    .line 384
    .end local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 363
    .restart local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    :cond_6
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/image/memory/Bucket;->release(Ljava/lang/Object;)V

    .line 364
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->increment(I)V

    .line 365
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->decrement(I)V

    .line 366
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    invoke-interface {v4, v2}, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;->onValueRelease(I)V

    .line 367
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v5, :cond_0

    .line 368
    const-string/jumbo v4, "release (reuse) (object, size) = (%x, %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 370
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 369
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public trim(Lcom/alibaba/doraemon/image/memory/MemoryTrimType;)V
    .locals 0
    .param p1, "memoryTrimType"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    .prologue
    .line 395
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/BasePool;->trimToNothing()V

    .line 396
    return-void
.end method

.method trimToNothing()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 501
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    .local v2, "freeListList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Queue<TV;>;>;"
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 504
    .local v4, "inUseCounts":Landroid/util/SparseIntArray;
    monitor-enter p0

    .line 505
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 506
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/Bucket;

    .line 507
    .local v0, "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget-object v5, v0, Lcom/alibaba/doraemon/image/memory/Bucket;->mFreeList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 508
    iget-object v5, v0, Lcom/alibaba/doraemon/image/memory/Bucket;->mFreeList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/Bucket;->getInUseCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    :cond_1
    invoke-direct {p0, v4}, Lcom/alibaba/doraemon/image/memory/BasePool;->initBuckets(Landroid/util/SparseIntArray;)V

    .line 517
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->reset()V

    .line 518
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v5, v6, :cond_2

    .line 519
    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Used = (%d, %d); Free = (%d, %d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 521
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 522
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 523
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 524
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 520
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 519
    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/BasePool;->onParamsChanged()V

    .line 534
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 535
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 536
    .local v1, "freeList":Ljava/util/Queue;, "Ljava/util/Queue<TV;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 540
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/doraemon/image/memory/BasePool;->free(Ljava/lang/Object;)V

    goto :goto_2

    .line 526
    .end local v1    # "freeList":Ljava/util/Queue;, "Ljava/util/Queue<TV;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 534
    .restart local v1    # "freeList":Ljava/util/Queue;, "Ljava/util/Queue<TV;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 543
    .end local v1    # "freeList":Ljava/util/Queue;, "Ljava/util/Queue<TV;>;"
    :cond_4
    return-void
.end method

.method declared-synchronized trimToSize(I)V
    .locals 10
    .param p1, "targetSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 572
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v4, v4, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v5, v5, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v4, v5

    sub-int/2addr v4, p1

    iget-object v5, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v5, v5, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 573
    .local v1, "bytesToFree":I
    if-gtz v1, :cond_1

    .line 625
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 577
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v5, :cond_2

    .line 578
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v8, v9

    .line 581
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 579
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 578
    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Used = (%d, %d); Free = (%d, %d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 587
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 588
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 589
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 590
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 586
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 585
    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 596
    if-lez v1, :cond_4

    .line 599
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/Bucket;

    .line 600
    .local v0, "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    :goto_2
    if-lez v1, :cond_3

    .line 601
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/Bucket;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 602
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_3

    .line 605
    invoke-virtual {p0, v3}, Lcom/alibaba/doraemon/image/memory/BasePool;->free(Ljava/lang/Object;)V

    .line 606
    iget v4, v0, Lcom/alibaba/doraemon/image/memory/Bucket;->mItemSize:I

    sub-int/2addr v1, v4

    .line 607
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v5, v0, Lcom/alibaba/doraemon/image/memory/Bucket;->mItemSize:I

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->decrement(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 572
    .end local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    .end local v1    # "bytesToFree":I
    .end local v2    # "i":I
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 595
    .restart local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    .restart local v1    # "bytesToFree":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 612
    .end local v0    # "bucket":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v5, :cond_0

    .line 613
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Used = (%d, %d); Free = (%d, %d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 615
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 616
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 617
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 618
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 614
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 613
    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->TAG:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trimToSize: TargetSize = %d; Final Size = %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 622
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mUsed:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v8, v8, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mFree:Lcom/alibaba/doraemon/image/memory/BasePool$Counter;

    iget v9, v9, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v8, v9

    .line 623
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 621
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized trimToSoftCap()V
    .locals 1

    .prologue
    .line 552
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/BasePool;, "Lcom/alibaba/doraemon/image/memory/BasePool<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/BasePool;->isMaxSizeSoftCapExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool;->mPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    iget v0, v0, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeSoftCap:I

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/image/memory/BasePool;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :cond_0
    monitor-exit p0

    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
