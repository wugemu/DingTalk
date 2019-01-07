.class public Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/image/memory/PoolConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitmapPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

.field private mBitmapPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

.field private mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

.field private mNativeMemoryChunkPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

.field private mNativeMemoryChunkPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

.field private mSharedByteArrayParams:Lcom/alibaba/doraemon/image/memory/PoolParams;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/image/memory/PoolConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$1;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mBitmapPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mBitmapPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mNativeMemoryChunkPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mNativeMemoryChunkPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mSharedByteArrayParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/alibaba/doraemon/image/memory/PoolConfig;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PoolConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/doraemon/image/memory/PoolConfig;-><init>(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;Lcom/alibaba/doraemon/image/memory/PoolConfig$1;)V

    return-object v0
.end method

.method public setBitmapPoolParams(Lcom/alibaba/doraemon/image/memory/PoolParams;)Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .locals 1
    .param p1, "bitmapPoolParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PoolParams;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mBitmapPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 99
    return-object p0
.end method

.method public setBitmapPoolStatsTracker(Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .locals 1
    .param p1, "bitmapPoolStatsTracker"    # Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mBitmapPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .line 105
    return-object p0
.end method

.method public setMemoryTrimmableRegistry(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;)Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .locals 0
    .param p1, "memoryTrimmableRegistry"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    .line 110
    return-object p0
.end method

.method public setNativeMemoryChunkPoolParams(Lcom/alibaba/doraemon/image/memory/PoolParams;)Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .locals 1
    .param p1, "nativeMemoryChunkPoolParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;

    .prologue
    .line 114
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PoolParams;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mNativeMemoryChunkPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 115
    return-object p0
.end method

.method public setNativeMemoryChunkPoolStatsTracker(Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .locals 1
    .param p1, "nativeMemoryChunkPoolStatsTracker"    # Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .prologue
    .line 120
    .line 121
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mNativeMemoryChunkPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .line 122
    return-object p0
.end method

.method public setSharedByteArrayParams(Lcom/alibaba/doraemon/image/memory/PoolParams;)Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .locals 0
    .param p1, "sharedByteArrayParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->mSharedByteArrayParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 127
    return-object p0
.end method
