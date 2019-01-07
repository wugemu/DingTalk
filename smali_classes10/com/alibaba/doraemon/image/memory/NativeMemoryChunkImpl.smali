.class public Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;
.super Ljava/lang/Object;
.source "NativeMemoryChunkImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "NativeMemoryChunkImp"


# instance fields
.field private mClosed:Z

.field private final mNativePtr:J

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    .line 42
    iput-boolean v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v3, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z

    .line 28
    if-lez p1, :cond_0

    .line 29
    iput p1, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    .line 30
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeAllocateWrapper(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    .line 31
    iput-boolean v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    iput v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    .line 35
    iput-boolean v3, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z

    goto :goto_0
.end method

.method private doCopy(ILcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 254
    invoke-virtual {p2}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 255
    iget v0, p2, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->checkBounds(IIII)V

    .line 256
    iget-wide v0, p2, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeMemcpyWrapper(JJI)V

    .line 257
    return-void

    :cond_0
    move v0, v2

    .line 253
    goto :goto_0

    :cond_1
    move v1, v2

    .line 254
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
    .line 228
    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 229
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
    .line 240
    if-ltz p4, :cond_0

    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p1, p4

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    if-gt v0, v1, :cond_0

    add-int v0, p3, p4

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 242
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z

    .line 56
    iget-wide v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeFreeWrapper(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public copy(ILcom/alibaba/doraemon/image/memory/INativeMemoryChunk;II)V
    .locals 14
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->reallyINativeMemoryChunk()Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    move-result-object v5

    .line 160
    .local v5, "realOther":Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->isClosed()Z

    move-result v9

    if-nez v9, :cond_3

    .line 161
    invoke-interface {v5}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->isClosed()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 162
    invoke-interface {v5}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->getSize()I

    move-result v9

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->checkBounds(IIII)V

    .line 163
    instance-of v9, v5, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;

    if-eqz v9, :cond_5

    .line 164
    const/4 v6, 0x0

    .line 165
    .local v6, "tmpBytes":[B
    iget v9, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    sub-int v3, v9, p1

    .line 166
    .local v3, "needReadCount":I
    move v4, p1

    .line 167
    .local v4, "readCount":I
    move/from16 v8, p3

    .line 170
    .local v8, "writeOffset":I
    :goto_1
    if-lez v3, :cond_2

    .line 171
    const/16 v9, 0x800

    :try_start_0
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v6

    .line 172
    const/16 v9, 0x800

    if-le v3, v9, :cond_1

    const/16 v7, 0x800

    .line 174
    .local v7, "tmpCount":I
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {p0, v4, v6, v9, v7}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->read(I[BII)I

    .line 175
    const/4 v9, 0x0

    invoke-interface {v5, v8, v6, v9, v7}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->write(I[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    add-int/2addr v4, v7

    .line 178
    add-int/2addr v8, v7

    .line 179
    sub-int/2addr v3, v7

    goto :goto_1

    .line 161
    .end local v3    # "needReadCount":I
    .end local v4    # "readCount":I
    .end local v6    # "tmpBytes":[B
    .end local v7    # "tmpCount":I
    .end local v8    # "writeOffset":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .restart local v3    # "needReadCount":I
    .restart local v4    # "readCount":I
    .restart local v6    # "tmpBytes":[B
    .restart local v8    # "writeOffset":I
    :cond_1
    move v7, v3

    .line 172
    goto :goto_2

    .line 182
    :cond_2
    if-eqz v6, :cond_3

    .line 183
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 221
    .end local v3    # "needReadCount":I
    .end local v4    # "readCount":I
    .end local v6    # "tmpBytes":[B
    .end local v8    # "writeOffset":I
    :cond_3
    :goto_3
    return-void

    .line 182
    .restart local v3    # "needReadCount":I
    .restart local v4    # "readCount":I
    .restart local v6    # "tmpBytes":[B
    .restart local v8    # "writeOffset":I
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_4

    .line 183
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_4
    throw v9

    .line 186
    .end local v3    # "needReadCount":I
    .end local v4    # "readCount":I
    .end local v6    # "tmpBytes":[B
    .end local v8    # "writeOffset":I
    :cond_5
    instance-of v9, v5, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;

    if-eqz v9, :cond_3

    move-object v2, v5

    .line 187
    check-cast v2, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;

    .line 189
    .local v2, "chunkImpl":Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;
    iget-wide v10, v2, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    iget-wide v12, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_6

    .line 192
    const-string/jumbo v9, "NativeMemoryChunkImp"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Copying from NativeMemoryChunk "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to NativeMemoryChunk "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 197
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " which share the same address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    .line 199
    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 192
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 204
    :cond_6
    iget-wide v10, v2, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    iget-wide v12, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_7

    .line 205
    monitor-enter v2

    .line 206
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :try_start_2
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->doCopy(ILcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;II)V

    .line 208
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 209
    :try_start_3
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v9

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 208
    :catchall_2
    move-exception v9

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    :cond_7
    monitor-enter p0

    .line 215
    :try_start_6
    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 216
    :try_start_7
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->doCopy(ILcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;II)V

    .line 217
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 218
    :try_start_8
    monitor-exit p0

    goto/16 :goto_3

    :catchall_3
    move-exception v9

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v9

    .line 217
    :catchall_4
    move-exception v9

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string/jumbo v0, "NativeMemoryChunkImp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finalize: Chunk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " still active. Underlying address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
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
    .line 73
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    return v0
.end method

.method public isAllocatedNative()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mClosed:Z
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
    .locals 4
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 135
    if-ltz p1, :cond_1

    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 136
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mSize:I

    if-ge p1, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 137
    iget-wide v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeReadByteWrapper(J)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 134
    goto :goto_0

    :cond_1
    move v2, v1

    .line 135
    goto :goto_1

    :cond_2
    move v0, v1

    .line 136
    goto :goto_2

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(I[BII)I
    .locals 6
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 122
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->adjustByteCount(II)I

    move-result v0

    .line 123
    .local v0, "actualCount":I
    array-length v1, p2

    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->checkBounds(IIII)V

    .line 124
    iget-wide v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3, p2, p3, v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeCopyToByteArrayWrapper(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return v0

    .line 121
    .end local v0    # "actualCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reallyINativeMemoryChunk()Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public declared-synchronized write(I[BII)I
    .locals 6
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 97
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->adjustByteCount(II)I

    move-result v0

    .line 98
    .local v0, "actualCount":I
    array-length v1, p2

    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->checkBounds(IIII)V

    .line 99
    iget-wide v2, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;->mNativePtr:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3, p2, p3, v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeCopyFromByteArrayWrapper(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return v0

    .line 95
    .end local v0    # "actualCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
