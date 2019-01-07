.class public final Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;
.super Ljava/lang/Object;
.source "SearchEngineStatisticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:I

.field private static c:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide v6, 0x40c3880000000000L    # 10000.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a:Z

    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b:I

    .line 47
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->c:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 3072
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    .line 3073
    new-instance v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v2, "cost"

    invoke-direct {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 3074
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 3075
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 3076
    sget-object v1, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->c:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "SearchEngine"

    const-string/jumbo v3, "search_index"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 3079
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    .line 3080
    new-instance v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v2, "cost"

    invoke-direct {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 3081
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 3082
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 3083
    sget-object v1, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->c:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "SearchEngine"

    const-string/jumbo v3, "search_table"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 53
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v4, "dt_function"

    const-string/jumbo v5, "cloud_setting_search_sqlite3_log_level"

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 54
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1150
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, "level":I
    const/4 v3, -0x1

    if-lt v1, v3, :cond_0

    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    .line 65
    sput v1, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b:I

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V
    .locals 1
    .param p0, "type"    # Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    .prologue
    .line 87
    const-string/jumbo v0, "search_index"

    invoke-static {v0, p0}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V

    .line 88
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V
    .locals 3
    .param p0, "monitor"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    .prologue
    .line 95
    sget-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->Start:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    if-ne p1, v0, :cond_1

    .line 96
    sget-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->c:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "SearchEngine"

    const-string/jumbo v2, "cost"

    invoke-interface {v0, v1, p0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->End:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    if-ne p1, v0, :cond_0

    .line 98
    sget-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->c:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "SearchEngine"

    const-string/jumbo v2, "cost"

    invoke-interface {v0, v1, p0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2123
    sget-boolean v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_1

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V
    .locals 1
    .param p0, "type"    # Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    .prologue
    .line 91
    const-string/jumbo v0, "search_table"

    invoke-static {v0, p0}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V

    .line 92
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "format":Ljava/lang/String;
    const-string/jumbo v1, "SearchEngine"

    const-string/jumbo v2, "SearchEngine"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
