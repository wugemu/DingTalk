.class public Lcom/alibaba/doraemon/impl/health/Statistics/HealthStatistics;
.super Ljava/lang/Object;
.source "HealthStatistics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HealthStatistics"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportAlarmCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "elementClass"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 104
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "Alarm"

    const-string/jumbo v2, "Power"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 112
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method

.method public static reportBlackBoxLongRunningThread(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "utime"    # J

    .prologue
    .line 155
    return-void
.end method

.method public static reportBlackBoxThreadTime(Ljava/lang/String;J)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 131
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 132
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "Thread"

    const-string/jumbo v2, "Power"

    long-to-double v4, p1

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 145
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method

.method public static reportDoraemonThreadTime(Ljava/lang/String;J)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 118
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 119
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "DRThread"

    const-string/jumbo v2, "Power"

    long-to-double v4, p1

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 125
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method

.method public static reportPowerValue(ZLjava/lang/String;D)V
    .locals 6
    .param p0, "isForeground"    # Z
    .param p1, "netType"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 161
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 162
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "Doraemon"

    const-string/jumbo v2, "Power"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 176
    return-void
.end method

.method public static reportSensorTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "elementClass"    # Ljava/lang/String;
    .param p1, "sensorName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 88
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 91
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "Sensor"

    const-string/jumbo v2, "Power"

    long-to-double v4, p2

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 98
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method

.method public static reportWakeLockTime(Ljava/lang/String;J)V
    .locals 7
    .param p0, "elementClass"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 79
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 80
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 81
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "WakeLock"

    const-string/jumbo v2, "Power"

    long-to-double v4, p1

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 83
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method
