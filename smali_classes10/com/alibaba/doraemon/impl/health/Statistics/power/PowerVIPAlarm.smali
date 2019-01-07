.class public Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;
.super Ljava/lang/Object;
.source "PowerVIPAlarm.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/health/Statistics/VIPAlarmBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/impl/health/Statistics/VIPAlarmBase",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final STAT_INTERVAL_SEC:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "PowerVIPAlarm"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

.field private mDayNameSdf:Ljava/text/SimpleDateFormat;

.field private mHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

.field private mHourNameSdf:Ljava/text/SimpleDateFormat;

.field private mPowerDayWarned:Z

.field private mPowerHourWarned:Z

.field private mPreStatTime:J

.field private mRecordDayStr:Ljava/lang/String;

.field private mRecordHourStr:Ljava/lang/String;

.field private mTotalCpuUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

.field private mTotalDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

.field private mTotalHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mDayNameSdf:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-hh"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mHourNameSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public checkWarn(ILjava/lang/Long;)V
    .locals 22
    .param p1, "type"    # I
    .param p2, "incValue"    # Ljava/lang/Long;

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalCpuUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->doStatOnce()V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mDayNameSdf:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "newDayStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mHourNameSdf:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "newHourStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mRecordDayStr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 93
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mRecordDayStr:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mRecordHourStr:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->clearIncvaluesSum()V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->clearIncvaluesSum()V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->clearIncvaluesSum()V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->clearIncvaluesSum()V

    .line 101
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerDayWarned:Z

    .line 102
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerDayWarned:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putDayCpuWarned(Landroid/content/Context;Z)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putHourCpuWarned(Landroid/content/Context;Z)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putCpuDayDate(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putCpuHourDate(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalCpuUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->getLatestIncValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalCpuUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->getLatestIncValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->onValueInc(J)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalCpuUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->getLatestIncValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->onValueInc(J)V

    .line 125
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_7

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->onValueInc(J)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->onValueInc(J)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, "curTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPreStatTime:J

    move-wide/from16 v18, v0

    sub-long v18, v2, v18

    const-wide/32 v20, 0x1d4c0

    cmp-long v17, v18, v20

    if-ltz v17, :cond_6

    .line 131
    const-string/jumbo v17, "other"

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->startTrace(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v16

    .line 134
    .local v16, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerDayWarned:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->getIncValuesSum()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_3

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->getIncValuesSum()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 136
    .local v4, "dayInc":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->getIncValuesSum()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 137
    .local v12, "totalDayInc":J
    long-to-float v0, v4

    move/from16 v17, v0

    long-to-float v0, v12

    move/from16 v18, v0

    div-float v6, v17, v18

    .line 138
    .local v6, "dayPercentage":F
    if-eqz v16, :cond_2

    .line 139
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "dayInc="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " totalDayInc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " dayPercentage="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " dayTS="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 140
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getPowerDayThreshold()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 139
    invoke-interface/range {v16 .. v17}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 141
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getPowerDayThreshold()F

    move-result v17

    cmpl-float v17, v6, v17

    if-lez v17, :cond_3

    .line 142
    const/16 v17, 0xd

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->notifyHealthWarn(I[Ljava/lang/Object;)V

    .line 143
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerDayWarned:Z

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerDayWarned:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putDayCpuWarned(Landroid/content/Context;Z)V

    .line 148
    .end local v4    # "dayInc":J
    .end local v6    # "dayPercentage":F
    .end local v12    # "totalDayInc":J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->getIncValuesSum()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->getIncValuesSum()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 150
    .local v8, "hourInc":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->getIncValuesSum()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 151
    .local v14, "totalHourInc":J
    long-to-float v0, v8

    move/from16 v17, v0

    long-to-float v0, v14

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 152
    .local v7, "hourPercentage":F
    if-eqz v16, :cond_4

    .line 153
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "hourInc="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " totalHourInc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " hourPercentage="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " hourTS="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 154
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getPowerHourThreshold()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 153
    invoke-interface/range {v16 .. v17}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 155
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getPowerHourThreshold()F

    move-result v17

    cmpl-float v17, v7, v17

    if-lez v17, :cond_5

    .line 156
    const/16 v17, 0xe

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->notifyHealthWarn(I[Ljava/lang/Object;)V

    .line 157
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putHourCpuWarned(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v7    # "hourPercentage":F
    .end local v8    # "hourInc":J
    .end local v14    # "totalHourInc":J
    :cond_5
    if-eqz v16, :cond_6

    .line 163
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 168
    .end local v16    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_6
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPreStatTime:J

    .line 170
    .end local v2    # "curTime":J
    :cond_7
    return-void

    .line 108
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mRecordHourStr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 110
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mRecordHourStr:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->clearIncvaluesSum()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->clearIncvaluesSum()V

    .line 115
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putHourCpuWarned(Landroid/content/Context;Z)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putCpuHourDate(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .restart local v2    # "curTime":J
    .restart local v16    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_0
    move-exception v17

    if-eqz v16, :cond_9

    .line 163
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_9
    throw v17
.end method

.method public bridge synthetic checkWarn(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->checkWarn(ILjava/lang/Long;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPreStatTime:J

    .line 53
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getDayCpuWarned(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerDayWarned:Z

    .line 54
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getHourCpuWarned(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mPowerHourWarned:Z

    .line 56
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getCpuDayDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mRecordDayStr:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getCpuHourDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mRecordHourStr:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cpu_time_day"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    .line 60
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cpu_time_hour"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    .line 62
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm$1;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cpu_total_time"

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm$1;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalCpuUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    .line 81
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cpu_total_time_day"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalDayIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    .line 82
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cpu_total_time_hour"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->mTotalHourIncUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;

    .line 83
    return-void
.end method
