.class public Lorg/altbeacon/beacon/service/RangedBeacon;
.super Ljava/lang/Object;
.source "RangedBeacon.java"


# static fields
.field public static final DEFAULT_MAX_TRACKING_AGE:J = 0x1388L

.field public static final DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "RangedBeacon"

.field public static maxTrackingAge:J

.field private static sampleExpirationMilliseconds:J


# instance fields
.field protected filter:Lorg/altbeacon/beacon/service/RssiFilter;

.field protected lastTrackedTimeMillis:J

.field mBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mTracked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x1388

    sput-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->maxTrackingAge:J

    .line 18
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 6
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 20
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->filter:Lorg/altbeacon/beacon/service/RssiFilter;

    .line 27
    :try_start_0
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRssiFilterImplClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 28
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/RssiFilter;

    iput-object v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->filter:Lorg/altbeacon/beacon/service/RssiFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :goto_0
    sget-wide v2, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    invoke-static {v2, v3}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->setSampleExpirationMilliseconds(J)V

    .line 34
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    .line 35
    return-void

    .line 30
    :catch_0
    move-exception v1

    const-string/jumbo v1, "RangedBeacon"

    const-string/jumbo v2, "Could not construct RssiFilterImplClass %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRssiFilterImplClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setMaxTrackinAge(I)V
    .locals 2
    .param p0, "maxTrackinAge"    # I

    .prologue
    .line 82
    int-to-long v0, p0

    sput-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->maxTrackingAge:J

    .line 83
    return-void
.end method

.method public static setSampleExpirationMilliseconds(J)V
    .locals 0
    .param p0, "milliseconds"    # J

    .prologue
    .line 78
    sput-wide p0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    .line 79
    return-void
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "rssi"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    .line 72
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->filter:Lorg/altbeacon/beacon/service/RssiFilter;

    invoke-interface {v0, p1}, Lorg/altbeacon/beacon/service/RssiFilter;->addMeasurement(Ljava/lang/Integer;)V

    .line 74
    :cond_0
    return-void
.end method

.method public commitMeasurements()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 56
    iget-object v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->filter:Lorg/altbeacon/beacon/service/RssiFilter;

    invoke-interface {v2}, Lorg/altbeacon/beacon/service/RssiFilter;->noMeasurementsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->filter:Lorg/altbeacon/beacon/service/RssiFilter;

    invoke-interface {v2}, Lorg/altbeacon/beacon/service/RssiFilter;->calculateRssi()D

    move-result-wide v0

    .line 58
    .local v0, "runningAverage":D
    iget-object v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v2, v0, v1}, Lorg/altbeacon/beacon/Beacon;->setRunningAverageRssi(D)V

    .line 59
    const-string/jumbo v2, "RangedBeacon"

    const-string/jumbo v3, "calculated new runningAverageRssi: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .end local v0    # "runningAverage":D
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v2, "RangedBeacon"

    const-string/jumbo v3, "No measurements available to calculate running average"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBeacon()Lorg/altbeacon/beacon/Beacon;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    return-object v0
.end method

.method public getTrackingAge()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getTrackingAge()J

    move-result-wide v0

    sget-wide v2, Lorg/altbeacon/beacon/service/RangedBeacon;->maxTrackingAge:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTracked()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return v0
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->filter:Lorg/altbeacon/beacon/service/RssiFilter;

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/RssiFilter;->noMeasurementsAvailable()Z

    move-result v0

    return v0
.end method

.method public setTracked(Z)V
    .locals 0
    .param p1, "tracked"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 48
    return-void
.end method

.method public updateBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 39
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/RangedBeacon;->addMeasurement(Ljava/lang/Integer;)V

    .line 40
    return-void
.end method
