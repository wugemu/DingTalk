.class public Lcom/alibaba/doraemon/image/memory/PoolFactory;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# static fields
.field private static sPoolFactory:Lcom/alibaba/doraemon/image/memory/PoolFactory;


# instance fields
.field private isInited:Z

.field private mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

.field private mNativeMemoryChunkPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

.field private mPooledByteBufferFactory:Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

.field private mPooledByteStreams:Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

.field private mSharedByteArray:Lcom/alibaba/doraemon/image/memory/SharedByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->sPoolFactory:Lcom/alibaba/doraemon/image/memory/PoolFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->isInited:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/PoolConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->isInited:Z

    .line 42
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PoolConfig;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .line 43
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alibaba/doraemon/image/memory/PoolFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->sPoolFactory:Lcom/alibaba/doraemon/image/memory/PoolFactory;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PoolFactory;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/PoolFactory;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->sPoolFactory:Lcom/alibaba/doraemon/image/memory/PoolFactory;

    .line 35
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->sPoolFactory:Lcom/alibaba/doraemon/image/memory/PoolFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNativeMemoryChunkPool()Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .line 60
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .line 61
    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolConfig;->getNativeMemoryChunkPoolParams()Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .line 62
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PoolConfig;->getNativeMemoryChunkPoolStatsTracker()Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    return-object v0
.end method

.method public getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mPooledByteBufferFactory:Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getNativeMemoryChunkPool()Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteStreams()Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;Lcom/alibaba/doraemon/image/memory/PooledByteStreams;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mPooledByteBufferFactory:Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mPooledByteBufferFactory:Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    return-object v0
.end method

.method public getPooledByteStreams()Lcom/alibaba/doraemon/image/memory/PooledByteStreams;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mPooledByteStreams:Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mPooledByteStreams:Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mPooledByteStreams:Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    return-object v0
.end method

.method public getSharedByteArray()Lcom/alibaba/doraemon/image/memory/SharedByteArray;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mSharedByteArray:Lcom/alibaba/doraemon/image/memory/SharedByteArray;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .line 86
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .line 87
    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolConfig;->getSharedByteArrayParams()Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/image/memory/SharedByteArray;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mSharedByteArray:Lcom/alibaba/doraemon/image/memory/SharedByteArray;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mSharedByteArray:Lcom/alibaba/doraemon/image/memory/SharedByteArray;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iget-boolean v1, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->isInited:Z

    if-eqz v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolConfig;->newBuilder()Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    move-result-object v0

    .line 51
    .local v0, "builder":Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    new-instance v1, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->setMemoryTrimmableRegistry(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;)Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .line 52
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->build()Lcom/alibaba/doraemon/image/memory/PoolConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->mConfig:Lcom/alibaba/doraemon/image/memory/PoolConfig;

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/doraemon/image/memory/PoolFactory;->isInited:Z

    goto :goto_0
.end method
