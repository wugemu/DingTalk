.class public final Lejn;
.super Ljava/lang/Object;
.source "HotPatchUtil.java"


# static fields
.field private static a:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 48
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lejn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 141
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 142
    .local v3, "queryLogDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "k_manufacturer"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 143
    const-string/jumbo v0, "k_model"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 144
    const-string/jumbo v0, "k_sdk"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 147
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 148
    .local v4, "queryLogMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "c_count"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 151
    sget-object v0, Lejn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "HotPatch"

    const-string/jumbo v2, "pTotalCount"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 152
    sget-object v0, Lejn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "HotPatch"

    const-string/jumbo v2, "pReceiverCount"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 153
    sget-object v0, Lejn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "HotPatch"

    const-string/jumbo v2, "pSuccessCount"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 154
    sget-object v0, Lejn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "HotPatch"

    const-string/jumbo v2, "pFailedCount"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Ljava/lang/String;
    .locals 10
    .param p0, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p1, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 112
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 114
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    const-string/jumbo v5, ""

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 120
    .restart local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    if-eqz p1, :cond_4

    .line 121
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    if-eqz v1, :cond_2

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 126
    .local v4, "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    if-nez v4, :cond_3

    const-string/jumbo v5, "null"

    :goto_3
    invoke-virtual {v7, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 130
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    .end local v4    # "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "pTotalCount"

    invoke-static {v0}, Lejn;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 94
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "k_manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 95
    const-string/jumbo v2, "k_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 96
    const-string/jumbo v2, "k_sdk"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 98
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 99
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "c_count"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 101
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_0

    .line 102
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "monitorPoint:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    invoke-static {v0, v1}, Lejn;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1051
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v3, v4, :cond_0

    .line 1052
    const-string/jumbo v3, "HotPatchUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sget-object v2, Lejn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "HotPatch"

    invoke-interface {v2, v3, p0, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 106
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "pReceiverCount"

    invoke-static {v0}, Lejn;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "pSampleCount"

    invoke-static {v0}, Lejn;->a(Ljava/lang/String;)V

    .line 89
    return-void
.end method
