.class public final Lens;
.super Ljava/lang/Object;
.source "FTSSelfChecker.java"


# static fields
.field private static a:Lcom/alibaba/doraemon/statistics/Statistics;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lens;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lens;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 9

    .prologue
    .line 77
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_fts_self_check"

    .line 1083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 77
    if-nez v2, :cond_1

    .line 132
    .local v0, "lastSelfCheckTime":J
    :cond_0
    :goto_0
    return-void

    .line 82
    .end local v0    # "lastSelfCheckTime":J
    :cond_1
    const-string/jumbo v2, "last_fts_self_check_time"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 83
    .restart local v0    # "lastSelfCheckTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    .line 84
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_fts_self_check_days"

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 87
    const-string/jumbo v2, "last_fts_self_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcpk;->b(Ljava/lang/String;J)V

    .line 90
    const-string/jumbo v2, "fts_self_check"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lens$1;

    invoke-direct {v3}, Lens$1;-><init>()V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lens;->b(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)V
    .locals 9
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 32
    .line 2139
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2140
    :cond_0
    return-void

    .line 2144
    :cond_1
    const-string/jumbo v0, "last_fts_repair_time"

    invoke-static {v0}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 2145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    .line 2146
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "pref_key_fts_repair_days"

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2149
    const-string/jumbo v0, "last_fts_repair_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 2152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;

    .line 2174
    if-eqz v6, :cond_3

    iget-object v0, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTypeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTblName:Ljava/lang/String;

    .line 2175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->tblBatchSync:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2179
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    iget-object v2, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTypeName:Ljava/lang/String;

    iget-object v3, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTblName:Ljava/lang/String;

    iget-object v4, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->tblBatchSync:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->BatchSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    .line 2180
    invoke-virtual {v5}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v5

    .line 2179
    invoke-virtual/range {v0 .. v5}, Leue;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2181
    const-string/jumbo v2, "fullSyncIndex returns %d,bizType=%s,bizTblName=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTypeName:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, v6, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTblName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 193
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 195
    .local v4, "startTime":J
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Leue;->b(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "result":I
    const-string/jumbo v3, "ftsSelfCheckStop returns %d,db=%s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v6}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 198
    .local v0, "duration":J
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "stop"

    invoke-static {v3, v6, v0, v1, v8}, Lens;->b(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 202
    :cond_0
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 204
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Leue;->b(Ljava/lang/String;)I

    move-result v2

    .line 205
    const-string/jumbo v3, "ftsSelfCheckStop returns %d,db=%s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v6}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 207
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "stop"

    invoke-static {v3, v6, v0, v1, v8}, Lens;->b(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 211
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    const-string/jumbo v6, "0.db"

    invoke-virtual {v3, v6}, Leue;->b(Ljava/lang/String;)I

    move-result v2

    .line 213
    const-string/jumbo v3, "ftsSelfCheckStop returns %d,db=%s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string/jumbo v7, "0.db"

    aput-object v7, v6, v9

    invoke-static {v3, v6}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 215
    const-string/jumbo v3, "0.db"

    const-string/jumbo v6, "stop"

    invoke-static {v3, v6, v0, v1, v8}, Lens;->b(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 217
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "errorTableCount"    # I

    .prologue
    const/4 v5, 0x1

    .line 221
    sget-boolean v0, Lens;->b:Z

    if-nez v0, :cond_0

    .line 1239
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 1240
    const-string/jumbo v0, "db_name"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1241
    const-string/jumbo v0, "type"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1244
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 1245
    const-string/jumbo v0, "duration"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 1246
    const-string/jumbo v0, "err_tbl_cnt"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 1248
    sget-object v0, Lens;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "fts_monitor"

    const-string/jumbo v2, "fts_self_check"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 1250
    sput-boolean v5, Lens;->b:Z

    .line 225
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 226
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v0, "db_name"

    invoke-virtual {v6, v0, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 227
    const-string/jumbo v0, "type"

    invoke-virtual {v6, v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 229
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 230
    .local v7, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v0, "duration"

    long-to-double v2, p2

    invoke-static {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 231
    const-string/jumbo v0, "err_tbl_cnt"

    int-to-double v2, p4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 233
    sget-object v0, Lens;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "fts_monitor"

    const-string/jumbo v2, "fts_self_check"

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 234
    return-void
.end method
