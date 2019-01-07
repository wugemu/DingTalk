.class public Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;
.super Ljava/lang/Object;
.source "HealthSharePref.java"


# static fields
.field public static final NO_VALUE:J = -0x1L

.field private static final PREF_KEY_BACKGROUND_OTHER_PREFIX:Ljava/lang/String; = "background_other_"

.field private static final PREF_KEY_BACKGROUND_WIFI_PREFIX:Ljava/lang/String; = "background_wifi_"

.field private static final PREF_KEY_BG_TRAFFIC:Ljava/lang/String; = "bg_traffic"

.field private static final PREF_KEY_BG_TRAFFIC_WARNED:Ljava/lang/String; = "bg_traffic_warned"

.field private static final PREF_KEY_CPU_DAY_DATE:Ljava/lang/String; = "cpu_day_date"

.field private static final PREF_KEY_CPU_DAY_TIME:Ljava/lang/String; = "cpu_day_time"

.field private static final PREF_KEY_CPU_DAY_WARNED:Ljava/lang/String; = "day_cpu_warned"

.field private static final PREF_KEY_CPU_HOUR_DATE:Ljava/lang/String; = "cpu_hour_date"

.field private static final PREF_KEY_CPU_HOUR_TIME:Ljava/lang/String; = "cpu_hour_time"

.field private static final PREF_KEY_CPU_HOUR_WARNED:Ljava/lang/String; = "hour_cpu_warned"

.field public static final PREF_KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field private static final PREF_KEY_FOREGROUND_OTHER_PREFIX:Ljava/lang/String; = "foreground_other_"

.field private static final PREF_KEY_FOREGROUND_WIFI_PREFIX:Ljava/lang/String; = "foreground_wifi_"

.field public static final PREF_KEY_TOTAL_CPU_TIME:Ljava/lang/String; = "cpu_total_time"

.field private static final PREF_KEY_TRAFFIC:Ljava/lang/String; = "traffic"

.field private static final PREF_KEY_TRAFFIC_DATE:Ljava/lang/String; = "traffic_date"

.field private static final PREF_KEY_TRAFFIC_NETWORKSTAT:Ljava/lang/String; = "traffic_network_stat"

.field private static final PREF_KEY_TRAFFIC_REG_DATE:Ljava/lang/String; = "traffic_reg_date"

.field private static final PREF_KEY_TRAFFIC_REG_TODAY_REC:Ljava/lang/String; = "traffic_reg_today_rec"

.field private static final PREF_KEY_TRAFFIC_REG_TODAY_TOL:Ljava/lang/String; = "traffic_reg_today_tol"

.field private static final PREF_KEY_TRAFFIC_REG_YESTERDAY_REC:Ljava/lang/String; = "traffic_reg_yesterday_rec"

.field private static final PREF_KEY_TRAFFIC_REG_YESTERDAY_TOL:Ljava/lang/String; = "traffic_reg_yesterday_tol"

.field private static final PREF_KEY_TRAFFIC_WARNED:Ljava/lang/String; = "traffic_warned"

