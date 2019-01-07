.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;
.super Ljava/lang/Object;
.source "TrafficStatistics.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsBase;
.implements Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsBase;",
        "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter",
        "<",
        "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARG_SEPARATOR:Ljava/lang/String; = ","

.field private static final RUNNABLE_TIME_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "TrafficStatistics"

.field public static final TAG_SEPARATOR:Ljava/lang/String; = ";"

.field private static sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

.field private mIsForeground:Z

.field private mIsMainProcess:Z

.field private mIsStart:Z

.field private mMonitors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/health/NetworkMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mNetEventListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestStatisticsListener:Lcom/alibaba/doraemon/request/RequestStatisticsListener;

.field private mStatRunnable:Ljava/lang/Runnable;

.field private mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

.field private mVIPAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsStart:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mMonitors:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mNetEventListeners:Ljava/util/HashMap;

    .line 54
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsForeground:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsMainProcess:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mRequestStatisticsListener:Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .line 60
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$1;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$2;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$2;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    .line 298
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 300
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsMainProcess:Z

    .line 301
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mVIPAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;

    .line 302
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mVIPAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->init(Landroid/content/Context;)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->getsInstance(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const-class v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    .line 97
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitor"    # Lcom/alibaba/doraemon/health/NetworkMonitor;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mMonitors:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsStart:Z

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;Ljava/lang/String;)V

    .line 106
    .local v0, "wrapper":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
    invoke-interface {p2, v0}, Lcom/alibaba/doraemon/health/NetworkMonitor;->setNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mNetEventListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v0    # "wrapper":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bgSampleStatistics()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->removeRunnabletrigger(Ljava/lang/Runnable;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 280
    return-void
.end method

.method public checkVIPWarn(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mVIPAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->checkWarn(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;)V

    .line 151
    :cond_0
    return-void
.end method

.method public bridge synthetic checkVIPWarn(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->checkVIPWarn(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;)V

    return-void
.end method

.method public doStart()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    invoke-static {v6, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->getsInstance(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->registerReceiver()V

    .line 162
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mMonitors:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 163
    .local v1, "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "module":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/health/NetworkMonitor;

    .line 167
    .local v3, "monitor":Lcom/alibaba/doraemon/health/NetworkMonitor;
    new-instance v5, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v7, p0, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;Ljava/lang/String;)V

    .line 168
    .local v5, "wrapper":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/health/NetworkMonitor;->setNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V

    .line 169
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mNetEventListeners:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;>;"
    .end local v2    # "module":Ljava/lang/String;
    .end local v3    # "monitor":Lcom/alibaba/doraemon/health/NetworkMonitor;
    .end local v5    # "wrapper":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v6

    new-instance v7, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$3;

    invoke-direct {v7, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$3;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)V

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->triggerAtFixedDelay(Ljava/lang/Runnable;I)V

    .line 180
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mRequestStatisticsListener:Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    if-nez v6, :cond_1

    .line 181
    new-instance v6, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;

    invoke-direct {v6, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)V

    iput-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mRequestStatisticsListener:Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .line 240
    :cond_1
    const-string/jumbo v6, "REQUEST"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/request/Request;

    .line 241
    .local v4, "request":Lcom/alibaba/doraemon/request/Request;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mRequestStatisticsListener:Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/request/Request;->registerStatisticsListener(Lcom/alibaba/doraemon/request/RequestStatisticsListener;)V

    .line 243
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsStart:Z

    .line 244
    return-void
.end method

.method public doStop()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    invoke-static {v6, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->getsInstance(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->unregisterReceiver()V

    .line 251
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mMonitors:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 252
    .local v1, "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    .local v2, "module":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/health/NetworkMonitor;

    .line 256
    .local v3, "monitor":Lcom/alibaba/doraemon/health/NetworkMonitor;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mNetEventListeners:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;

    .line 257
    .local v5, "wrapper":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/health/NetworkMonitor;->removeNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V

    goto :goto_0

    .line 260
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;>;"
    .end local v2    # "module":Ljava/lang/String;
    .end local v3    # "monitor":Lcom/alibaba/doraemon/health/NetworkMonitor;
    .end local v5    # "wrapper":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mNetEventListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 263
    :cond_1
    const-string/jumbo v6, "REQUEST"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/request/Request;

    .line 264
    .local v4, "request":Lcom/alibaba/doraemon/request/Request;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mRequestStatisticsListener:Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/request/Request;->unregisterStatisticsListener(Lcom/alibaba/doraemon/request/RequestStatisticsListener;)V

    .line 266
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsStart:Z

    .line 267
    return-void
.end method

.method public enterBGStatistics()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsForeground:Z

    .line 272
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->removeRunnabletrigger(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 274
    return-void
.end method

.method public enterFGStatistics()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsForeground:Z

    .line 285
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->removeRunnabletrigger(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 287
    return-void
.end method

.method public fgSampleStatistics()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->removeRunnabletrigger(Ljava/lang/Runnable;)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 293
    return-void
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsStart:Z

    return v0
.end method

.method public reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "isForeground"    # Z
    .param p3, "isWifi"    # Z
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "size"    # J

    .prologue
    const/4 v5, 0x1

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    const-string/jumbo v1, "summary"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    const-string/jumbo v1, "detail"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public reportTraffic(Ljava/lang/String;ZZJJ)V
    .locals 12
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "isForeground"    # Z
    .param p3, "isWifi"    # Z
    .param p4, "txDataLen"    # J
    .param p6, "rxDataLen"    # J

    .prologue
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "moduleName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isForeground="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isWifi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " txDataLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rxDataLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsStart:Z

    if-eqz v2, :cond_0

    .line 114
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 115
    .local v10, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v10, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 116
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v4, "Traffic"

    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-long v6, p4, p6

    long-to-double v6, v6

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 118
    iget-boolean v5, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsForeground:Z

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v6

    move-wide/from16 v0, p4

    long-to-int v2, v0

    int-to-long v2, v2

    add-long v8, v2, p6

    move-object v3, p0

    move-object v4, p1

    move-object v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 120
    .end local v10    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    return-void
.end method

.method public reportUTLog(Ljava/lang/String;ZZJ)V
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "isForeground"    # Z
    .param p3, "isWifi"    # Z
    .param p4, "size"    # J

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "report traffic  module="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 128
    .local v6, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v6, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 130
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "Traffic"

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 132
    .end local v6    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    return-void
.end method
