.class public Lcom/alibaba/doraemon/image/memory/PoolConfig;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    }
.end annotation


# instance fields
.field private final mBitmapPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

.field private final mBitmapPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

.field private final mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

.field private final mNativeMemoryChunkPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

.field private final mNativeMemoryChunkPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

.field private final mSharedByteArrayParams:Lcom/alibaba/doraemon/image/memory/PoolParams;


# direct methods
.method private constructor <init>(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$000(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/DefaultBitmapPoolParams;->get()Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mBitmapPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 35
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$100(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->getInstance()Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    move-result-object v0

    .line 37
    :goto_1
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mBitmapPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .line 39
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$200(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    move-result-object v0

    if-nez v0, :cond_2

    .line 40
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;->getInstance()Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    move-result-object v0

    .line 41
    :goto_2
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    .line 43
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$300(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 44
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/DefaultNativeMemoryChunkPoolParams;->get()Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    .line 45
    :goto_3
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mNativeMemoryChunkPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 47
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$400(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    move-result-object v0

    if-nez v0, :cond_4

    .line 48
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->getInstance()Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    move-result-object v0

    .line 49
    :goto_4
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mNativeMemoryChunkPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .line 51
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$500(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    if-nez v0, :cond_5

    .line 52
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/DefaultSharedByteArrayParams;->get()Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    .line 53
    :goto_5
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mSharedByteArrayParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 54
    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$000(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$100(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    move-result-object v0

    goto :goto_1

    .line 41
    :cond_2
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$200(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    move-result-object v0

    goto :goto_2

    .line 45
    :cond_3
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$300(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    goto :goto_3

    .line 49
    :cond_4
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$400(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    move-result-object v0

    goto :goto_4

    .line 53
    :cond_5
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;->access$500(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    goto :goto_5
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;Lcom/alibaba/doraemon/image/memory/PoolConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .param p2, "x1"    # Lcom/alibaba/doraemon/image/memory/PoolConfig$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/image/memory/PoolConfig;-><init>(Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/image/memory/PoolConfig$Builder;-><init>(Lcom/alibaba/doraemon/image/memory/PoolConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public getBitmapPoolParams()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mBitmapPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    return-object v0
.end method

.method public getBitmapPoolStatsTracker()Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mBitmapPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    return-object v0
.end method

.method public getMemoryTrimmableRegistry()Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mMemoryTrimmableRegistry:Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public getNativeMemoryChunkPoolParams()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mNativeMemoryChunkPoolParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    return-object v0
.end method

.method public getNativeMemoryChunkPoolStatsTracker()Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mNativeMemoryChunkPoolStatsTracker:Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    return-object v0
.end method

.method public getSharedByteArrayParams()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PoolConfig;->mSharedByteArrayParams:Lcom/alibaba/doraemon/image/memory/PoolParams;

    return-object v0
.end method
