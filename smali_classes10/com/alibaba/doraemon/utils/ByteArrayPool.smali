.class public Lcom/alibaba/doraemon/utils/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field private static sCommonByteArrayPool:Lcom/alibaba/doraemon/image/memory/ByteArrayPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBuf(I)[B
    .locals 6
    .param p0, "len"    # I

    .prologue
    .line 21
    const-class v5, Lcom/alibaba/doraemon/utils/ByteArrayPool;

    monitor-enter v5

    const/4 v3, 0x0

    .line 23
    .local v3, "result":[B
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getCommonByteArrayPool(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;)Lcom/alibaba/doraemon/image/memory/ByteArrayPool;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;

    .line 24
    .local v1, "byteArrayPool":Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->canAllocate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0

    .line 29
    :cond_0
    if-nez v3, :cond_1

    .line 30
    new-array v3, p0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v1    # "byteArrayPool":Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;
    :cond_1
    :goto_0
    monitor-exit v5

    return-object v3

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    new-array v3, p0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static getCommonByteArrayPool(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;)Lcom/alibaba/doraemon/image/memory/ByteArrayPool;
    .locals 3
    .param p0, "memoryTrimmableRegistry"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/doraemon/utils/ByteArrayPool;->sCommonByteArrayPool:Lcom/alibaba/doraemon/image/memory/ByteArrayPool;

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    if-nez p0, :cond_0

    .line 60
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;->getInstance()Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    move-result-object p0

    .line 63
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;

    .line 64
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/DefaultByteArrayPoolParams;->get()Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->getInstance()Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/doraemon/image/memory/GenericByteArrayPool;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V

    sput-object v0, Lcom/alibaba/doraemon/utils/ByteArrayPool;->sCommonByteArrayPool:Lcom/alibaba/doraemon/image/memory/ByteArrayPool;

    .line 68
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/utils/ByteArrayPool;->sCommonByteArrayPool:Lcom/alibaba/doraemon/image/memory/ByteArrayPool;

    return-object v0
.end method

.method public static declared-synchronized returnBuf([B)V
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 47
    const-class v2, Lcom/alibaba/doraemon/utils/ByteArrayPool;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 50
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getCommonByteArrayPool(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;)Lcom/alibaba/doraemon/image/memory/ByteArrayPool;

    move-result-object v0

    .line 51
    .local v0, "byteArrayPool":Lcom/alibaba/doraemon/image/memory/ByteArrayPool;
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/image/memory/ByteArrayPool;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "byteArrayPool":Lcom/alibaba/doraemon/image/memory/ByteArrayPool;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
