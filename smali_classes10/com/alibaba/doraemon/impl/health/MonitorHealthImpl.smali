.class public Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;
.super Ljava/lang/Object;
.source "MonitorHealthImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/Health;


# static fields
.field private static final TAG:Ljava/lang/String; = "HealthImpl"

.field private static sApplication:Landroid/app/Application;


# instance fields
.field private mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

.field private triggerListener:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;)Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    return-object v0
.end method


# virtual methods
.method public addHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V
    .locals 0
    .param p1, "warner"    # Lcom/alibaba/doraemon/health/HealthWarner;

    .prologue
    .line 133
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->addHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V

    .line 134
    return-void
.end method

.method public addMemoryDumper(Lcom/alibaba/doraemon/health/MemoryDumper;)V
    .locals 0
    .param p1, "memoryDumper"    # Lcom/alibaba/doraemon/health/MemoryDumper;

    .prologue
    .line 114
    return-void
.end method

.method public addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitor"    # Lcom/alibaba/doraemon/health/NetworkMonitor;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    sget-object v0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "HealthImpl"

    const-string/jumbo v1, "please init health first !!"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please init health first !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V

    .line 93
    :cond_1
    return-void
.end method

.method public addStatisticsWarner(Lcom/alibaba/doraemon/health/StatisticsWarner;)V
    .locals 0
    .param p1, "warner"    # Lcom/alibaba/doraemon/health/StatisticsWarner;

    .prologue
    .line 143
    return-void
.end method

.method public getBarrierPolicy()Lcom/alibaba/doraemon/health/BarrierPolicy;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPowerFreqInfo()Lcom/alibaba/doraemon/health/HealthWarner$PowerFreqInfo;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p1}, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->init(Landroid/app/Application;Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public init(Landroid/app/Application;Landroid/content/Context;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 48
    :cond_0
    sput-object p1, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->sApplication:Landroid/app/Application;

    .line 49
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    sget-object v1, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->sApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    .line 50
    new-instance v0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;-><init>(Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->triggerListener:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    goto :goto_0
.end method

.method public removeHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V
    .locals 0
    .param p1, "warner"    # Lcom/alibaba/doraemon/health/HealthWarner;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->removeHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V

    .line 139
    return-void
.end method

.method public removeStatisticsWarner(Lcom/alibaba/doraemon/health/StatisticsWarner;)V
    .locals 0
    .param p1, "warner"    # Lcom/alibaba/doraemon/health/StatisticsWarner;

    .prologue
    .line 147
    return-void
.end method

.method public reportTraffic(Ljava/lang/String;ZZJJ)V
    .locals 8
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "isForeground"    # Z
    .param p3, "isWifi"    # Z
    .param p4, "txDataLen"    # J
    .param p6, "rxDataLen"    # J

    .prologue
    .line 97
    sget-object v0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo v0, "HealthImpl"

    const-string/jumbo v1, "please init health first !!"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please init health first !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->reportTraffic(Ljava/lang/String;ZZJJ)V

    .line 109
    :cond_1
    return-void
.end method

.method public setBarrierPolicy(Lcom/alibaba/doraemon/health/BarrierPolicy;)V
    .locals 0
    .param p1, "policy"    # Lcom/alibaba/doraemon/health/BarrierPolicy;

    .prologue
    .line 119
    return-void
.end method

.method public setBarrierPolicy(Lcom/alibaba/doraemon/health/BarrierPolicy;[Ljava/lang/String;J)V
    .locals 0
    .param p1, "policy"    # Lcom/alibaba/doraemon/health/BarrierPolicy;
    .param p2, "bootActivityArray"    # [Ljava/lang/String;
    .param p3, "startTime"    # J

    .prologue
    .line 124
    return-void
.end method

.method public setHealthSettings(Lcom/alibaba/doraemon/health/HealthSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/alibaba/doraemon/health/HealthSettings;

    .prologue
    .line 192
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->setHealthSettings(Lcom/alibaba/doraemon/health/HealthSettings;)V

    .line 193
    return-void
.end method

.method public declared-synchronized startHealthStatistics()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 152
    const-string/jumbo v0, "HealthImpl"

    const-string/jumbo v1, "please init health first !!"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please init health first !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->triggerListener:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->addTriggerListener(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->isStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->doStart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public startRecord(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 75
    return-void
.end method

.method public declared-synchronized stopHealthStatistics()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 170
    const-string/jumbo v0, "HealthImpl"

    const-string/jumbo v1, "please init health first !!"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please init health first !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->triggerListener:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->removeTriggerListener(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->isStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->mStatisticsProxy:Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->doStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public stopRecord(ILcom/alibaba/doraemon/health/HealthDataCollector;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "dataReceiver"    # Lcom/alibaba/doraemon/health/HealthDataCollector;

    .prologue
    .line 79
    return-void
.end method
