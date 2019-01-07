.class public Lorg/altbeacon/beacon/service/MonitoringStatus;
.super Ljava/lang/Object;
.source "MonitoringStatus.java"


# static fields
.field private static final MAX_REGIONS_FOR_STATUS_PRESERVATION:I = 0x32

.field private static final MAX_STATUS_PRESERVATION_FILE_AGE_TO_RESTORE_SECS:I = 0x384

.field public static final STATUS_PRESERVATION_FILE_NAME:Ljava/lang/String; = "org.altbeacon.beacon.service.monitoring_status_state"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegionsStatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RegionMonitoringState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatePreservationIsOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    .line 50
    iput-object p1, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lorg/altbeacon/beacon/service/MonitoringStatus;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/altbeacon/beacon/service/MonitoringStatus;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRegionsStateMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RegionMonitoringState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->restoreOrInitializeMonitoringStatus()V

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    return-object v0
.end method

.method private regionsMatchingTo(Lorg/altbeacon/beacon/Beacon;)Ljava/util/List;
    .locals 7
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "matched":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 158
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/Region;->matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    sget-object v3, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "This region (%s) does not match beacon: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :cond_1
    return-object v0
.end method

.method private restoreOrInitializeMonitoringStatus()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getLastMonitoringStatusUpdateTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 142
    .local v0, "millisSinceLastMonitor":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    .line 143
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    if-nez v2, :cond_0

    .line 144
    sget-object v2, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Not restoring monitoring state because persistence is disabled"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    const-wide/32 v2, 0xdbba0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 147
    sget-object v2, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Not restoring monitoring state because it was recorded too many milliseconds ago: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->restoreMonitoringStatus()V

    .line 151
    sget-object v2, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Done restoring monitoring status"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 4
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;
    .param p2, "callback"    # Lorg/altbeacon/beacon/service/Callback;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 58
    .local v0, "existingRegion":Lorg/altbeacon/beacon/Region;
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/Region;->hasSameIdentifiers(Lorg/altbeacon/beacon/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    .end local v0    # "existingRegion":Lorg/altbeacon/beacon/Region;
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    .restart local v0    # "existingRegion":Lorg/altbeacon/beacon/Region;
    :cond_1
    :try_start_1
    sget-object v1, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Replacing region with unique identifier "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    sget-object v1, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Old definition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "New definition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "clearing state"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0    # "existingRegion":Lorg/altbeacon/beacon/Region;
    :cond_2
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    invoke-direct {v2, p2}, Lorg/altbeacon/beacon/service/RegionMonitoringState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 282
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getLastMonitoringStatusUpdateTime()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 213
    iget-object v1, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    return-wide v2
.end method

.method public declared-synchronized regions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized regionsCount()I
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 1
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected restoreMonitoringStatus()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "inputStream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 221
    .local v3, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    iget-object v7, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v7, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 222
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v4, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 224
    .local v2, "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    sget-object v7, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Restored region monitoring state for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " regions."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/altbeacon/beacon/Region;

    .line 226
    .local v5, "region":Lorg/altbeacon/beacon/Region;
    sget-object v8, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Region  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " uniqueId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 242
    .end local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    .end local v5    # "region":Lorg/altbeacon/beacon/Region;
    :catch_0
    move-exception v7

    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_1
    move-object v0, v7

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    instance-of v7, v0, Ljava/io/InvalidClassException;

    if-eqz v7, :cond_6

    .line 244
    sget-object v7, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Serialized Monitoring State has wrong class. Just ignoring saved state..."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :goto_3
    if-eqz v1, :cond_0

    .line 249
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 253
    :cond_0
    :goto_4
    if-eqz v3, :cond_1

    .line 255
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_5
    return-void

    .line 232
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_2
    :try_start_5
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    .line 234
    .local v6, "regionMonitoringState":Lorg/altbeacon/beacon/service/RegionMonitoringState;
    invoke-virtual {v6}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getInside()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 236
    invoke-virtual {v6}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markInside()Z

    goto :goto_6

    .line 242
    .end local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    .end local v6    # "regionMonitoringState":Lorg/altbeacon/beacon/service/RegionMonitoringState;
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_7
    move-object v0, v7

    goto :goto_2

    .line 240
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_4
    iget-object v7, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 247
    if-eqz v1, :cond_5

    .line 249
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 255
    :cond_5
    :goto_8
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v3, v4

    .line 257
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_5

    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_5

    .line 245
    .end local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_8
    sget-object v7, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Deserialization exception, message: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_9
    if-eqz v1, :cond_7

    .line 249
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 253
    :cond_7
    :goto_a
    if-eqz v3, :cond_8

    .line 255
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 257
    :cond_8
    :goto_b
    throw v7

    .line 242
    :catch_3
    move-exception v7

    :goto_c
    move-object v0, v7

    goto :goto_2

    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v7

    goto :goto_8

    .end local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/RegionMonitoringState;>;"
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v7

    goto :goto_4

    .line 257
    :catch_6
    move-exception v7

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v8

    goto :goto_a

    :catch_8
    move-exception v8

    goto :goto_b

    .line 247
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_9

    .line 242
    :catch_9
    move-exception v7

    goto :goto_7

    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v7

    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_c

    :catch_b
    move-exception v7

    goto/16 :goto_1
.end method

.method protected saveMonitoringStatusIfOn()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 168
    iget-boolean v4, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    if-nez v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-object v4, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "saveMonitoringStatusIfOn()"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_2

    .line 171
    sget-object v4, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Too many regions being monitored.  Will not persist region state"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v4, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 175
    :cond_2
    const/4 v3, 0x0

    .line 176
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 178
    .local v1, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "org.altbeacon.beacon.service.monitoring_status_state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 179
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v2, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    if-eqz v3, :cond_3

    .line 187
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 193
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v4

    goto :goto_0

    .line 182
    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v4, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error while saving monitored region states to file. %s "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    if-eqz v3, :cond_4

    .line 187
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 191
    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    .line 193
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 195
    :catch_2
    move-exception v4

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v3, :cond_5

    .line 187
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 191
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 193
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 195
    :cond_6
    :goto_6
    throw v4

    .end local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_5

    :catch_6
    move-exception v5

    goto :goto_6

    .line 185
    .end local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 182
    .end local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method

.method public declared-synchronized startStatusPreservation()V
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    .line 276
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stateOf(Lorg/altbeacon/beacon/Region;)Lorg/altbeacon/beacon/service/RegionMonitoringState;
    .locals 1
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RegionMonitoringState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopStatusPreservation()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateMonitoringStatusTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 202
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 204
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 205
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1, p1, p2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized updateNewlyInsideInRegionsContaining(Lorg/altbeacon/beacon/Beacon;)V
    .locals 10
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsMatchingTo(Lorg/altbeacon/beacon/Beacon;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "matchingRegions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    const/4 v1, 0x0

    .line 117
    .local v1, "needsMonitoringStateSaving":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 118
    .local v2, "region":Lorg/altbeacon/beacon/Region;
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    .line 119
    .local v3, "state":Lorg/altbeacon/beacon/service/RegionMonitoringState;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markInside()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 121
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v5

    iget-object v6, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "monitoringData"

    new-instance v8, Lorg/altbeacon/beacon/service/MonitoringData;

    .line 122
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getInside()Z

    move-result v9

    invoke-direct {v8, v9, v2}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    .line 121
    invoke-virtual {v5, v6, v7, v8}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "matchingRegions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    .end local v1    # "needsMonitoringStateSaving":Z
    .end local v2    # "region":Lorg/altbeacon/beacon/Region;
    .end local v3    # "state":Lorg/altbeacon/beacon/service/RegionMonitoringState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 125
    .restart local v0    # "matchingRegions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    .restart local v1    # "needsMonitoringStateSaving":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 126
    :try_start_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_1
    monitor-exit p0

    return-void

    .line 129
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateMonitoringStatusTime(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized updateNewlyOutside()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    .local v0, "monitoredRegionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/Region;>;"
    const/4 v1, 0x0

    .line 97
    .local v1, "needsMonitoringStateSaving":Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 99
    .local v2, "region":Lorg/altbeacon/beacon/Region;
    invoke-virtual {p0, v2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->stateOf(Lorg/altbeacon/beacon/Region;)Lorg/altbeacon/beacon/service/RegionMonitoringState;

    move-result-object v3

    .line 100
    .local v3, "state":Lorg/altbeacon/beacon/service/RegionMonitoringState;
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markOutsideIfExpired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 102
    sget-object v4, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "found a monitor that expired: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v4

    iget-object v5, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "monitoringData"

    new-instance v7, Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getInside()Z

    move-result v8

    invoke-direct {v7, v8, v2}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    invoke-virtual {v4, v5, v6, v7}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "monitoredRegionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/Region;>;"
    .end local v1    # "needsMonitoringStateSaving":Z
    .end local v2    # "region":Lorg/altbeacon/beacon/Region;
    .end local v3    # "state":Lorg/altbeacon/beacon/service/RegionMonitoringState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 106
    .restart local v0    # "monitoredRegionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/Region;>;"
    .restart local v1    # "needsMonitoringStateSaving":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_1
    monitor-exit p0

    return-void

    .line 110
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateMonitoringStatusTime(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
