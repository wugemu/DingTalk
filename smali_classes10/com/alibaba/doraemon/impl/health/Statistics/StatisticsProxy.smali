.class public Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;
.super Ljava/lang/Object;
.source "StatisticsProxy.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsBase;


# static fields
.field private static sIsMainProcess:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->sIsMainProcess:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mIsStart:Z

    return p1
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v5, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->sIsMainProcess:Ljava/lang/Boolean;

    if-nez v5, :cond_1

    .line 109
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v5, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->sIsMainProcess:Ljava/lang/Boolean;

    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 112
    .local v4, "pid":I
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 113
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 122
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_0

    .line 123
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->sIsMainProcess:Ljava/lang/Boolean;

    goto :goto_0

    .line 129
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pid":I
    :cond_1
    sget-object v5, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->sIsMainProcess:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5
.end method


# virtual methods
.method public addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitor"    # Lcom/alibaba/doraemon/health/NetworkMonitor;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V

    .line 101
    return-void
.end method

.method public bgSampleStatistics()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->bgSampleStatistics()V

    .line 84
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->bgSampleStatistics()V

    .line 85
    return-void
.end method

.method public doStart()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy$1;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->runOnNonUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public doStop()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy$2;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy$2;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->runOnNonUiThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public enterBGStatistics()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->enterBGStatistics()V

    .line 78
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->enterBGStatistics()V

    .line 79
    return-void
.end method

.method public enterFGStatistics()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->enterFGStatistics()V

    .line 90
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->enterFGStatistics()V

    .line 91
    return-void
.end method

.method public fgSampleStatistics()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->fgSampleStatistics()V

    .line 96
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->fgSampleStatistics()V

    .line 97
    return-void
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mIsStart:Z

    return v0
.end method

.method public reportTraffic(Ljava/lang/String;ZZJJ)V
    .locals 8
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "isForeground"    # Z
    .param p3, "isWifi"    # Z
    .param p4, "txDataLen"    # J
    .param p6, "rxDataLen"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->reportTraffic(Ljava/lang/String;ZZJJ)V

    .line 105
    return-void
.end method
