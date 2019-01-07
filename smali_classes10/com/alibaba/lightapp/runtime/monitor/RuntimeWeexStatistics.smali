.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;
.super Ljava/lang/Object;
.source "RuntimeWeexStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;
    }
.end annotation


# static fields
.field public static final DIMENSION_AGENTID_KEY:Ljava/lang/String; = "agentId"

.field public static final DIMENSION_APPID_KEY:Ljava/lang/String; = "appId"

.field public static final DIMENSION_ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field public static final DIMENSION_MINI_APPID_KEY:Ljava/lang/String; = "miniAppId"

.field public static final DIMENSION_URL_KEY:Ljava/lang/String; = "url"

.field public static final MEASURE_EXCEPTION_TIME_KEY:Ljava/lang/String; = "exceptionTime"

.field public static final MEASURE_MTOP_TIME_KEY:Ljava/lang/String; = "time"

.field public static final MEASURE_MTOP_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final MEASURE_PACKAGE_STATUS:Ljava/lang/String; = "status"

.field public static final MEASURE_RENDER_SUCCESS_TIME_KEY:Ljava/lang/String; = "renderSuccessTime"

.field public static final MEASURE_VIEW_CREATE_TIME_KEY:Ljava/lang/String; = "viewCreateTime"

.field public static final MODULE_NAME:Ljava/lang/String; = "WEEX"

.field private static MONITOR_POINT_DOWNLOA_PACKAGE:Ljava/lang/String; = null

.field private static MONITOR_POINT_LOAD_NAME:Ljava/lang/String; = null

.field public static final MONITOR_POINT_MTOP_LOAD_NAME:Ljava/lang/String; = "MtopLoad"

.field private static MONITOR_POINT_QUERY_PACKAGE:Ljava/lang/String; = null

.field public static final MTOP_TYPE_DD:Ljava/lang/String; = "dd"

.field public static final MTOP_TYPE_TB:Ljava/lang/String; = "tb"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    const-string/jumbo v3, "Load"

    sput-object v3, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_LOAD_NAME:Ljava/lang/String;

    .line 30
    const-string/jumbo v3, "QueryPackage"

    sput-object v3, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_QUERY_PACKAGE:Ljava/lang/String;

    .line 31
    const-string/jumbo v3, "DownLoadPackage"

    sput-object v3, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_DOWNLOA_PACKAGE:Ljava/lang/String;

    .line 51
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 53
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 54
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 55
    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 56
    const-string/jumbo v3, "agentId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 58
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 59
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v3, "viewCreateTime"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 60
    const-string/jumbo v3, "renderSuccessTime"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 61
    const-string/jumbo v3, "exceptionTime"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 63
    const-string/jumbo v3, "WEEX"

    sget-object v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_LOAD_NAME:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 65
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 66
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 67
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 69
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 70
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 72
    const-string/jumbo v3, "WEEX"

    sget-object v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_QUERY_PACKAGE:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 73
    const-string/jumbo v3, "WEEX"

    sget-object v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_DOWNLOA_PACKAGE:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_LOAD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static commitDownloadPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 103
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 105
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 106
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 107
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 109
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 110
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "status"

    if-eqz p2, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 112
    const-string/jumbo v3, "WEEX"

    sget-object v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_DOWNLOA_PACKAGE:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 113
    return-void

    .line 110
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static commitQueryPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 90
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 92
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 93
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 94
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 96
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 97
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "status"

    if-eqz p2, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 99
    const-string/jumbo v3, "WEEX"

    sget-object v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->MONITOR_POINT_QUERY_PACKAGE:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 100
    return-void

    .line 97
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static mtopLoadTime(Ljava/lang/String;J)V
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 78
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 80
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 81
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 83
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 84
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "time"

    long-to-double v4, p1

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 86
    const-string/jumbo v3, "WEEX"

    const-string/jumbo v4, "MtopLoad"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 87
    return-void
.end method
