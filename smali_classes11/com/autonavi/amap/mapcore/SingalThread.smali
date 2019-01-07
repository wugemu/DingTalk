.class public Lcom/autonavi/amap/mapcore/SingalThread;
.super Ljava/lang/Thread;
.source "SingalThread.java"


# instance fields
.field private isWaiting:Z

.field public logTag:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mWaiting:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 9
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mWaiting:Ljava/util/concurrent/locks/Condition;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->isWaiting:Z

    .line 11
    const-string/jumbo v0, "SingalThread"

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doAwake()V
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->isWaiting:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->isWaiting:Z

    .line 31
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mWaiting:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 32
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    :cond_0
    return-void
.end method

.method public doWait()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->isWaiting:Z

    .line 19
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mWaiting:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 21
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/SingalThread;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    return-void
.end method
