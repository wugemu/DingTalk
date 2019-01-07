.class public Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;
.super Ljava/lang/Object;
.source "JavaMemoryChunkImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "JavaMemoryChunkImpl"


# instance fields
.field private mBytesPtr:[B

.field private mClosed:Z

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    .line 37
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mClosed:Z

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-lez p1, :cond_0

    .line 25
    iput p1, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    .line 26
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    .line 27
    iput-boolean v1, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mClosed:Z

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    .line 30
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mClosed:Z

    goto :goto_0
.end method

.method private doCopy(ILcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 235
    invoke-virtual {p2}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 236
    iget v0, p2, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->checkBounds(IIII)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    iget-object v1, p2, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    invoke-static {v0, p1, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    return-void

    :cond_0
    move v0, v2

    .line 234
    goto :goto_0

    :cond_1
    move v1, v2

    .line 235
    goto :goto_1
.end method


# virtual methods
.method public adjustByteCount(II)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 206
    .local v0, "available":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public checkBounds(IIII)V
    .locals 2
    .param p1, "myOffset"    # I
    .param p2, "otherLength"    # I
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    if-ltz p4, :cond_0

    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p1, p4

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    if-gt v0, v1, :cond_0

    add-int v0, p3, p4

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 219
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mClosed:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mClosed:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public copy(ILcom/alibaba/doraemon/image/memory/INativeMemoryChunk;II)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x0

    .line 148
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->isClosed()Z

    move-result v9

    if-nez v9, :cond_3

    .line 149
    invoke-interface {p2}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->reallyINativeMemoryChunk()Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    move-result-object v3

    .line 150
    .local v3, "realOther":Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    instance-of v9, v3, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;

    if-eqz v9, :cond_5

    .line 151
    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->isClosed()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 152
    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->getSize()I

    move-result v7

    invoke-virtual {p0, p1, v7, p3, p4}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->checkBounds(IIII)V

    .line 154
    const/4 v4, 0x0

    .line 155
    .local v4, "tmpBytes":[B
    iget v7, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    sub-int v1, v7, p1

    .line 156
    .local v1, "needReadCount":I
    move v2, p1

    .line 157
    .local v2, "readCount":I
    move v6, p3

    .line 160
    .local v6, "writeOffset":I
    :goto_0
    if-lez v1, :cond_2

    .line 161
    const/16 v7, 0x800

    :try_start_0
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    .line 162
    if-le v1, v8, :cond_1

    move v5, v8

    .line 164
    .local v5, "tmpCount":I
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v4, v7, v5}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->read(I[BII)I

    .line 165
    const/4 v7, 0x0

    invoke-interface {v3, v6, v4, v7, v5}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->write(I[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    add-int/2addr v2, v5

    .line 168
    add-int/2addr v6, v5

    .line 169
    sub-int/2addr v1, v5

    goto :goto_0

    .end local v5    # "tmpCount":I
    :cond_1
    move v5, v1

    .line 162
    goto :goto_1

    .line 172
    :cond_2
    if-eqz v4, :cond_3

    .line 173
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 198
    .end local v1    # "needReadCount":I
    .end local v2    # "readCount":I
    .end local v3    # "realOther":Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .end local v4    # "tmpBytes":[B
    .end local v6    # "writeOffset":I
    :cond_3
    :goto_2
    return-void

    .line 172
    .restart local v1    # "needReadCount":I
    .restart local v2    # "readCount":I
    .restart local v3    # "realOther":Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .restart local v4    # "tmpBytes":[B
    .restart local v6    # "writeOffset":I
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_4

    .line 173
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_4
    throw v7

    .line 176
    .end local v1    # "needReadCount":I
    .end local v2    # "readCount":I
    .end local v4    # "tmpBytes":[B
    .end local v6    # "writeOffset":I
    :cond_5
    instance-of v8, v3, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;

    if-eqz v8, :cond_3

    move-object v0, v3

    .line 177
    check-cast v0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;

    .line 179
    .local v0, "chunkImpl":Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;
    iget-object v8, v0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    iget-object v9, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    if-ne v8, v9, :cond_6

    .line 182
    const-string/jumbo v8, "JavaMemoryChunkImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Copying from JavaMemoryChunkImpl "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to JavaMemoryChunkImpl "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " which share the same address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 193
    :cond_6
    monitor-enter p0

    .line 194
    :try_start_1
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->doCopy(ILcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;II)V

    .line 195
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "JavaMemoryChunkImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finalize: JavaMemoryChunkImpl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " still active. Underlying address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    return v0
.end method

.method public isAllocatedNative()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

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

    .line 128
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 129
    if-ltz p1, :cond_1

    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 130
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mSize:I

    if-ge p1, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    aget-byte v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 128
    goto :goto_0

    :cond_1
    move v2, v1

    .line 129
    goto :goto_1

    :cond_2
    move v0, v1

    .line 130
    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(I[BII)I
    .locals 2
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 115
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->adjustByteCount(II)I

    move-result v0

    .line 116
    .local v0, "actualCount":I
    array-length v1, p2

    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->checkBounds(IIII)V

    .line 118
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    invoke-static {v1, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return v0

    .line 114
    .end local v0    # "actualCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reallyINativeMemoryChunk()Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public declared-synchronized write(I[BII)I
    .locals 2
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 93
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->adjustByteCount(II)I

    move-result v0

    .line 94
    .local v0, "actualCount":I
    array-length v1, p2

    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->checkBounds(IIII)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;->mBytesPtr:[B

    invoke-static {p2, p3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return v0

    .line 91
    .end local v0    # "actualCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
