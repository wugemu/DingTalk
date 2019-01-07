.class public Lorg/altbeacon/beacon/service/RangeState;
.super Ljava/lang/Object;
.source "RangeState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RangeState"

.field private static UseTrackingCache:Z


# instance fields
.field private final mCallback:Lorg/altbeacon/beacon/service/Callback;

.field private mRangedBeacons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            "Lorg/altbeacon/beacon/service/RangedBeacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lorg/altbeacon/beacon/service/RangeState;->UseTrackingCache:Z

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/service/Callback;)V
    .locals 1
    .param p1, "c"    # Lorg/altbeacon/beacon/service/Callback;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangeState;->mCallback:Lorg/altbeacon/beacon/service/Callback;

    .line 42
    return-void
.end method

.method public static setUseTrackingCache(Z)V
    .locals 0
    .param p0, "useTrackingCache"    # Z

    .prologue
    .line 99
    sput-boolean p0, Lorg/altbeacon/beacon/service/RangeState;->UseTrackingCache:Z

    .line 100
    return-void
.end method


# virtual methods
.method public addBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 6
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RangedBeacon;

    .line 51
    .local v0, "rangedBeacon":Lorg/altbeacon/beacon/service/RangedBeacon;
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string/jumbo v1, "RangeState"

    const-string/jumbo v2, "adding %s to existing range for: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    .line 62
    .end local v0    # "rangedBeacon":Lorg/altbeacon/beacon/service/RangedBeacon;
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string/jumbo v1, "RangeState"

    const-string/jumbo v2, "adding %s to new rangedBeacon"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_2
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    new-instance v2, Lorg/altbeacon/beacon/service/RangedBeacon;

    invoke-direct {v2, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;-><init>(Lorg/altbeacon/beacon/Beacon;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized finalizeBeacons()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 67
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v2, "newRangedBeacons":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/service/RangedBeacon;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "finalizedBeacons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/Beacon;>;"
    iget-object v7, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iget-object v4, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 72
    .local v0, "beacon":Lorg/altbeacon/beacon/Beacon;
    iget-object v4, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/service/RangedBeacon;

    .line 73
    .local v3, "rangedBeacon":Lorg/altbeacon/beacon/service/RangedBeacon;
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangedBeacon;->isTracked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangedBeacon;->commitMeasurements()V

    .line 75
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangedBeacon;->noMeasurementsAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangedBeacon;->getBeacon()Lorg/altbeacon/beacon/Beacon;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangedBeacon;->noMeasurementsAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_4

    .line 84
    sget-boolean v4, Lorg/altbeacon/beacon/service/RangeState;->UseTrackingCache:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangedBeacon;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/altbeacon/beacon/service/RangedBeacon;->setTracked(Z)V

    .line 86
    :cond_2
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    .end local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    .end local v3    # "rangedBeacon":Lorg/altbeacon/beacon/service/RangedBeacon;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    .end local v1    # "finalizedBeacons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/Beacon;>;"
    .end local v2    # "newRangedBeacons":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/service/RangedBeacon;>;"
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    .restart local v1    # "finalizedBeacons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/Beacon;>;"
    .restart local v2    # "newRangedBeacons":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/service/RangedBeacon;>;"
    .restart local v3    # "rangedBeacon":Lorg/altbeacon/beacon/service/RangedBeacon;
    :cond_3
    move v4, v6

    .line 81
    goto :goto_1

    .line 89
    :cond_4
    :try_start_3
    const-string/jumbo v4, "RangeState"

    const-string/jumbo v9, "Dumping beacon from RangeState because it has no recent measurements."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    .end local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    .end local v3    # "rangedBeacon":Lorg/altbeacon/beacon/service/RangedBeacon;
    :cond_5
    iput-object v2, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    .line 93
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    monitor-exit p0

    return-object v1
.end method

.method public getCallback()Lorg/altbeacon/beacon/service/Callback;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mCallback:Lorg/altbeacon/beacon/service/Callback;

    return-object v0
.end method
