.class public Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;
.super Ljava/lang/Object;
.source "MemoryPool.java"


# static fields
.field private static final BUFFER_LARGET_LEN:I = 0x800

.field private static final BUFFER_MID_LEN:I = 0x400

.field private static final BUFFER_SMALL_LEN:I = 0x100

.field private static final BUFFER_SUPER_LEN:I = 0x1004

.field private static final BYTE_ARRAY_MAX_COUNT:I = 0xa

.field private static final LARGE_BUFFER_MAX_COUNT:I = 0xa

.field private static final MID_BUFFER_MAX_COUNT:I = 0xa

.field private static final SMALL_BUFFER_MAX_COUNT:I = 0x14

.field private static final SUPER_BUFFER_MAX_COUNT:I = 0xa

.field private static mBuffers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mByteArrayBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mBuffers:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mByteArrayBuffer:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtainByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "len"    # I

    .prologue
    .line 32
    const-class v3, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;

    monitor-enter v3

    const/16 v2, 0x1004

    if-le p0, v2, :cond_0

    .line 33
    const/4 v2, 0x0

    .line 47
    :goto_0
    monitor-exit v3

    return-object v2

    .line 34
    :cond_0
    const/16 v1, 0x100

    .line 35
    .local v1, "bufferSize":I
    const/16 v2, 0x800

    if-le p0, v2, :cond_3

    .line 36
    const/16 v1, 0x1004

    .line 42
    :cond_1
    :goto_1
    :try_start_0
    sget-object v2, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    .local v0, "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 44
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 37
    .end local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_3
    const/16 v2, 0x400

    if-le p0, v2, :cond_4

    .line 38
    const/16 v1, 0x800

    goto :goto_1

    .line 39
    :cond_4
    const/16 v2, 0x100

    if-le p0, v2, :cond_1

    .line 40
    const/16 v1, 0x400

    goto :goto_1

    .line 47
    .restart local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static obtainFixedLenByteArray()[B
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mByteArrayBuffer:Ljava/util/List;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mByteArrayBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mByteArrayBuffer:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    monitor-exit v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized recycleByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 51
    const-class v5, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 52
    .local v1, "bufferCapacity":I
    const/16 v3, 0x100

    .line 53
    .local v3, "bufferSize":I
    const/16 v2, 0x14

    .line 55
    .local v2, "bufferMaxCount":I
    const/16 v4, 0x1004

    if-lt v1, v4, :cond_3

    .line 56
    const/16 v3, 0x1004

    .line 57
    const/16 v2, 0xa

    .line 66
    :cond_0
    :goto_0
    sget-object v4, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    .local v0, "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 69
    .restart local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    sget-object v4, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 73
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 74
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_2
    monitor-exit v5

    return-void

    .line 58
    .end local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_3
    const/16 v4, 0x800

    if-lt v1, v4, :cond_4

    .line 59
    const/16 v3, 0x800

    .line 60
    const/16 v2, 0xa

    goto :goto_0

    .line 61
    :cond_4
    const/16 v4, 0x400

    if-lt v1, v4, :cond_0

    .line 62
    const/16 v3, 0x400

    .line 63
    const/16 v2, 0xa

    goto :goto_0

    .line 51
    .end local v1    # "bufferCapacity":I
    .end local v2    # "bufferMaxCount":I
    .end local v3    # "bufferSize":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static recycleFixedLenByteArray([B)V
    .locals 3
    .param p0, "byteArray"    # [B

    .prologue
    .line 92
    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mByteArrayBuffer:Ljava/util/List;

    monitor-enter v1

    .line 93
    :try_start_0
    array-length v0, p0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mByteArrayBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 94
    :cond_0
    monitor-exit v1

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->mByteArrayBuffer:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
