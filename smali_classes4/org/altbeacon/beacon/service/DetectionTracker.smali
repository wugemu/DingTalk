.class public Lorg/altbeacon/beacon/service/DetectionTracker;
.super Ljava/lang/Object;
.source "DetectionTracker.java"


# static fields
.field private static sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;


# instance fields
.field private mLastDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    .line 13
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lorg/altbeacon/beacon/service/DetectionTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lorg/altbeacon/beacon/service/DetectionTracker;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/DetectionTracker;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    .line 18
    :cond_0
    sget-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLastDetectionTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    return-wide v0
.end method

.method public recordDetection()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    .line 25
    return-void
.end method
