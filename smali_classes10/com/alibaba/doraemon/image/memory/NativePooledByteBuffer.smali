.class public Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
.super Ljava/lang/Object;
.source "NativePooledByteBuffer.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;


# instance fields
.field mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<",
            "Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final mSize:I


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<",
            "Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "bufRef":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->getSize()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->clone()Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 29
    iput p2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mSize:I

    .line 30
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->closeSafely(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ensureValid()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->isValid(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(I)B
    .locals 3
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->ensureValid()V

    .line 46
    if-ltz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 47
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mSize:I

    if-ge p1, v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->read(I)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 46
    goto :goto_0

    :cond_1
    move v0, v1

    .line 47
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(I[BII)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "buffer"    # [B
    .param p3, "bufferOffset"    # I
    .param p4, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->ensureValid()V

    .line 56
    add-int v0, p1, p4

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mSize:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->read(I[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->ensureValid()V

    .line 40
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
