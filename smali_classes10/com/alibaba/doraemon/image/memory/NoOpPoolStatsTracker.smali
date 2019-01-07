.class public Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;
.super Ljava/lang/Object;
.source "NoOpPoolStatsTracker.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    .line 28
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onAlloc(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 54
    return-void
.end method

.method public onFree(I)V
    .locals 0
    .param p1, "sizeInBytes"    # I

    .prologue
    .line 59
    return-void
.end method

.method public onHardCapReached()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onSoftCapReached()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onValueRelease(I)V
    .locals 0
    .param p1, "sizeInBytes"    # I

    .prologue
    .line 64
    return-void
.end method

.method public onValueReuse(I)V
    .locals 0
    .param p1, "bucketedSize"    # I

    .prologue
    .line 39
    return-void
.end method

.method public setBasePool(Lcom/alibaba/doraemon/image/memory/BasePool;)V
    .locals 0
    .param p1, "basePool"    # Lcom/alibaba/doraemon/image/memory/BasePool;

    .prologue
    .line 34
    return-void
.end method
