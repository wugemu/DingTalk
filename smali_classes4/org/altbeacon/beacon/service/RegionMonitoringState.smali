.class public Lorg/altbeacon/beacon/service/RegionMonitoringState;
.super Ljava/lang/Object;
.source "RegionMonitoringState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callback:Lorg/altbeacon/beacon/service/Callback;

.field private inside:Z

.field private lastSeenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/service/Callback;)V
    .locals 2
    .param p1, "c"    # Lorg/altbeacon/beacon/service/Callback;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    .line 40
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->callback:Lorg/altbeacon/beacon/service/Callback;

    .line 41
    return-void
.end method


# virtual methods
.method public getCallback()Lorg/altbeacon/beacon/service/Callback;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->callback:Lorg/altbeacon/beacon/service/Callback;

    return-object v0
.end method

.method public getInside()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    return v0
.end method

.method public markInside()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    .line 50
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    if-nez v1, :cond_0

    .line 51
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markOutsideIfExpired()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    if-eqz v2, :cond_0

    .line 59
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRegionExitPeriod()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 60
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    .line 61
    sget-object v2, Lorg/altbeacon/beacon/service/RegionMonitoringState;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "We are newly outside the region because the lastSeenTime of %s was %s seconds ago, and that is over the expiration duration of %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    .line 63
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    .line 64
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRegionExitPeriod()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    .line 61
    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-wide v10, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    .line 69
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
