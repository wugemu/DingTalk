.class public Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;
.super Lcom/alibaba/doraemon/image/memory/BasePool;
.source "NativeMemoryChunkPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/doraemon/image/memory/BasePool",
        "<",
        "Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBucketSizes:[I


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V
    .locals 4
    .param p1, "memoryTrimmableRegistry"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;
    .param p2, "poolParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;
    .param p3, "nativeMemoryChunkPoolStatsTracker"    # Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/image/memory/BasePool;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V

    .line 32
    iget-object v0, p2, Lcom/alibaba/doraemon/image/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 33
    .local v0, "bucketSizes":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->initialize()V

    .line 38
    return-void
.end method


# virtual methods
.method protected alloc(I)Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;
    .locals 1
    .param p1, "bucketedSize"    # I

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic alloc(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->alloc(I)Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    move-result-object v0

    return-object v0
.end method

.method protected free(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    .prologue
    .line 64
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->close()V

    .line 66
    return-void
.end method

.method protected bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->free(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;)V

    return-void
.end method

.method protected getBucketedSize(I)I
    .locals 4
    .param p1, "requestSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    if-gtz p1, :cond_0

    .line 92
    new-instance v1, Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget v0, v2, v1

    .line 97
    .local v0, "bucketedSize":I
    if-lt v0, p1, :cond_1

    .line 104
    .end local v0    # "bucketedSize":I
    :goto_1
    return v0

    .line 96
    .restart local v0    # "bucketedSize":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "bucketedSize":I
    :cond_2
    move v0, p1

    .line 104
    goto :goto_1
.end method

.method protected getBucketedSizeForValue(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;)I
    .locals 1
    .param p1, "value"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    .prologue
    .line 114
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->getSize()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getBucketedSizeForValue(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->getBucketedSizeForValue(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;)I

    move-result v0

    return v0
.end method

.method public getMinBufferSize()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected getSizeInBytes(I)I
    .locals 0
    .param p1, "bucketedSize"    # I

    .prologue
    .line 75
    return p1
.end method

.method public getWhenHardCapReached(I)Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;
    .locals 2
    .param p1, "bucketedSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;-><init>(IZ)V

    return-object v0
.end method

.method public bridge synthetic getWhenHardCapReached(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->getWhenHardCapReached(I)Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    move-result-object v0

    return-object v0
.end method

.method protected isReusable(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;)Z
    .locals 1
    .param p1, "value"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic isReusable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->isReusable(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;)Z

    move-result v0

    return v0
.end method
