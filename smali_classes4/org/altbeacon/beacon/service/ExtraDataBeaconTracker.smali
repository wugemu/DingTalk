.class public Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;
.super Ljava/lang/Object;
.source "ExtraDataBeaconTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconTracker"


# instance fields
.field private mBeaconsByKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;>;"
        }
    .end annotation
.end field

.field private matchBeaconsByServiceUUID:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->matchBeaconsByServiceUUID:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "matchBeaconsByServiceUUID"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->matchBeaconsByServiceUUID:Z

    .line 22
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->matchBeaconsByServiceUUID:Z

    .line 23
    return-void
.end method

.method private getBeaconKey(Lorg/altbeacon/beacon/Beacon;)Ljava/lang/String;
    .locals 2
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->matchBeaconsByServiceUUID:Z

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private trackGattBeacon(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .locals 5
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "trackedBeacon":Lorg/altbeacon/beacon/Beacon;
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->getBeaconKey(Lorg/altbeacon/beacon/Beacon;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 47
    .local v1, "matchingTrackedBeacons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/altbeacon/beacon/Beacon;>;"
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 49
    .local v0, "matchingTrackedBeacon":Lorg/altbeacon/beacon/Beacon;
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->isExtraBeaconData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/altbeacon/beacon/Beacon;->setRssi(I)V

    .line 51
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getDataFields()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/altbeacon/beacon/Beacon;->setExtraDataFields(Ljava/util/List;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getExtraDataFields()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/altbeacon/beacon/Beacon;->setExtraDataFields(Ljava/util/List;)V

    .line 56
    move-object v2, p1

    .line 58
    goto :goto_0

    .line 60
    .end local v0    # "matchingTrackedBeacon":Lorg/altbeacon/beacon/Beacon;
    :cond_1
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->isExtraBeaconData()Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    invoke-direct {p0, p1, v1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->updateTrackingHashes(Lorg/altbeacon/beacon/Beacon;Ljava/util/HashMap;)V

    .line 64
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->isExtraBeaconData()Z

    move-result v3

    if-nez v3, :cond_3

    .line 65
    move-object v2, p1

    .line 67
    :cond_3
    return-object v2
.end method

.method private updateTrackingHashes(Lorg/altbeacon/beacon/Beacon;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "trackedBeacon"    # Lorg/altbeacon/beacon/Beacon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    .local p2, "matchingTrackedBeacons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/altbeacon/beacon/Beacon;>;"
    if-nez p2, :cond_0

    .line 72
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "matchingTrackedBeacons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/altbeacon/beacon/Beacon;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 74
    .restart local p2    # "matchingTrackedBeacons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/altbeacon/beacon/Beacon;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->getBeaconKey(Lorg/altbeacon/beacon/Beacon;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized track(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .locals 3
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->isMultiFrameBeacon()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->trackGattBeacon(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 40
    .local v0, "trackedBeacon":Lorg/altbeacon/beacon/Beacon;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 38
    .end local v0    # "trackedBeacon":Lorg/altbeacon/beacon/Beacon;
    :cond_1
    move-object v0, p1

    .restart local v0    # "trackedBeacon":Lorg/altbeacon/beacon/Beacon;
    goto :goto_0

    .line 34
    .end local v0    # "trackedBeacon":Lorg/altbeacon/beacon/Beacon;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