.field private static final PREF_PATH:Ljava/lang/String; = "doraemon_heath"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPowerRecord(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 526
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 527
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 534
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "day_cpu_warned"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 535
    const-string/jumbo v2, "hour_cpu_warned"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    const-string/jumbo v2, "cpu_day_date"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 537
    const-string/jumbo v2, "cpu_hour_date"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 538
    const-string/jumbo v2, "cpu_hour_time"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    const-string/jumbo v2, "cpu_day_time"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 541
    return-void
.end method

.method public static clearTagTrafficRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 578
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "foreground_wifi_"

    invoke-static {v2, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    const-string/jumbo v2, "foreground_other_"

    invoke-static {v2, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    const-string/jumbo v2, "background_wifi_"

    invoke-static {v2, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 581
    const-string/jumbo v2, "background_other_"

    invoke-static {v2, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 584
    return-void
.end method

.method public static clearTagTrafficRecord(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 565
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 566
    .local v2, "localEditor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 567
    const-string/jumbo v3, "foreground_wifi_"

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    const-string/jumbo v3, "foreground_other_"

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 569
    const-string/jumbo v3, "background_wifi_"

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 570
    const-string/jumbo v3, "background_other_"

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 573
    return-void
.end method

.method public static clearTrafficRecord(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 545
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 546
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 547
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_date"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    const-string/jumbo v2, "bg_traffic"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    const-string/jumbo v2, "traffic"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    const-string/jumbo v2, "traffic_warned"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string/jumbo v2, "bg_traffic_warned"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 553
    return-void
.end method

.method public static getBGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "background_other_"

    invoke-static {v1, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getBGTraffic(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "bg_traffic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getBGTrafficWarned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "bg_traffic_warned"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getBGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "background_wifi_"

    invoke-static {v1, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCpuDayDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "cpu_day_date"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCpuDayTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "cpu_day_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCpuHourDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "cpu_hour_date"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCpuHourTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "cpu_hour_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDayCpuWarned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "day_cpu_warned"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getFGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "foreground_other_"

    invoke-static {v1, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getFGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "foreground_wifi_"

    invoke-static {v1, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    const-string/jumbo v2, "doraemon_heath"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 589
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/SharedPreferences/APPSharePref;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 591
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 592
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 594
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/SharedPreferences/APPSharePref;->setLaunched(Landroid/content/Context;)V

    .line 597
    .end local v1    # "localEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v0
.end method

.method public static getHourCpuWarned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "hour_cpu_warned"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLongValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkStatsValue(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "stats":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "traffic_network_stat"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "statString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->unmarshallString(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v2

    .line 70
    :cond_0
    return-object v2
.end method

.method public static getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTraffic(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getTrafficDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic_date"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTrafficRecToday(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic_reg_today_rec"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTrafficRecYesterday(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic_reg_yesterday_rec"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTrafficRegDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic_reg_date"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTrafficTolToday(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic_reg_today_tol"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTrafficTolYesterday(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic_reg_yesterday_tol"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTrafficWarned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "traffic_warned"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "key2"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 603
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 607
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 608
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 611
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static putBGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 518
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 519
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 520
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "background_other_"

    invoke-static {v2, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 522
    return-void
.end method

.method public static putBGTraffic(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 427
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 428
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 429
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "bg_traffic"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 431
    return-void
.end method

.method public static putBGTrafficWarned(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 435
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 437
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "bg_traffic_warned"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    return-void
.end method

.method public static putBGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 510
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 511
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 512
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "background_wifi_"

    invoke-static {v2, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    return-void
.end method

.method public static putCpuDayDate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 321
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 323
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "cpu_day_date"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    return-void
.end method

.method public static putCpuHourDate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 330
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 331
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 332
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "cpu_hour_date"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    return-void
.end method

.method public static putCpuHourTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpuTime"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 312
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 314
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "cpu_hour_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    return-void
.end method

.method public static putDayCpuWarned(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 394
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 395
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 396
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "day_cpu_warned"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 398
    return-void
.end method

.method public static putFGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 502
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 503
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 504
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "foreground_other_"

    invoke-static {v2, p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->mergeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    return-void
.end method

.method public static putFGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 492
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 493
    .local v1, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 494
    .local v2, "localEditor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 495
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "foreground_wifi_"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 496
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    return-void
.end method

.method public static putHourCpuWarned(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 402
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 403
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 404
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "hour_cpu_warned"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 406
    return-void
.end method

.method public static putLongValue(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 100
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 102
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return-void
.end method

.method public static putNetworkStatsValue(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stats"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 76
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_network_stat"

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->buildMarshallString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method public static putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 109
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method public static putTraffic(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 419
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 421
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 422
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 423
    return-void
.end method

.method public static putTrafficDate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 411
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 413
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_date"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 415
    return-void
.end method

.method public static putTrafficRecToday(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 468
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 470
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_reg_today_rec"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    return-void
.end method

.method public static putTrafficRecYesterday(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 460
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 462
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_reg_yesterday_rec"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 464
    return-void
.end method

.method public static putTrafficRegDate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 452
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 453
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 454
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_reg_date"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    return-void
.end method

.method public static putTrafficTolToday(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 484
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 486
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_reg_today_tol"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 488
    return-void
.end method

.method public static putTrafficTolYesterday(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 476
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 478
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_reg_yesterday_tol"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    return-void
.end method

.method public static putTrafficWarned(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 443
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 444
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 445
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_warned"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    return-void
.end method

.method public static removeNetworkStatsValue(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 83
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "traffic_network_stat"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    return-void
.end method

.method public static removeValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 557
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHealthSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 558
    .local v0, "healthPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 559
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 561
    return-void
.end method
