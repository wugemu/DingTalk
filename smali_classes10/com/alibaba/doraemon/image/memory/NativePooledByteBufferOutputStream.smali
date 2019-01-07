.class public Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
.super Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
.source "NativePooledByteBufferOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream$InvalidStreamException;
    }
.end annotation


# instance fields
.field private mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<",
            "Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mInitialCapacity:I

.field private final mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->getMinBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;I)V
    .locals 2
    .param p1, "pool"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;
    .param p2, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;-><init>()V

    .line 46
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 47
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    .line 48
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    .line 49
    iput p2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mInitialCapacity:I

    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;ILjava/lang/String;)V
    .locals 2
    .param p1, "pool"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;
    .param p2, "initialCapacity"    # I
    .param p3, "gcPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;-><init>()V

    .line 56
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 57
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    .line 58
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    .line 59
    iput p2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mInitialCapacity:I

    .line 60
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-static {v0, v1, p3}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;Ljava/lang/String;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 61
    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method private ensureValid()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->isValid(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw v0

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->closeSafely(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    .line 145
    invoke-super {p0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 146
    return-void
.end method

.method realloc(I)V
    .locals 4
    .param p1, "newLength"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    .line 160
    .local v0, "chunk":Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->getSize()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    .line 164
    .local v1, "newbuf":Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->copy(ILcom/alibaba/doraemon/image/memory/INativeMemoryChunk;II)V

    .line 166
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->close()V

    .line 167
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    goto :goto_0
.end method

.method public reset(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->closeSafely(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 81
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    .line 84
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 85
    return-void

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    return v0
.end method

.method public toByteBuffer()Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->ensureValid()V

    .line 72
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    iget v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;-><init>(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;I)V

    return-object v0
.end method

.method public bridge synthetic toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 105
    .local v0, "buf":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 106
    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->write([B)V

    .line 107
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->ensureValid()V

    .line 130
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->realloc(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mBufRef:Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->write(I[BII)I

    .line 132
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->mCount:I

    .line 133
    return-void
.end method
