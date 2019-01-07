.class public Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;
.super Lcom/alibaba/doraemon/image/memory/BasePool;
.source "GenericByteArrayPool.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/ByteArrayPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/doraemon/image/memory/BasePool",
        "<[B>;",
        "Lcom/alibaba/doraemon/image/memory/ByteArrayPool;"
    }
.end annotation


# instance fields
.field private final mBucketSizes:[I


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V
    .locals 4
    .param p1, "memoryTrimmableRegistry"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;
    .param p2, "poolParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;
    .param p3, "poolStatsTracker"    # Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/image/memory/BasePool;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V

    .line 40
    iget-object v0, p2, Lcom/alibaba/doraemon/image/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 41
    .local v0, "bucketSizes":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->mBucketSizes:[I

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->mBucketSizes:[I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->initialize()V

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic alloc(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->alloc(I)[B

    move-result-object v0

    return-object v0
.end method

.method protected alloc(I)[B
    .locals 1
    .param p1, "bucketedSize"    # I

    .prologue
    .line 63
    new-array v0, p1, [B

    return-object v0
.end method

.method protected bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->free([B)V

    return-void
.end method

.method protected free([B)V
    .locals 0
    .param p1, "value"    # [B

    .prologue
    .line 72
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method protected getBucketedSize(I)I
    .locals 4
    .param p1, "requestSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    if-gtz p1, :cond_0

    .line 100
    new-instance v1, Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->mBucketSizes:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget v0, v2, v1

    .line 105
    .local v0, "bucketedSize":I
    if-lt v0, p1, :cond_1

    .line 112
    .end local v0    # "bucketedSize":I
    :goto_1
    return v0

    .line 104
    .restart local v0    # "bucketedSize":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "bucketedSize":I
    :cond_2
    move v0, p1

    .line 112
    goto :goto_1
.end method

.method protected bridge synthetic getBucketedSizeForValue(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->getBucketedSizeForValue([B)I

    move-result v0

    return v0
.end method

.method protected getBucketedSizeForValue([B)I
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 122
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    array-length v0, p1

    return v0
.end method

.method public getMinBufferSize()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->mBucketSizes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected getSizeInBytes(I)I
    .locals 0
    .param p1, "bucketedSize"    # I

    .prologue
    .line 83
    return p1
.end method

.method public bridge synthetic getWhenHardCapReached(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->getWhenHardCapReached(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getWhenHardCapReached(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 128
    new-array v0, p1, [B

    return-object v0
.end method
