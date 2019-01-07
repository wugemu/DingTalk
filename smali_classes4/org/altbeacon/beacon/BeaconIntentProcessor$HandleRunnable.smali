.class Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;
.super Ljava/lang/Object;
.source "BeaconIntentProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconIntentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandleRunnable"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

.field private rangingData:Lorg/altbeacon/beacon/service/RangingData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/altbeacon/beacon/service/MonitoringData;Lorg/altbeacon/beacon/service/RangingData;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "monitoringData"    # Lorg/altbeacon/beacon/service/MonitoringData;
    .param p3, "rangingData"    # Lorg/altbeacon/beacon/service/RangingData;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    .line 89
    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->rangingData:Lorg/altbeacon/beacon/service/RangingData;

    .line 92
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->context:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    .line 94
    iput-object p3, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->rangingData:Lorg/altbeacon/beacon/service/RangingData;

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 99
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const-string/jumbo v5, "BeaconIntentProcessor"

    const-string/jumbo v8, "got an intent to process"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_0
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->rangingData:Lorg/altbeacon/beacon/service/RangingData;

    if-eqz v5, :cond_5

    .line 103
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    const-string/jumbo v5, "BeaconIntentProcessor"

    const-string/jumbo v8, "got ranging data"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_1
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->rangingData:Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangingData;->getBeacons()Ljava/util/Collection;

    move-result-object v5

    if-nez v5, :cond_2

    .line 107
    const-string/jumbo v5, "BeaconIntentProcessor"

    const-string/jumbo v8, "Ranging data has a null beacons collection"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_2
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/BeaconManager;->getRangingNotifiers()Ljava/util/Set;

    move-result-object v4

    .line 110
    .local v4, "notifiers":Ljava/util/Set;, "Ljava/util/Set<Lorg/altbeacon/beacon/RangeNotifier;>;"
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->rangingData:Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangingData;->getBeacons()Ljava/util/Collection;

    move-result-object v0

    .line 111
    .local v0, "beacons":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/altbeacon/beacon/Beacon;>;"
    if-eqz v4, :cond_3

    .line 112
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/RangeNotifier;

    .line 113
    .local v2, "notifier":Lorg/altbeacon/beacon/RangeNotifier;
    iget-object v8, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->rangingData:Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v8}, Lorg/altbeacon/beacon/service/RangingData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v8

    invoke-interface {v2, v0, v8}, Lorg/altbeacon/beacon/RangeNotifier;->didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    goto :goto_0

    .line 117
    .end local v2    # "notifier":Lorg/altbeacon/beacon/RangeNotifier;
    :cond_3
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    const-string/jumbo v5, "BeaconIntentProcessor"

    const-string/jumbo v8, "but ranging notifier is null, so we\'re dropping it."

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_4
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/BeaconManager;->getDataRequestNotifier()Lorg/altbeacon/beacon/RangeNotifier;

    move-result-object v1

    .line 122
    .local v1, "dataNotifier":Lorg/altbeacon/beacon/RangeNotifier;
    if-eqz v1, :cond_5

    .line 123
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->rangingData:Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangingData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Lorg/altbeacon/beacon/RangeNotifier;->didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    .line 127
    .end local v0    # "beacons":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/altbeacon/beacon/Beacon;>;"
    .end local v1    # "dataNotifier":Lorg/altbeacon/beacon/RangeNotifier;
    .end local v4    # "notifiers":Ljava/util/Set;, "Ljava/util/Set<Lorg/altbeacon/beacon/RangeNotifier;>;"
    :cond_5
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    if-eqz v5, :cond_a

    .line 128
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    const-string/jumbo v5, "BeaconIntentProcessor"

    const-string/jumbo v8, "got monitoring data"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_6
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/BeaconManager;->getMonitoringNotifiers()Ljava/util/Set;

    move-result-object v3

    .line 132
    .local v3, "notifiers":Ljava/util/Set;, "Ljava/util/Set<Lorg/altbeacon/beacon/MonitorNotifier;>;"
    if-eqz v3, :cond_a

    .line 133
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/MonitorNotifier;

    .line 134
    .local v2, "notifier":Lorg/altbeacon/beacon/MonitorNotifier;
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 135
    const-string/jumbo v5, "BeaconIntentProcessor"

    const-string/jumbo v9, "Calling monitoring notifier: %s"

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v2, v10, v7

    invoke-static {v5, v9, v10}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_7
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/MonitoringData;->isInside()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_2
    iget-object v9, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v9}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Lorg/altbeacon/beacon/MonitorNotifier;->didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V

    .line 138
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/MonitoringData;->isInside()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 139
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/altbeacon/beacon/MonitorNotifier;->didEnterRegion(Lorg/altbeacon/beacon/Region;)V

    goto :goto_1

    :cond_8
    move v5, v7

    .line 137
    goto :goto_2

    .line 141
    :cond_9
    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;->monitoringData:Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/altbeacon/beacon/MonitorNotifier;->didExitRegion(Lorg/altbeacon/beacon/Region;)V

    goto :goto_1

    .line 146
    .end local v2    # "notifier":Lorg/altbeacon/beacon/MonitorNotifier;
    .end local v3    # "notifiers":Ljava/util/Set;, "Ljava/util/Set<Lorg/altbeacon/beacon/MonitorNotifier;>;"
    :cond_a
    return-void
.end method
