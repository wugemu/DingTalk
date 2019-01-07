.class public final Letb;
.super Ljava/lang/Object;
.source "SearchStatisticUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Letb$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Lcom/alibaba/doraemon/statistics/Statistics;

.field private static c:Z

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Letb$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Letb;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 96
    const-string/jumbo v0, "6"

    sput-object v0, Letb;->a:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Letb;->c:Z

    .line 29128
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchStatisticUtils$1;

    const/16 v1, 0x47

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/search/utils/log/SearchStatisticUtils$1;-><init>(IFZI)V

    .line 121
    sput-object v0, Letb;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v2, Letb;->d:Ljava/util/Map;

    monitor-enter v2

    .line 138
    :try_start_0
    sget-object v1, Letb;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Letb$a;

    .line 139
    .local v0, "queryLogDebugObj":Letb$a;
    if-eqz v0, :cond_0

    iget v1, v0, Letb$a;->a:I

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    .end local v0    # "queryLogDebugObj":Letb$a;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 660
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 661
    .local v1, "uuid":Ljava/util/UUID;
    if-nez v1, :cond_0

    .line 662
    const-string/jumbo v2, ""

    .line 670
    :goto_0
    return-object v2

    .line 665
    :cond_0
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "rawUuidStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 667
    const-string/jumbo v2, ""

    goto :goto_0

    .line 670
    :cond_1
    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-static {v0, p1, p2, p3}, Letb;->a(Ljava/util/List;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/util/List;J)Ljava/lang/String;
    .locals 6
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v2, ""

    .line 714
    .local v2, "filter":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 715
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0}, Letb;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 716
    .local v0, "cidArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 717
    const-string/jumbo v5, "cid"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    :cond_0
    invoke-static {p1}, Letb;->c(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    .line 721
    .local v4, "uidArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 722
    const-string/jumbo v5, "uid"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    :cond_1
    const-string/jumbo v5, "st"

    invoke-virtual {v3, v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 727
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 732
    .end local v0    # "cidArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "uidArray":Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V
    .locals 6
    .param p0, "clickLog"    # Lcom/alibaba/android/search/model/SearchClickLogModel;

    .prologue
    .line 525
    if-nez p0, :cond_0

    .line 526
    const-string/jumbo v2, "clickLog is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 24077
    const-string/jumbo v4, "search_log"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionCode()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getEntry()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionType()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->a(ILjava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 534
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 535
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "vs"

    sget-object v3, Letb;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 536
    const-string/jumbo v2, "uuid"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 537
    const-string/jumbo v2, "tab"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getTab()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 538
    const-string/jumbo v2, "p_c"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 539
    const-string/jumbo v2, "t"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 540
    const-string/jumbo v2, "v"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 541
    const-string/jumbo v2, "d_e"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->isDe()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 543
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 544
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "p_v"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionValue()I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 546
    invoke-static {v0, v1}, Letb;->c(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/search/model/SearchClickLogModel;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 6
    .param p0, "clickLog"    # Lcom/alibaba/android/search/model/SearchClickLogModel;
    .param p1, "baseModel"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    .line 489
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 490
    :cond_0
    const-string/jumbo v2, "commitClickLog clickLogModel = null || baseModel = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionCode()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getEntry()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionType()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->a(ILjava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 498
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 499
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "vs"

    sget-object v3, Letb;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 500
    const-string/jumbo v2, "uuid"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 501
    const-string/jumbo v2, "tab"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getTab()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 502
    const-string/jumbo v2, "p_c"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 503
    const-string/jumbo v2, "t"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 504
    const-string/jumbo v2, "v"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 506
    const-string/jumbo v2, "kw"

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 507
    const-string/jumbo v2, "c_t"

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 508
    const-string/jumbo v2, "r_a"

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->should2Recommend()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 509
    const-string/jumbo v2, "ext"

    const-string/jumbo v3, "{}"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 511
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 512
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "p_v"

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getPositionValue()I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 514
    invoke-static {v0, v1}, Letb;->c(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 3
    .param p0, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p1, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 462
    sget-boolean v0, Letb;->c:Z

    if-nez v0, :cond_0

    .line 463
    invoke-static {}, Letb;->b()V

    .line 466
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v1, :cond_2

    .line 467
    :cond_1
    const-string/jumbo v0, "querylog commit succeeded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 22077
    const-string/jumbo v2, "search_log"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-static {p0, p1}, Letb;->d(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 471
    :cond_2
    sget-object v0, Letb;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "search"

    const-string/jumbo v2, "query"

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 472
    return-void
.end method

.method public static a(Leoe;)V
    .locals 1
    .param p0, "queryLogModel"    # Leoe;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a()Lcom/alibaba/android/search/service/SearchConfigCenter;

    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {p0}, Letb;->b(Leoe;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Letb;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Leoe;Ljava/lang/String;IJZ)V
    .locals 9
    .param p0, "queryLog"    # Leoe;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "duration"    # J
    .param p5, "isServer"    # Z

    .prologue
    .line 375
    const-string/jumbo v2, ""

    const-string/jumbo v6, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Letb;->a(Leoe;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Z)V

    .line 376
    return-void
.end method

.method public static a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .param p0, "queryLog"    # Leoe;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "logMapStr"    # Ljava/lang/String;
    .param p4, "isServer"    # Z

    .prologue
    .line 366
    const-string/jumbo v2, ""

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Letb;->a(Leoe;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 367
    return-void
.end method

.method public static a(Leoe;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Z)V
    .locals 8
    .param p0, "queryLog"    # Leoe;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "duration"    # J
    .param p6, "logmap"    # Ljava/lang/String;
    .param p7, "isServer"    # Z

    .prologue
    .line 389
    if-eqz p0, :cond_0

    .line 8084
    iget-object v4, p0, Leoe;->a:Ljava/lang/String;

    .line 389
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    :cond_0
    const-string/jumbo v4, "queryLog is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 9077
    const-string/jumbo v6, "search_log"

    invoke-static {v6, v4, v5}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    :goto_0
    return-void

    .line 394
    :cond_1
    sget-object v5, Letb;->d:Ljava/util/Map;

    monitor-enter v5

    .line 395
    :try_start_0
    sget-object v4, Letb;->d:Ljava/util/Map;

    .line 9084
    iget-object v6, p0, Leoe;->a:Ljava/lang/String;

    .line 395
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Letb$a;

    .line 396
    .local v3, "queryLogDebugObj":Letb$a;
    if-nez v3, :cond_3

    .line 397
    new-instance v3, Letb$a;

    .end local v3    # "queryLogDebugObj":Letb$a;
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Letb$a;-><init>(B)V

    .line 417
    .restart local v3    # "queryLogDebugObj":Letb$a;
    :cond_2
    iget v4, v3, Letb$a;->a:I

    add-int/2addr v4, p3

    iput v4, v3, Letb$a;->a:I

    .line 16140
    iget-object v4, p0, Leoe;->f:Ljava/lang/String;

    .line 418
    iput-object v4, v3, Letb$a;->b:Ljava/lang/String;

    .line 419
    sget-object v4, Letb;->d:Ljava/util/Map;

    .line 17084
    iget-object v6, p0, Leoe;->a:Ljava/lang/String;

    .line 419
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    if-eqz p7, :cond_8

    .line 423
    const/4 v4, 0x0

    .line 17120
    iput v4, p0, Leoe;->d:I

    .line 17132
    iput p3, p0, Leoe;->e:I

    .line 430
    :goto_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 431
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "vs"

    sget-object v5, Letb;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 432
    const-string/jumbo v4, "uuid"

    .line 19084
    iget-object v5, p0, Leoe;->a:Ljava/lang/String;

    .line 432
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 433
    const-string/jumbo v4, "e"

    .line 19092
    iget v5, p0, Leoe;->b:I

    .line 433
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 434
    const-string/jumbo v4, "tab"

    .line 19160
    iget v5, p0, Leoe;->h:I

    .line 434
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 435
    const-string/jumbo v5, "s"

    if-eqz p7, :cond_9

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    .line 436
    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v0, v5, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 437
    const-string/jumbo v4, "kw"

    .line 20140
    iget-object v5, p0, Leoe;->f:Ljava/lang/String;

    .line 437
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 438
    const-string/jumbo v4, "q_t"

    .line 20148
    iget-wide v6, p0, Leoe;->g:J

    .line 438
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 439
    const-string/jumbo v4, "f"

    invoke-virtual {v0, v4, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 440
    const-string/jumbo v4, "i_t"

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 441
    const-string/jumbo v4, "i_b"

    invoke-virtual {v0, v4, p6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 442
    const-string/jumbo v4, "e_c"

    .line 20164
    iget-object v5, p0, Leoe;->i:Ljava/lang/String;

    .line 442
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 443
    const-string/jumbo v4, "e_m"

    .line 20172
    iget-object v5, p0, Leoe;->j:Ljava/lang/String;

    .line 443
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 445
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 446
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "t_d"

    .line 21108
    iget-wide v6, p0, Leoe;->c:J

    .line 446
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 447
    const-string/jumbo v4, "c_c"

    .line 21116
    iget v5, p0, Leoe;->d:I

    .line 447
    int-to-double v6, v5

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 448
    const-string/jumbo v4, "s_c"

    .line 21128
    iget v5, p0, Leoe;->e:I

    .line 448
    int-to-double v6, v5

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 449
    const-string/jumbo v4, "i_c"

    int-to-double v6, p3

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 450
    const-string/jumbo v4, "i_d"

    long-to-double v6, p4

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 452
    new-instance v4, Letb$2;

    invoke-direct {v4, v0, v1}, Letb$2;-><init>(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    invoke-static {v4}, Letb;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 398
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_3
    :try_start_1
    iget-object v4, v3, Letb$a;->b:Ljava/lang/String;

    .line 9140
    iget-object v6, p0, Leoe;->f:Ljava/lang/String;

    .line 398
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 399
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 400
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "existKeyword"

    iget-object v6, v3, Letb$a;->b:Ljava/lang/String;

    invoke-static {v6}, Letb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v6, "type"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, ""

    :goto_3
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v6, "filter"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, ""

    :goto_4
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v4, "count"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v4, "isServer"

    invoke-static {p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v4, "entry"

    .line 10092
    iget v6, p0, Leoe;->b:I

    .line 405
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v4, "tag"

    .line 10160
    iget v6, p0, Leoe;->h:I

    .line 406
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v6, "errorCode"

    .line 10164
    iget-object v4, p0, Leoe;->i:Ljava/lang/String;

    .line 407
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, ""

    :goto_5
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string/jumbo v6, "errorMsg"

    .line 11172
    iget-object v4, p0, Leoe;->j:Ljava/lang/String;

    .line 408
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, ""

    :goto_6
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v4, "mismatched keyword and uuid"

    .line 13140
    iget-object v6, p0, Leoe;->f:Ljava/lang/String;

    .line 14084
    iget-object v7, p0, Leoe;->a:Ljava/lang/String;

    .line 409
    invoke-static {v4, v6, v7, v2}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mismatched keyword and uuid "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15084
    iget-object v6, p0, Leoe;->a:Ljava/lang/String;

    .line 410
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 16050
    const-string/jumbo v7, "search"

    invoke-static {v7, v4, v6}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v4, v6, :cond_2

    .line 413
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mismatched keyword and uuid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16084
    iget-object v7, p0, Leoe;->a:Ljava/lang/String;

    .line 413
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 420
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "queryLogDebugObj":Letb$a;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "queryLogDebugObj":Letb$a;
    :cond_4
    move-object v4, p1

    .line 401
    goto/16 :goto_3

    :cond_5
    move-object v4, p2

    .line 402
    goto/16 :goto_4

    .line 11164
    :cond_6
    :try_start_2
    iget-object v4, p0, Leoe;->i:Ljava/lang/String;

    goto :goto_5

    .line 12172
    :cond_7
    iget-object v4, p0, Leoe;->j:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 18120
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    iput p3, p0, Leoe;->d:I

    .line 427
    const/4 v4, 0x0

    .line 18132
    iput v4, p0, Leoe;->e:I

    goto/16 :goto_1

    .line 436
    .restart local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :cond_9
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    goto/16 :goto_2
.end method

.method public static a(Leoe;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 9
    .param p0, "queryLog"    # Leoe;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "logMapStr"    # Ljava/lang/String;
    .param p5, "isServer"    # Z

    .prologue
    .line 370
    invoke-static {p4}, Letb;->c(Ljava/lang/String;)Leof;

    move-result-object v8

    .line 8039
    .local v8, "logMap":Leof;
    iget-wide v4, v8, Leof;->a:J

    .line 8047
    iget-object v6, v8, Leof;->c:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v7, p5

    .line 371
    invoke-static/range {v0 .. v7}, Letb;->a(Leoe;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Z)V

    .line 372
    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 775
    const-string/jumbo v0, "SearchStatisticThread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 184
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 187
    .restart local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "alarm"

    invoke-interface {p3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v1, "keyword"

    invoke-static {p1}, Letb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v1, "uuid"

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 191
    .local v0, "wkAlarm":Lhzu;
    const-string/jumbo v1, "search"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 192
    const/16 v1, 0xc1d

    iput v1, v0, Lhzu;->c:I

    .line 193
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lemt$g;->dt_search_warn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhzu;->d:Ljava/lang/String;

    .line 194
    iput-object p3, v0, Lhzu;->b:Ljava/util/Map;

    .line 195
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhzr;->a(Lhzu;)V

    .line 197
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, p0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "alarmCode"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 205
    const-string/jumbo v2, "alarm"

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 207
    .local v0, "wkAlarm":Lhzu;
    const-string/jumbo v2, "search"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 208
    const/16 v2, 0xc1f

    iput v2, v0, Lhzu;->c:I

    .line 209
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lemt$g;->dt_search_warn:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lhzu;->d:Ljava/lang/String;

    .line 210
    iput-object p2, v0, Lhzu;->b:Ljava/util/Map;

    .line 211
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V

    .line 213
    new-array v2, v3, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, p1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-static {}, Lest;->a()Lest;

    move-result-object v2

    .line 5039
    iget-object v4, v2, Lest;->a:Leoe;

    if-nez v4, :cond_0

    .line 5040
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4, v3, v3}, Lest;->a(Ljava/lang/String;II)Leoe;

    .line 5042
    :cond_0
    iget-object v1, v2, Lest;->a:Leoe;

    .line 216
    .local v1, "queryLog":Leoe;
    if-eqz v1, :cond_1

    .line 5168
    iput-object p0, v1, Leoe;->i:Ljava/lang/String;

    .line 218
    invoke-static {p2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5176
    iput-object v2, v1, Leoe;->j:Ljava/lang/String;

    .line 219
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move v6, v3

    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 222
    :cond_1
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "negativeSampleModels":Ljava/util/List;, "Ljava/util/List<Leod;>;"
    new-instance v0, Letb$1;

    invoke-direct {v0, p0}, Letb$1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Letb;->a(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 170
    invoke-static {}, Lest;->a()Lest;

    move-result-object v0

    .line 1035
    iget-object v1, v0, Lest;->a:Leoe;

    .line 171
    .local v1, "queryLog":Leoe;
    if-eqz v1, :cond_0

    .line 172
    const-string/jumbo v0, "tab"

    .line 1160
    iget v2, v1, Leoe;->h:I

    .line 172
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v0, "code"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1168
    iput-object v0, v1, Leoe;->i:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "message"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1176
    iput-object v0, v1, Leoe;->j:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v4, 0x0

    move v6, v3

    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 179
    :cond_0
    const-string/jumbo v0, "message"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2140
    iget-object v2, v1, Leoe;->f:Ljava/lang/String;

    move-object v3, v2

    .line 179
    :goto_0
    if-eqz v1, :cond_2

    .line 3084
    iget-object v2, v1, Leoe;->a:Ljava/lang/String;

    .line 179
    :goto_1
    invoke-static {v0, v3, v2, p0}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    return-void

    .line 179
    :cond_1
    const-string/jumbo v2, ""

    move-object v3, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method private static b(Leoe;)Ljava/lang/String;
    .locals 4
    .param p0, "queryLogModel"    # Leoe;

    .prologue
    .line 232
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "alarm"

    const-string/jumbo v3, "search no results"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string/jumbo v2, "keyword"

    .line 6140
    iget-object v3, p0, Leoe;->f:Ljava/lang/String;

    .line 235
    invoke-static {v3}, Letb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string/jumbo v2, "uuid"

    .line 7084
    iget-object v3, p0, Leoe;->a:Ljava/lang/String;

    .line 236
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string/jumbo v2, "tab"

    .line 7160
    iget v3, p0, Leoe;->h:I

    .line 237
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 244
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getVvipSearchQueryLogMsgUnChecked error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 738
    :cond_0
    const/4 v1, 0x0

    .line 749
    :cond_1
    return-object v1

    .line 741
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 742
    .local v1, "cidArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 746
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private static b()V
    .locals 16

    .prologue
    .line 266
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 267
    .local v3, "queryLogDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "vs"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 268
    const-string/jumbo v0, "uuid"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 269
    const-string/jumbo v0, "e"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 270
    const-string/jumbo v0, "tab"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 271
    const-string/jumbo v0, "s"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 272
    const-string/jumbo v0, "kw"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 273
    const-string/jumbo v0, "q_t"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 274
    const-string/jumbo v0, "f"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 275
    const-string/jumbo v0, "i_t"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 276
    const-string/jumbo v0, "i_b"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 277
    const-string/jumbo v0, "e_c"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 278
    const-string/jumbo v0, "e_m"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 281
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 282
    .local v4, "queryLogMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "t_d"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 283
    const-string/jumbo v0, "c_c"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 284
    const-string/jumbo v0, "s_c"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 285
    const-string/jumbo v0, "i_c"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 286
    const-string/jumbo v0, "i_d"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 289
    sget-object v0, Letb;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "search"

    const-string/jumbo v2, "query"

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 292
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v8

    .line 294
    .local v8, "clickLogDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "vs"

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 295
    const-string/jumbo v0, "uuid"

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 296
    const-string/jumbo v0, "tab"

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 297
    const-string/jumbo v0, "p_c"

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 298
    const-string/jumbo v0, "t"

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 299
    const-string/jumbo v0, "v"

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 302
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    .line 303
    .local v9, "clickLogMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "p_v"

    invoke-virtual {v9, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 306
    sget-object v5, Letb;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v6, "search"

    const-string/jumbo v7, "click"

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 309
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v13

    .line 310
    .local v13, "negativeDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "uuid"

    invoke-virtual {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 311
    const-string/jumbo v0, "i_t"

    invoke-virtual {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 312
    const-string/jumbo v0, "i_d"

    invoke-virtual {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 313
    const-string/jumbo v0, "tab"

    invoke-virtual {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 314
    const-string/jumbo v0, "t_t"

    invoke-virtual {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 315
    const-string/jumbo v0, "d_t"

    invoke-virtual {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 316
    const-string/jumbo v0, "h_f"

    invoke-virtual {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 319
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v14

    .line 320
    .local v14, "negativeMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "p_t"

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 323
    sget-object v10, Letb;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v11, "search"

    const-string/jumbo v12, "negative_sample"

    const/4 v15, 0x1

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Letb;->c:Z

    .line 326
    return-void
.end method

.method public static b(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 3
    .param p0, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p1, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 476
    sget-boolean v0, Letb;->c:Z

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Letb;->b()V

    .line 480
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v1, :cond_2

    .line 481
    :cond_1
    const-string/jumbo v0, "negative sample commit succeeded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 23077
    const-string/jumbo v2, "search_log"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    invoke-static {p0, p1}, Letb;->d(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 485
    :cond_2
    sget-object v0, Letb;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "search"

    const-string/jumbo v2, "negative_sample"

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 486
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 571
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;-><init>()V

    .line 572
    .local v0, "logObject":Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->code:I

    .line 573
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->uid:Ljava/lang/String;

    .line 574
    invoke-static {p0}, Letb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->message:Ljava/lang/String;

    .line 576
    invoke-static {}, Lcmd;->a()Lcmc;

    move-result-object v1

    new-instance v2, Letb$3;

    invoke-direct {v2}, Letb$3;-><init>()V

    invoke-interface {v1, v0, v2}, Lcmc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;Lcma;)V

    goto :goto_0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)Leof;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 675
    const-class v6, Letb;

    monitor-enter v6

    :try_start_0
    new-instance v3, Leof;

    invoke-direct {v3}, Leof;-><init>()V

    .line 677
    .local v3, "model":Leof;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 700
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v3

    .line 27051
    :cond_1
    :try_start_1
    iput-object p0, v3, Leof;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    const/4 v1, 0x0

    .line 685
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 689
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v1, :cond_0

    .line 694
    :try_start_3
    const-string/jumbo v5, "costTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 28043
    iput-wide v8, v3, Leof;->a:J

    .line 695
    const-string/jumbo v5, "bucket"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 29035
    iput v5, v3, Leof;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v4

    .line 697
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 675
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "model":Leof;
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 686
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "model":Leof;
    :catch_1
    move-exception v0

    .line 687
    .local v0, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private static c(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    .line 754
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 755
    :cond_0
    const/4 v2, 0x0

    .line 767
    :cond_1
    return-object v2

    .line 758
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 759
    .local v2, "uidArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 29044
    .local v3, "uidLong":Ljava/lang/Long;
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 761
    .local v0, "uid":J
    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    .line 764
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 7
    .param p0, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p1, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    const/4 v6, 0x0

    .line 551
    sget-boolean v0, Letb;->c:Z

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Letb;->b()V

    .line 24611
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_4

    .line 24612
    :cond_1
    const-string/jumbo v0, "log: dimensionValueSet or measureValueSet is null"

    new-array v1, v6, [Ljava/lang/Object;

    .line 25077
    const-string/jumbo v2, "search_log"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    :goto_0
    const-string/jumbo v0, "clicklog commit succeeded"

    new-array v1, v6, [Ljava/lang/Object;

    .line 26077
    const-string/jumbo v2, "search_log"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v1, :cond_3

    .line 559
    :cond_2
    invoke-static {p0, p1}, Letb;->d(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 562
    :cond_3
    sget-object v0, Letb;->b:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "search"

    const-string/jumbo v2, "click"

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 563
    return-void

    .line 24616
    :cond_4
    new-instance v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;-><init>()V

    .line 24617
    const/16 v0, 0xd

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->code:I

    .line 24618
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->uid:Ljava/lang/String;

    .line 24620
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 24622
    :try_start_0
    const-string/jumbo v0, "p_c"

    const-string/jumbo v3, "p_c"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24623
    const-string/jumbo v0, "t"

    const-string/jumbo v3, "t"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24624
    const-string/jumbo v0, "tab"

    const-string/jumbo v3, "tab"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24625
    const-string/jumbo v0, "vs"

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24626
    const-string/jumbo v0, "p_v"

    const-string/jumbo v3, "p_v"

    invoke-virtual {p1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 24627
    const-string/jumbo v0, "uuid"

    const-string/jumbo v3, "uuid"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24628
    const-string/jumbo v0, "v"

    const-string/jumbo v3, "v"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24630
    const-string/jumbo v0, "kw"

    const-string/jumbo v3, "kw"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24631
    const-string/jumbo v0, "c_t"

    const-string/jumbo v3, "c_t"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24632
    const-string/jumbo v0, "r_a"

    const-string/jumbo v3, "r_a"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24633
    const-string/jumbo v0, "ext"

    const-string/jumbo v3, "ext"

    invoke-virtual {p0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24638
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->message:Ljava/lang/String;

    .line 24640
    invoke-static {}, Lcmd;->a()Lcmc;

    move-result-object v0

    new-instance v2, Letb$4;

    invoke-direct {v2}, Letb$4;-><init>()V

    invoke-interface {v0, v1, v2}, Lcmc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;Lcma;)V

    goto/16 :goto_0

    .line 24635
    :catch_0
    move-exception v0

    .line 24636
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    .end local p0    # "keyword":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "keyword":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static d(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 14
    .param p0, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p1, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    const/4 v1, 0x0

    .line 780
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v9

    sget v10, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v9, v10, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v9

    sget v10, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v9, v10, :cond_1

    :cond_0
    const-string/jumbo v9, "pref_key_search_stat_debug"

    const/4 v10, 0x0

    .line 781
    invoke-static {v9, v10}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    .line 782
    .local v1, "debugStat":Z
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 783
    .local v0, "debugJsonObj":Lorg/json/JSONObject;
    const-string/jumbo v7, ""

    .line 785
    .local v7, "uuid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 786
    .local v6, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_5

    .line 787
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 788
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 791
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v11, ":"

    invoke-virtual {v9, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v11, ";"

    invoke-virtual {v9, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 792
    if-eqz v1, :cond_2

    .line 793
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 832
    .end local v0    # "debugJsonObj":Lorg/json/JSONObject;
    .end local v1    # "debugStat":Z
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v7    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 833
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 836
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_1
    return-void

    .line 796
    .restart local v0    # "debugJsonObj":Lorg/json/JSONObject;
    .restart local v1    # "debugStat":Z
    .restart local v6    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v7    # "uuid":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 797
    :try_start_1
    const-string/jumbo v9, "uuid"

    invoke-virtual {p0, v9}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 800
    :cond_5
    if-eqz p1, :cond_9

    .line 801
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 802
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    if-eqz v3, :cond_6

    .line 805
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 806
    .local v8, "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    if-nez v8, :cond_7

    const-string/jumbo v9, "null"

    :goto_3
    invoke-virtual {v10, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 807
    if-eqz v1, :cond_6

    .line 808
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v8, :cond_8

    const-string/jumbo v10, "null"

    :goto_4
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 806
    :cond_7
    invoke-virtual {v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 808
    :cond_8
    invoke-virtual {v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 813
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    .end local v8    # "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    :cond_9
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "%"

    const-string/jumbo v11, "%%"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    .line 29077
    const-string/jumbo v11, "search_log"

    invoke-static {v11, v9, v10}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    if-eqz v1, :cond_3

    .line 816
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v9

    new-instance v10, Letb$5;

    invoke-direct {v10, v1}, Letb$5;-><init>(Z)V

    invoke-interface {v9, v10}, Lenb;->a(Lenb$a;)V

    .line 828
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 829
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "statTrace"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v5, v7, v10}, Lenb;->a(Ljava/util/Map;Ljava/lang/String;Lcma;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    const-string/jumbo v2, ""

    .line 606
    :goto_0
    return-object v2

    .line 598
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 600
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "os"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "jsonException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    const-string/jumbo v2, ""

    goto :goto_0
.end method
