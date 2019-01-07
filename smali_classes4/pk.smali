.class public final Lpk;
.super Ljava/lang/Object;
.source "AlimeiPerfLogger.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
.implements Lyk;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpk;->a:Ljava/util/List;

    .line 51
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v1, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 53
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/Health;

    .line 54
    .local v0, "health":Lcom/alibaba/doraemon/health/Health;
    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v1, "Alimei"

    new-instance v2, Lpk$1;

    invoke-direct {v2, p0}, Lpk$1;-><init>(Lpk;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/health/Health;->addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic a(Lpk;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lpk;

    .prologue
    .line 45
    iget-object v0, p0, Lpk;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v0, p2, p3}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "totalTime"

    invoke-interface {v0, p2, p3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "count"    # D

    .prologue
    .line 190
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 191
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "arg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensionStr"    # Ljava/lang/String;
    .param p4, "measures"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 144
    if-eqz p4, :cond_0

    array-length v5, p4

    if-gtz v5, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 149
    .local v3, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-direct {v0, p3}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "dimension":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 151
    .local v1, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 152
    array-length v6, p4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v4, p4, v5

    .line 153
    .local v4, "measureStr":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v2, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v3, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 156
    .end local v2    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v4    # "measureStr":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v5, p1, p2, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    .local p3, "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-static {p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 97
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 98
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    iget-object v2, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 99
    return-void
.end method

.method public final b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v0, p2, p3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    if-ne p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "totalTime"

    invoke-interface {v0, p2, p3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "subMonitorPoint"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public final c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v0, p3}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "totalTime"

    invoke-interface {v0, p2, p3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "subMonitorPoint"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p3, "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    invoke-virtual {p0, p1, p2, p3, p4}, Lpk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 278
    return-void
.end method

.method public final commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "arg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public final commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public final endTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "totalTime"

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public final endTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 256
    iget-object v2, p0, Lpk;->a:Ljava/util/List;

    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v1, p0, Lpk;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 258
    iget-object v1, p0, Lpk;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 259
    .local v0, "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v0    # "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 135
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 136
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v2, "totalTime"

    invoke-direct {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide v4, 0x413b774000000000L    # 1800000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 138
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 139
    iget-object v2, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v2, p1, p2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 140
    return-void
.end method

.method public final registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 161
    .local p3, "dimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "measures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 170
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 171
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "dimensionStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 176
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 179
    .end local v1    # "dimensionStr":Ljava/lang/String;
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    .local v3, "measureStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 183
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 185
    .end local v3    # "measureStr":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v4, p1, p2, v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    goto :goto_0
.end method

.method public final removeTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "totalTime"

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public final reportTraffic(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 13
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "upstreamLength"    # J
    .param p5, "downstreamLength"    # J
    .param p7, "downstreamType"    # I

    .prologue
    .line 219
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 220
    .local v2, "arg":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 221
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "argStr":Ljava/lang/String;
    iget-object v10, p0, Lpk;->a:Ljava/util/List;

    monitor-enter v10

    .line 224
    :try_start_0
    iget-object v4, p0, Lpk;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 225
    iget-object v4, p0, Lpk;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .local v3, "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object v9, p2

    .line 226
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequest(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v3    # "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final startTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 195
    iget-object v0, p0, Lpk;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "totalTime"

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public final startTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 240
    iget-object v2, p0, Lpk;->a:Ljava/util/List;

    monitor-enter v2

    .line 241
    :try_start_0
    iget-object v1, p0, Lpk;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 242
    iget-object v1, p0, Lpk;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 243
    .local v0, "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequestStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    .end local v0    # "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
