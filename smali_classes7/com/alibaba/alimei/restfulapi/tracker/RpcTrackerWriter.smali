.class public final Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;
.super Ljava/lang/Object;
.source "RpcTrackerWriter.java"


# static fields
.field private static sMonitorPointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->sMonitorPointMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
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
    .line 138
    .local p2, "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 139
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 142
    :cond_0
    return-void
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 132
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 133
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 125
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public static endTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 65
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->endTrackDuration(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static endTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 118
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p0, p1}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->endTraffic(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v1

    .line 25
    .local v1, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 27
    .local v0, "shouldCache":Z
    sget-object v2, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->sMonitorPointMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->sMonitorPointMap:Ljava/util/Map;

    .line 32
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    sget-object v2, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->sMonitorPointMap:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface {v1, p0, p1}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .end local v0    # "shouldCache":Z
    :cond_0
    return-void

    .line 30
    .restart local v0    # "shouldCache":Z
    :cond_1
    sget-object v2, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->sMonitorPointMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
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

    .prologue
    .line 40
    .local p2, "dimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "measures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 41
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static removeTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 77
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p0, p1}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->removeTrackDuration(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static reportTraffic(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 10
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "upstreamLength"    # J
    .param p4, "downstreamLength"    # J
    .param p6, "downstreamType"    # I

    .prologue
    .line 92
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v1

    .line 93
    .local v1, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    .line 94
    invoke-interface/range {v1 .. v8}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->reportTraffic(Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 96
    :cond_0
    return-void
.end method

.method public static startTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 53
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p0, p1}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->startTrackDuration(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static startTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    move-result-object v0

    .line 106
    .local v0, "tracker":Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p0, p1}, Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;->startTraffic(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
